#include <ai.h>
#include <gmath/curve.h>

AI_SHADER_NODE_EXPORT_METHODS(agAnimCurveMtd);

enum AnimCurveParams
{
   p_input = 0,
   p_input_is_frame_offset,
   p_positions,
   p_values,
   p_interpolations,
   p_in_tangents,
   p_in_weights,
   p_out_tangents,
   p_out_weights,
   p_default_interpolation,
   p_pre_infinity,
   p_post_infinity
};

enum Interpolation
{
   Interp_Step = 0,
   Interp_Linear,
   Interp_Spline
};

static const char* InterpolationNames[] =
{
   "step",
   "linear",
   "spline",
   NULL
};

enum Infinity
{
   Inf_Constant = 0,
   Inf_Linear,
   Inf_Loop,
   Inf_LoopOffset,
   Inf_Mirror
};

static const char* InfinityNames[] =
{
   "constant",
   "linear",
   "loop",
   "loop_offset",
   "mirror",
   NULL
};

namespace
{
   class ComparePositions
   {
   public:
      
      inline ComparePositions(AtArray *a)
         : _a(a)
      {
      }
      
      inline bool operator()(unsigned int i0, unsigned int i1) const
      {
         return (AiArrayGetFlt(_a, i0) < AiArrayGetFlt(_a, i1));
      }
      
   private:
      
      AtArray *_a;
   };
   
   void SortPositions(AtArray *a, unsigned int *sorted)
   {
      if (a && sorted && a->nelements > 0)
      {
         unsigned int n = a->nelements;
         
         for (unsigned int i=0; i<n; ++i)
         {
            sorted[i] = i;
         }
         
         ComparePositions cmp(a);
         
         std::sort(sorted, sorted + n, cmp);
      }
   }
}

namespace SSTR
{
   extern AtString input;
   extern AtString input_is_frame_offset;
   extern AtString frame;
   extern AtString linkable;
   extern AtString motion_start_frame;
   extern AtString motion_end_frame;
   extern AtString relative_motion_frame;
   extern AtString motion_steps;
   extern AtString positions;
   extern AtString values;
   extern AtString interpolations;
   extern AtString in_tangents;
   extern AtString in_weights;
   extern AtString out_tangents;
   extern AtString out_weights;
   extern AtString default_interpolation;
   extern AtString pre_infinity;
   extern AtString post_infinity;
}

node_parameters
{
   AiParameterFlt(SSTR::input, 0.0f);
   AiParameterBool(SSTR::input_is_frame_offset, true); // use input param as on offset to options 'frame' attribute
   AiParameterArray(SSTR::positions, AiArrayAllocate(0, 0, AI_TYPE_FLOAT));
   AiParameterArray(SSTR::values, AiArrayAllocate(0, 0, AI_TYPE_FLOAT));
   AiParameterArray(SSTR::interpolations, AiArrayAllocate(0, 0, AI_TYPE_INT)); // can be empty
   AiParameterArray(SSTR::in_tangents, AiArrayAllocate(0, 0, AI_TYPE_FLOAT)); // can be empty, interpret as 'slope' -> dy/dx
   AiParameterArray(SSTR::in_weights, AiArrayAllocate(0, 0, AI_TYPE_FLOAT));  // can be empty
   AiParameterArray(SSTR::out_tangents, AiArrayAllocate(0, 0, AI_TYPE_FLOAT)); // can be empty, interpret as 'slope' -> dy/dx
   AiParameterArray(SSTR::out_weights, AiArrayAllocate(0, 0, AI_TYPE_FLOAT));  // can be empty
   AiParameterEnum(SSTR::default_interpolation, 0, InterpolationNames);
   AiParameterEnum(SSTR::pre_infinity, 0, InfinityNames);
   AiParameterEnum(SSTR::post_infinity, 0, InfinityNames);

   AiMetaDataSetBool(mds, SSTR::input_is_frame_offset, SSTR::linkable, false);
   AiMetaDataSetBool(mds, SSTR::positions, SSTR::linkable, false);
   AiMetaDataSetBool(mds, SSTR::values, SSTR::linkable, false);
   AiMetaDataSetBool(mds, SSTR::interpolations, SSTR::linkable, false);
   AiMetaDataSetBool(mds, SSTR::in_tangents, SSTR::linkable, false);
   AiMetaDataSetBool(mds, SSTR::in_weights, SSTR::linkable, false);
   AiMetaDataSetBool(mds, SSTR::out_tangents, SSTR::linkable, false);
   AiMetaDataSetBool(mds, SSTR::out_weights, SSTR::linkable, false);
   AiMetaDataSetBool(mds, SSTR::default_interpolation, SSTR::linkable, false);
   AiMetaDataSetBool(mds, SSTR::pre_infinity, SSTR::linkable, false);
   AiMetaDataSetBool(mds, SSTR::post_infinity, SSTR::linkable, false);

}

struct NodeData
{
   gmath::TCurve<float> *curve;
   AtArray *samples;
   bool inputIsOffset;
   float motionStart;
   float motionEnd;
   float frame;
};

node_initialize
{
   NodeData *data = new NodeData();
   data->curve = 0;
   data->samples = 0;
   data->motionStart = 0.0f;
   data->motionEnd = 0.0f;
   data->frame = 0.0f;
   AiNodeSetLocalData(node, data);
}

node_update
{
   NodeData *data = (NodeData*) AiNodeGetLocalData(node);
   
   if (data->samples)
   {
      AiArrayDestroy(data->samples);
      data->samples = 0;
   }
   
   data->inputIsOffset = AiNodeGetBool(node, SSTR::input_is_frame_offset);
   data->motionStart = 0.0f;
   data->motionEnd = 0.0f;
   data->frame = 0.0f;
   
   bool weighted = false;
   bool bake = false;
   float frame = 0.0f;
   float mstart = 0.0f;
   float mend = 0.0f;
   int msteps = 0;

   if (data->inputIsOffset)
   {
      AtNode *opts = AiUniverseGetOptions();
      
      if (AiNodeLookUpUserParameter(opts, SSTR::frame) != 0)
      {
         frame = AiNodeGetFlt(opts, SSTR::frame);
         mstart = frame;
         mend = frame;
         msteps = 1;
         
         if (AiNodeLookUpUserParameter(opts, SSTR::motion_start_frame) != 0 &&
             AiNodeLookUpUserParameter(opts, SSTR::motion_end_frame) != 0)
         {
            mstart = AiNodeGetFlt(opts, SSTR::motion_start_frame);
            mend = AiNodeGetFlt(opts, SSTR::motion_end_frame);
            
            if (AiNodeLookUpUserParameter(opts, SSTR::relative_motion_frame) != 0 &&
                AiNodeGetBool(opts, SSTR::relative_motion_frame))
            {
               mstart += frame;
               mend += frame;
            }
            
            if (mstart > mend || frame < mstart || frame > mend)
            {
               AiMsgWarning("[agAnimCurve] Invalid values \"motion_start_frame\" and \"motion_end_frame\" parameters on options node. Default both to %f", frame);
               mstart = frame;
               mend = frame;
            }
            
            if (mend > mstart)
            {
               msteps = 2;
               if (frame > mstart && frame < mend)
               {
                  msteps = 3;
               }
            }
            
            if (AiNodeLookUpUserParameter(opts, SSTR::motion_steps) != 0)
            {
               int tmp = AiNodeGetInt(opts, SSTR::motion_steps);
               if (tmp > 0)
               {
                  msteps = tmp;
               }
               else
               {
                  AiMsgWarning("[agAnimCurve] Invalid value for \"motion_steps\" parameter on options node. Default to %d", msteps);
               }
            }
            else
            {
               AiMsgWarning("[agAnimCurve] No \"motion_steps\" parameter on options node. Default to %d", msteps);
            }
         }
         else
         {
            AiMsgWarning("[agAnimCurve] No \"motion_start_frame\" and/or \"motion_end_frame\" parameters on options node. Bake a single sample");
         }
         
         bake = true;
      }
      else
      {
         AiMsgWarning("[agAnimCurve] No \"frame\" parameter on options node.");
      }
   }

   AtArray *p = AiNodeGetArray(node, SSTR::positions);
   AtArray *v = AiNodeGetArray(node, SSTR::values);
   AtArray *i = AiNodeGetArray(node, SSTR::interpolations);
   AtArray *is = AiNodeGetArray(node, SSTR::in_tangents);
   AtArray *iw = AiNodeGetArray(node, SSTR::in_weights);
   AtArray *os = AiNodeGetArray(node, SSTR::out_tangents);
   AtArray *ow = AiNodeGetArray(node, SSTR::out_weights);

   Interpolation defi = (Interpolation) AiNodeGetInt(node, SSTR::default_interpolation);

   if (p->nelements != v->nelements)
   {
      AiMsgWarning("[agAnimCurve] 'positions' and 'values' input arrays must be of the same length");
      if (data->curve)
      {
         delete data->curve;
         data->curve = 0;
      }
   }
   else if (p->type != AI_TYPE_FLOAT || v->type != AI_TYPE_FLOAT)
   {
      AiMsgWarning("[agAnimCurve] 'positions' and 'values' input arrays must be of type float");
      if (data->curve)
      {
         delete data->curve;
         data->curve = 0;
      }
   }
   else
   {
      bool hasInterpolations = false;
      bool hasInTangents = false;
      bool hasOutTangents = false;
      
      if (i->nelements > 0)
      {
         if (i->nelements == p->nelements && i->type == AI_TYPE_INT)
         {
            hasInterpolations = true;
         }
         else
         {
            AiMsgWarning("[agAnimCurve] Invalid 'interpolations' type and/or size. All keys's interpolation type set to 'default_interpolation'.");
         }
      }
      else
      {
         AiMsgWarning("[agAnimCurve] No 'interpolations' set. All keys's interpolation type set to 'default_interpolation'.");
      }
      
      if (is->nelements > 0)
      {
         if (is->nelements == p->nelements && is->type == AI_TYPE_FLOAT)
         {
            hasInTangents = true;
         }
         else
         {
            AiMsgWarning("[agAnimCurve] Invalid in_tangents type and/or size. All keys' input tangent set flat.");
         }
      }
      else
      {
         AiMsgWarning("[agAnimCurve] No 'in_tangents' set. All keys' input tangent set flat.");
      }
      
      if (os->nelements > 0)
      {
         if (os->nelements == p->nelements && os->type == AI_TYPE_FLOAT)
         {
            hasOutTangents = true;
         }
         else
         {
            AiMsgWarning("[agAnimCurve] Invalid out_tangents type and/or size. All keys' output tangent set flat.");
         }
      }
      else
      {
         AiMsgWarning("[agAnimCurve] No 'out_tangents' set. All keys' output tangent set flat.");
      }
      
      if (iw->nelements > 0)
      {
         if (iw->nelements != p->nelements || iw->type != AI_TYPE_FLOAT)
         {
            AiMsgWarning("[agAnimCurve] Invalid input weights type and/or size. Evaluate as non-weigted.");
         }
         else if (ow->nelements != p->nelements || ow->type != AI_TYPE_FLOAT)
         {
            AiMsgWarning("[agAnimCurve] Invalid output weights type and/or size. Evaluate as non-weigted.");
         }
         else
         {
            weighted = true;
         }
      }

      if (!data->curve)
      {
         data->curve = new gmath::TCurve<float>();
         data->curve->setWeighted(weighted);
      }

      data->curve->removeAll();

      data->curve->setPreInfinity((gmath::Curve::Infinity) AiNodeGetInt(node, SSTR::pre_infinity));
      data->curve->setPostInfinity((gmath::Curve::Infinity) AiNodeGetInt(node, SSTR::post_infinity));

      // Sort positions

      unsigned int *sortedkeys = new unsigned int[p->nelements];

      SortPositions(p, sortedkeys);

      for (unsigned int k=0; k<p->nelements; ++k)
      {
         unsigned int ki = sortedkeys[k];
         size_t idx = data->curve->insert(AiArrayGetFlt(p, ki), AiArrayGetFlt(v, ki));
         data->curve->setInterpolation(idx, (gmath::Curve::Interpolation)(hasInterpolations ? AiArrayGetInt(i, ki) : defi));
         data->curve->setInTangent(idx, gmath::Curve::T_CUSTOM, (hasInTangents ? AiArrayGetFlt(is, ki) : 0.0f));
         data->curve->setOutTangent(idx, gmath::Curve::T_CUSTOM, (hasOutTangents ? AiArrayGetFlt(os, ki) : 0.0f));
         if (weighted)
         {
            data->curve->setInWeight(idx, AiArrayGetFlt(iw, ki));
            data->curve->setOutWeight(idx, AiArrayGetFlt(ow, ki));
         }
      }

      delete[] sortedkeys;
   }
   
   if (data->curve && bake)
   {
      // data->input_is_frame_offset is necessarily true if we reach this block
      
      if (AiNodeIsLinked(node, SSTR::input))
      {
         data->frame = frame;
         data->motionStart = mstart;
         data->motionEnd = mend;
      }
      else
      {
         float offset = AiNodeGetFlt(node, SSTR::input);
         
         float fincr = mend - mstart;
         if (msteps > 1)
         {
            fincr /= float(msteps - 1);
         }
         
         data->samples = AiArrayAllocate(1, msteps, AI_TYPE_FLOAT);
         
         int step = 0;
         
         for (float f=mstart; f<=mend; f+=fincr, ++step)
         {
            AiArraySetFlt(data->samples, step, data->curve->eval(f + offset));
         }
         
         data->curve->removeAll();
      }
   }
}

node_finish
{
   NodeData *data = (NodeData*) AiNodeGetLocalData(node);

   if (data->curve)
   {
      delete data->curve;
   }
   if (data->samples)
   {
      AiArrayDestroy(data->samples);
   }
   
   delete data;
}

shader_evaluate
{
   NodeData *data = (NodeData*) AiNodeGetLocalData(node);
   
   float rv = 0.0f;

   if (data->samples)
   {
      rv = AiArrayInterpolateFlt(data->samples, sg->time, 0);
   }
   else if (data->curve)
   {
      float input = AiShaderEvalParamFlt(p_input);
      
      if (data->inputIsOffset)
      {
         if (data->motionEnd <= data->motionStart)
         {
            // invalid motion range, always output value at frame+offset
            input += data->frame;
         }
         else
         {
            input += data->motionStart + sg->time * (data->motionEnd - data->motionStart);
         }
      }
      
      rv = data->curve->eval(input);
   }

   sg->out.FLT = rv;
}
