0707070000010000000006660000000000000000010000001225375632200000700000000307.start fplayback -i off -r off -f 1 -e on -h on -t on -a on -k on -s 1
tcur 0.013807482549834944
fps 24
tset -0.041666666666666664 0.25
frange 0 6
unitlength 1
unitmass 1
prompt '`strcat(oppwf(), " -> ")`'
0707070000010000000006660000000000000000010000001225375632200001300000000756.variables set -g ACTIVETAKE = 'Main'
set -g E = '2.7182818284590452354'
set -g EYE = 'stereo'
set -g HIP = '/net/prime-10g.ssve.local/ifs/marza/home/GaetanG/Desktop'
set -g HIPNAME = 'curve.hip'
set -g JOB = '/net/prime-10g.ssve.local/ifs/marza/home/GaetanG'
set -g PI = '3.1415926535897932384'
set -g POSE = '/ve/home/GaetanG/houdini12.5/poselib'
set -g _HIP_SAVEPLATFORM = 'linux-x86_64-gcc4.4'
set -g _HIP_SAVETIME = 'Tue Dec 17 14:10:42 2013'
set -g _HIP_SAVEVERSION = '12.5.562'
set -g status = '0'
0707070000010000000006660000000000000000010000001225375632200001100000000267.aliases alias cd 'opcf'
alias cp 'opcp'
alias h 'history'
alias hython 'python'
alias ls 'opls'
alias matramp 'opramp'
alias opcd 'opcf'
alias oppwd 'oppwf'
alias pwd 'oppwf'
alias rm 'oprm'
0707070000010000000006660000000000000000010000001225375632200001400000000021.takeconfig takename -g take
0707070000010000000006660000000000000000010000001225375632200001500000000000.hou.session 0707070000010000000006660000000000000000010000001225375632200001500000000000.OPlibraries 0707070000010000000006660000000000000000010000001225375632200001700000000000.OPpreferences 0707070000010000000006660000000000000000010000001225375632200002000000000012expression.func # 0 bytes
0707070000010000000006660000000000000000010000001225375632200001000000000661vex.def comment ""
position 5.5 2.5
cachesize 1
connectornextid 0
flags =  lock off model off template off footprint off xray off bypass off display off render off highlight off unload off savedata off compress off exposed on
outputsNamed3
{
}
inputsNamed3
{
}
inputs
{
}
stat
{
  create 1387255341
  modify 1387255342
  author GaetanG@T3600-080.ve.local
  access 0777
}
color UT_Color RGB 0.8 0.8 0.8 
delscript ""
exprlanguage hscript
end
0707070000010000000006660000000000000000010000001225375632200001100000000020vex.parm {
version 0.8
}
0707070000010000000006660000000000000000010000001225375632200001500000000041vex.userdata     ___Version___    12.5.5620707070000010000000006660000000000000000010000001225375632200001000000000653obj.def comment ""
position 5 2
cachesize 1
connectornextid 0
flags =  lock off model off template off footprint off xray off bypass off display on render on highlight off unload off savedata off compress off exposed on
outputsNamed3
{
}
inputsNamed3
{
}
inputs
{
}
stat
{
  create 1387255341
  modify 1387255370
  author GaetanG@T3600-080.ve.local
  access 0777
}
color UT_Color RGB 0.8 0.8 0.8 
delscript ""
exprlanguage hscript
end
0707070000010000000006660000000000000000010000001225375632200001100000000020obj.parm {
version 0.8
}
0707070000010000000006660000000000000000010000001225375632200001500000000041obj.userdata     ___Version___    12.5.5620707070000010000000006660000000000000000010000001225375632200001600000000032obj/geo1.init type = geo
matchesdef = 0
0707070000010000000006660000000000000000010000001225375632200001500000001111obj/geo1.def objflags objflags =  origin off
pretransform UT_DMatrix4 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1
comment ""
position 3.62344 4.56468
cachesize 1
connectornextid 2
flags =  lock off model off template off footprint off xray off bypass off display on render off highlight off unload off savedata off compress off exposed on selectable on
outputsNamed3
{
1 "output1"
}
inputsNamed3
{
0 	"" "" 1 "input1"
}
inputs
{
0 	"" 0 1
}
stat
{
  create 1387255370
  modify 1387258649
  author GaetanG@T3600-080.ve.local
  access 0777
}
color UT_Color RGB 0.8 0.8 0.8 
delscript ""
exprlanguage hscript
end
0707070000010000000006660000000000000000010000001225375632200002600000021015obj/geo1.spareparmdef     group {
	name	"stdswitcher5"
	label	"Transform"

	parm {
	    name	"keeppos"
	    baseparm
	    joinnext
	    export	none
	}
	parm {
	    name	"pre_xform"
	    baseparm
	    export	none
	}
	parm {
	    name	"xOrd"
	    baseparm
	    joinnext
	    export	none
	}
	parm {
	    name	"rOrd"
	    baseparm
	    export	none
	}
	parm {
	    name	"t"
	    baseparm
	    export	all
	}
	parm {
	    name	"r"
	    baseparm
	    export	all
	}
	parm {
	    name	"s"
	    baseparm
	    export	none
	}
	parm {
	    name	"p"
	    baseparm
	    export	none
	}
	parm {
	    name	"scale"
	    baseparm
	    export	none
	}
	parm {
	    name	"lookatpath"
	    baseparm
	    export	none
	}
	parm {
	    name	"lookup"
	    baseparm
	    export	none
	}
	parm {
	    name	"pathobjpath"
	    baseparm
	    export	none
	}
	parm {
	    name	"roll"
	    baseparm
	    export	none
	}
	parm {
	    name	"pos"
	    baseparm
	    export	none
	}
	parm {
	    name	"uparmtype"
	    baseparm
	    export	none
	}
	parm {
	    name	"pathorient"
	    baseparm
	    export	none
	}
	parm {
	    name	"up"
	    baseparm
	    export	none
	}
	parm {
	    name	"bank"
	    baseparm
	    export	none
	}
    }

    group {
	name	"stdswitcher5_1"
	label	"Material"

	parm {
	    name	"shop_materialpath"
	    baseparm
	    joinnext
	    export	none
	}
	parm {
	    name	"shop_materialopts"
	    baseparm
	    export	none
	}
    }

    group {
	name	"stdswitcher5_2"
	label	"Render"

	parm {
	    name	"tdisplay"
	    baseparm
	    joinnext
	    export	none
	}
	parm {
	    name	"display"
	    baseparm
	    export	none
	}
	parm {
	    name	"vm_phantom"
	    label	"Phantom"
	    type	toggle
	    default	{ "0" }
	    range	{ 0 1 }
	    export	none
	    parmtag	{ "spare_category" "Render" }
	}
	parm {
	    name	"vm_renderable"
	    label	"Renderable"
	    type	toggle
	    default	{ "1" }
	    range	{ 0 1 }
	    export	none
	    parmtag	{ "spare_category" "Render" }
	}
	group {
	    name	"folder0"
	    label	"Shading"

	    parm {
		name	"categories"
		label	"Categories"
		type	string
		default	{ "" }
		help	"A list of tags which can be used to select the object"
		range	{ 0 1 }
		export	none
		parmtag	{ "spare_category" "Shading" }
	    }
	    parm {
		name	"reflectmask"
		label	"Reflection Mask"
		type	oplist
		default	{ "*" }
		help	"Objects that will be reflected on this object."
		range	{ 0 1 }
		export	none
		parmtag	{ "opexpand" "1" }
		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" }
		parmtag	{ "oprelative" "/obj" }
		parmtag	{ "spare_category" "Shading" }
	    }
	    parm {
		name	"refractmask"
		label	"Refraction Mask"
		type	oplist
		default	{ "*" }
		help	"Objects that will be refracted on this object."
		range	{ 0 1 }
		export	none
		parmtag	{ "opexpand" "1" }
		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" }
		parmtag	{ "oprelative" "/obj" }
		parmtag	{ "spare_category" "Shading" }
	    }
	    parm {
		name	"lightmask"
		label	"Light Mask"
		type	oplist
		default	{ "*" }
		help	"Lights that illuminate this object."
		range	{ 0 1 }
		export	none
		parmtag	{ "opexpand" "1" }
		parmtag	{ "opfilter" "!!OBJ/LIGHT!!" }
		parmtag	{ "oprelative" "/obj" }
		parmtag	{ "spare_category" "Shading" }
	    }
	    parm {
		name	"vm_volumefilter"
		label	"Volume Filter"
		type	string
		default	{ "box" }
		menu	{
		    "box"	"Box Filter"
		    "gaussian"	"Gaussian"
		    "bartlett"	"Bartlett (triangle)"
		    "catrom"	"Catmull-Rom"
		    "hanning"	"Hanning"
		    "blackman"	"Blackman"
		    "sinc"	"Sinc (sharpening)"
		}
		range	{ 0 1 }
		export	none
		parmtag	{ "spare_category" "Shading" }
	    }
	    parm {
		name	"vm_volumefilterwidth"
		label	"Volume Filter Width"
		type	float
		default	{ "1" }
		range	{ 0.001 5 }
		export	none
		parmtag	{ "spare_category" "Shading" }
	    }
	    parm {
		name	"vm_matte"
		label	"Matte shading"
		type	toggle
		default	{ "0" }
		range	{ 0 1 }
		export	none
		parmtag	{ "spare_category" "Shading" }
	    }
	    parm {
		name	"vm_rayshade"
		label	"Raytrace Shading"
		type	toggle
		default	{ "0" }
		range	{ 0 1 }
		export	none
		parmtag	{ "spare_category" "Shading" }
	    }
	}

	group {
	    name	"folder0_1"
	    label	"Sampling"

	    parm {
		name	"geo_velocityblur"
		label	"Geometry Velocity Blur"
		type	toggle
		default	{ "0" }
		disablewhen	"{ allowmotionblur == 0 }"
		range	{ 0 1 }
		export	none
		parmtag	{ "spare_category" "Sampling" }
	    }
	}

	group {
	    name	"folder0_2"
	    label	"Dicing"

	    parm {
		name	"vm_shadingquality"
		label	"Shading Quality"
		type	float
		default	{ "1" }
		range	{ 0 10 }
		export	none
		parmtag	{ "spare_category" "Dicing" }
	    }
	    parm {
		name	"vm_flatness"
		label	"Dicing Flatness"
		type	float
		default	{ "0.05" }
		range	{ 0 1 }
		export	none
		parmtag	{ "spare_category" "Dicing" }
	    }
	    parm {
		name	"vm_raypredice"
		label	"Ray Predicing"
		type	integer
		default	{ "0" }
		menu	{
		    "0"	"Disable Predicing"
		    "1"	"Full Predicing"
		    "2"	"Precompute Bounds"
		}
		range	{ 0 10 }
		export	none
		parmtag	{ "spare_category" "Dicing" }
	    }
	    parm {
		name	"vm_curvesurface"
		label	"Shade Curves As Surfaces"
		type	toggle
		default	{ "0" }
		range	{ 0 1 }
		export	none
		parmtag	{ "spare_category" "Dicing" }
	    }
	}

	group {
	    name	"folder0_3"
	    label	"Geometry"

	    parm {
		name	"vm_rmbackface"
		label	"Backface Removal"
		type	toggle
		default	{ "0" }
		range	{ 0 1 }
		export	none
		parmtag	{ "spare_category" "Geometry" }
	    }
	    parm {
		name	"shop_geometrypath"
		label	"Procedural Shader"
		type	oppath
		default	{ "" }
		range	{ 0 1 }
		export	none
		parmtag	{ "opfilter" "!!SHOP/GEOMETRY!!" }
		parmtag	{ "oprelative" "." }
		parmtag	{ "spare_category" "Geometry" }
	    }
	    parm {
		name	"vm_forcegeometry"
		label	"Force Procedural Geometry Output"
		type	toggle
		default	{ "1" }
		range	{ 0 1 }
		export	none
		parmtag	{ "spare_category" "Geometry" }
	    }
	    parm {
		name	"vm_rendersubd"
		label	"Polygons As Subdivision (Mantra)"
		type	toggle
		default	{ "0" }
		range	{ 0 1 }
		export	none
		parmtag	{ "spare_category" "Geometry" }
	    }
	    parm {
		name	"vm_subdgroup"
		label	"Subdivision Group"
		type	string
		default	{ "" }
		disablewhen	"{ vm_rendersubd == 0 }"
		range	{ 0 1 }
		export	none
		parmtag	{ "spare_category" "Geometry" }
	    }
	    parm {
		name	"vm_renderpoints"
		label	"Render As Points (Mantra)"
		type	integer
		default	{ "2" }
		menu	{
		    "0"	"No Point Rendering"
		    "1"	"Render Only Points"
		    "2"	"Render Unconnected Points"
		}
		range	{ 0 10 }
		export	none
		parmtag	{ "spare_category" "Geometry" }
	    }
	    parm {
		name	"vm_usenforpoints"
		label	"Use N For Point Rendering"
		type	toggle
		default	{ "0" }
		disablewhen	"{ vm_renderpoints == 0 }"
		range	{ 0 1 }
		export	none
		parmtag	{ "spare_category" "Geometry" }
	    }
	    parm {
		name	"vm_pointscale"
		label	"Point Scale"
		type	float
		default	{ "1" }
		disablewhen	"{ vm_renderpoints == 0 }"
		range	{ 0! 10 }
		export	none
		parmtag	{ "spare_category" "Geometry" }
	    }
	    parm {
		name	"vm_metavolume"
		label	"Metaballs as Volume"
		type	toggle
		default	{ "0" }
		range	{ 0 1 }
		export	none
		parmtag	{ "spare_category" "Geometry" }
	    }
	    parm {
		name	"vm_coving"
		label	"Coving"
		type	integer
		default	{ "1" }
		menu	{
		    "0"	"Disable Coving"
		    "1"	"Coving for displacement/sub-d"
		    "2"	"Coving for all primitives"
		}
		range	{ 0 10 }
		export	none
		parmtag	{ "spare_category" "Geometry" }
	    }
	    parm {
		name	"vm_materialoverride"
		label	"Material Override"
		type	string
		default	{ "compact" }
		menu	{
		    "none"	"Disabled"
		    "full"	"Evaluate for Each Primitve/Point"
		    "compact"	"Evaluate Once"
		}
		range	{ 0 1 }
		export	none
		parmtag	{ "spare_category" "Geometry" }
	    }
	    parm {
		name	"vm_computeN"
		label	"Automatically Compute Normals"
		type	toggle
		default	{ "1" }
		range	{ 0 1 }
		export	none
		parmtag	{ "spare_category" "Geometry" }
	    }
	    parm {
		name	"vm_overridedetail"
		label	"Ignore Geometry Attribute Shaders"
		type	toggle
		default	{ "0" }
		range	{ 0 1 }
		export	none
		parmtag	{ "spare_category" "Geometry" }
	    }
	}

    }

    group {
	name	"stdswitcher5_3"
	label	"Misc"

	parm {
	    name	"use_dcolor"
	    baseparm
	    export	none
	}
	parm {
	    name	"dcolor"
	    baseparm
	    export	none
	}
	parm {
	    name	"picking"
	    baseparm
	    export	none
	}
	parm {
	    name	"pickscript"
	    baseparm
	    export	none
	}
	parm {
	    name	"caching"
	    baseparm
	    export	none
	}
	parm {
	    name	"vport_shadeopen"
	    baseparm
	    export	none
	}
	parm {
	    name	"vport_displayassubdiv"
	    baseparm
	    invisible
	    export	none
	}
    }

0707070000010000000006660000000000000000010000001225375632200001500000002467obj/geo1.chn {
    channel tx {
      lefttype = extend
      righttype = extend
      flags = 0
      start = -0.041666666666666664
      segment { length = 0.0083333333333333315 value = 0 2 slope = 300.77029582637238 -98.210708841264434 accel = 0.0083333333333333315 0.14285714285714285
	 expr = cubic() }
      segment { length = 0.029166666666666667 value = 2 -3 slope = -98.210708841264434 14.399751768349098 accel = 0.58386653152912715 0.10937500000000001
	 expr = bezier() }
      segment { length = 0.066666666666666652 value = -3 4 slope = 14.399751768349098 65.400000000000006 accel = 0.25 0.80000000000000004
	 expr = bezier() }
      segment { length = 0.045833333333333337 value = 4 2.8999999999999999 slope = 65.400000000000006 -39.386586358215432 accel = 0.80000000000000004 0.39411981516218614
	 expr = bezier() }
      segment { length = 0.029166666666666646 value = 2.8999999999999999 1.1000000000000001 slope = -39.386586358215432 -51.560622141663828 accel = 0.25080351873957274 0.41633514359580032
	 expr = bezier() }
      segment { length = 0.029166666666666674 value = 1.1000000000000001 0 slope = -51.560622141663828 -42.967185118053195 accel = 0.41633514359580082 0.43500999176996757
	 expr = bezier() }
      segment { length = 0 slope = -42.967185118053195 300.77029582637238 accel = -nan -nan expr = cubic() }
    }
  }
0707070000010000000006660000000000000000010000001225375632200001600000004050obj/geo1.parm {
version 0.8
stdswitcher	[ 0	locks=0 ]	(	0	0	0	0	)
keeppos	[ 0	locks=0 ]	(	"off"	)
pre_xform	[ 0	locks=0 ]	(	0	)
xOrd	[ 0	locks=0 ]	(	"srt"	)
rOrd	[ 0	locks=0 ]	(	"xyz"	)
t	[ 0	locks=0 ]	(	[ tx	-1.7136977884857822 ] 	0	0	)
r	[ 0	locks=0 ]	(	0	0	0	)
s	[ 0	locks=0 ]	(	1	1	1	)
p	[ 0	locks=0 ]	(	0	0	0	)
scale	[ 0	locks=0 ]	(	1	)
lookatpath	[ 0	locks=0 ]	(	""	)
lookup	[ 0	locks=0 ]	(	on	)
pathobjpath	[ 0	locks=0 ]	(	""	)
roll	[ 0	locks=0 ]	(	0	)
pos	[ 0	locks=0 ]	(	0	)
uparmtype	[ 0	locks=0 ]	(	"arc"	)
pathorient	[ 0	locks=0 ]	(	1	)
up	[ 0	locks=0 ]	(	0	1	0	)
bank	[ 0	locks=0 ]	(	0	)
shop_materialpath	[ 0	locks=0 ]	(	""	)
shop_materialopts	[ 0	locks=0 ]	(	0	)
tdisplay	[ 0	locks=0 ]	(	"off"	)
display	[ 0	locks=0 ]	(	1	)
use_dcolor	[ 0	locks=0 ]	(	"off"	)
dcolor	[ 0	locks=0 ]	(	1	1	1	)
picking	[ 0	locks=0 ]	(	"on"	)
pickscript	[ 0	locks=0 ]	(	""	)
caching	[ 0	locks=0 ]	(	"off"	)
vport_shadeopen	[ 0	locks=0 ]	(	"off"	)
vport_displayassubdiv	[ 0	locks=0 ]	(	"off"	)
stdswitcher5	[ 0	locks=0 ]	(	0	0	0	0	)
vm_phantom	[ 0	locks=0 ]	(	"off"	)
vm_renderable	[ 0	locks=0 ]	(	"on"	)
folder0	[ 0	locks=0 ]	(	0	0	0	0	)
categories	[ 0	locks=0 ]	(	""	)
reflectmask	[ 0	locks=0 ]	(	*	)
refractmask	[ 0	locks=0 ]	(	*	)
lightmask	[ 0	locks=0 ]	(	*	)
vm_volumefilter	[ 0	locks=0 ]	(	box	)
vm_volumefilterwidth	[ 0	locks=0 ]	(	1	)
vm_matte	[ 0	locks=0 ]	(	"off"	)
vm_rayshade	[ 0	locks=0 ]	(	"off"	)
geo_velocityblur	[ 0	locks=0 ]	(	"off"	)
vm_shadingquality	[ 0	locks=0 ]	(	1	)
vm_flatness	[ 0	locks=0 ]	(	0.050000000000000003	)
vm_raypredice	[ 0	locks=0 ]	(	0	)
vm_curvesurface	[ 0	locks=0 ]	(	"off"	)
vm_rmbackface	[ 0	locks=0 ]	(	"off"	)
shop_geometrypath	[ 0	locks=0 ]	(	""	)
vm_forcegeometry	[ 0	locks=0 ]	(	"on"	)
vm_rendersubd	[ 0	locks=0 ]	(	"off"	)
vm_subdgroup	[ 0	locks=0 ]	(	""	)
vm_renderpoints	[ 0	locks=0 ]	(	2	)
vm_usenforpoints	[ 0	locks=0 ]	(	"off"	)
vm_pointscale	[ 0	locks=0 ]	(	1	)
vm_metavolume	[ 0	locks=0 ]	(	"off"	)
vm_coving	[ 0	locks=0 ]	(	1	)
vm_materialoverride	[ 0	locks=0 ]	(	compact	)
vm_computeN	[ 0	locks=0 ]	(	"on"	)
vm_overridedetail	[ 0	locks=0 ]	(	"off"	)
}
0707070000010000000006660000000000000000010000001225375632200002200000000041obj/geo1.userdata     ___Version___    12.5.5620707070000010000000006660000000000000000010000001225375632200002400000000033obj/geo1/file1.init type = file
matchesdef = 0
0707070000010000000006660000000000000000010000001225375632200002300000000700obj/geo1/file1.def sopflags sopflags = 
comment ""
position 0 0
cachesize 1
connectornextid 0
flags =  lock off model off template off footprint off xray off bypass off display on render on highlight off unload off savedata off compress off exposed on
outputsNamed3
{
}
inputsNamed3
{
}
inputs
{
}
stat
{
  create 1387255370
  modify 1387255376
  author GaetanG@T3600-080.ve.local
  access 0777
}
color UT_Color RGB 0.8 0.8 0.8 
delscript ""
exprlanguage hscript
end
0707070000010000000006660000000000000000010000001225375632200002400000000430obj/geo1/file1.parm {
version 0.8
filemode	[ 0	locks=0 ]	(	"read"	)
file	[ 0	locks=0 ]	(	defgeo.bgeo	)
reload	[ 0	locks=0 ]	(	0	)
objpattern	[ 0	locks=0 ]	(	*	)
geodatapath	[ 0	locks=0 ]	(	""	)
missingframe	[ 0	locks=0 ]	(	"error"	)
loadtype	[ 0	locks=0 ]	(	"full"	)
mkpath	[ 0	locks=0 ]	(	"off"	)
}
0707070000010000000006660000000000000000010000001225375632200003000000000041obj/geo1/file1.userdata     ___Version___    12.5.5620707070000010000000006660000000000000000010000001225375632200001500000000002obj/geo1.net 1
0707070000010000000006660000000000000000010000001225375632200001200000000007obj.order 1
geo1
0707070000010000000006660000000000000000010000001225375632200001000000000002obj.net 1
0707070000010000000006660000000000000000010000001225375632200001000000000657out.def comment ""
position 5 0.5
cachesize 1
connectornextid 0
flags =  lock off model off template off footprint off xray off bypass off display off render off highlight off unload off savedata off compress off exposed on
outputsNamed3
{
}
inputsNamed3
{
}
inputs
{
}
stat
{
  create 1387255341
  modify 1387255342
  author GaetanG@T3600-080.ve.local
  access 0777
}
color UT_Color RGB 0.8 0.8 0.8 
delscript ""
exprlanguage hscript
end
0707070000010000000006660000000000000000010000001225375632200001100000000020out.parm {
version 0.8
}
0707070000010000000006660000000000000000010000001225375632200001500000000041out.userdata     ___Version___    12.5.5620707070000010000000006660000000000000000010000001225375632200001000000000002out.net 1
0707070000010000000006660000000000000000010000001225375632200001100000000661part.def comment ""
position 5.5 1.5
cachesize 1
connectornextid 0
flags =  lock off model off template off footprint off xray off bypass off display off render off highlight off unload off savedata off compress off exposed on
outputsNamed3
{
}
inputsNamed3
{
}
inputs
{
}
stat
{
  create 1387255341
  modify 1387255342
  author GaetanG@T3600-080.ve.local
  access 0777
}
color UT_Color RGB 0.8 0.8 0.8 
delscript ""
exprlanguage hscript
end
0707070000010000000006660000000000000000010000001225375632200001200000000020part.parm {
version 0.8
}
0707070000010000000006660000000000000000010000001225375632200001600000000041part.userdata     ___Version___    12.5.5620707070000010000000006660000000000000000010000001225375632200001100000000002part.net 1
0707070000010000000006660000000000000000010000001225375632200000700000000657ch.def comment ""
position 4.5 1
cachesize 1
connectornextid 0
flags =  lock off model off template off footprint off xray off bypass off display off render off highlight off unload off savedata off compress off exposed on
outputsNamed3
{
}
inputsNamed3
{
}
inputs
{
}
stat
{
  create 1387255341
  modify 1387255342
  author GaetanG@T3600-080.ve.local
  access 0777
}
color UT_Color RGB 0.8 0.8 0.8 
delscript ""
exprlanguage hscript
end
0707070000010000000006660000000000000000010000001225375632200001000000000020ch.parm {
version 0.8
}
0707070000010000000006660000000000000000010000001225375632200001400000000041ch.userdata     ___Version___    12.5.5620707070000010000000006660000000000000000010000001225375632200000700000000002ch.net 1
0707070000010000000006660000000000000000010000001225375632200001100000000655shop.def comment ""
position 5 3
cachesize 1
connectornextid 0
flags =  lock off model off template off footprint off xray off bypass off display off render off highlight off unload off savedata off compress off exposed on
outputsNamed3
{
}
inputsNamed3
{
}
inputs
{
}
stat
{
  create 1387255341
  modify 1387255342
  author GaetanG@T3600-080.ve.local
  access 0777
}
color UT_Color RGB 0.8 0.8 0.8 
delscript ""
exprlanguage hscript
end
0707070000010000000006660000000000000000010000001225375632200001200000000020shop.parm {
version 0.8
}
0707070000010000000006660000000000000000010000001225375632200001600000000041shop.userdata     ___Version___    12.5.5620707070000010000000006660000000000000000010000001225375632200001100000000002shop.net 1
0707070000010000000006660000000000000000010000001225375632200001000000000661img.def comment ""
position 4.5 2.5
cachesize 1
connectornextid 0
flags =  lock off model off template off footprint off xray off bypass off display off render off highlight off unload off savedata off compress off exposed on
outputsNamed3
{
}
inputsNamed3
{
}
inputs
{
}
stat
{
  create 1387255341
  modify 1387255345
  author GaetanG@T3600-080.ve.local
  access 0777
}
color UT_Color RGB 0.8 0.8 0.8 
delscript ""
exprlanguage hscript
end
0707070000010000000006660000000000000000010000001225375632200001100000000020img.parm {
version 0.8
}
0707070000010000000006660000000000000000010000001225375632200001500000000041img.userdata     ___Version___    12.5.5620707070000010000000006660000000000000000010000001225375632200001700000000032img/comp1.init type = img
matchesdef = 0
0707070000010000000006660000000000000000010000001225375632200001600000000655img/comp1.def comment ""
position 0 0
cachesize 1
connectornextid 0
flags =  lock off model off template off footprint off xray off bypass off display off render off highlight off unload off savedata off compress off exposed on
outputsNamed3
{
}
inputsNamed3
{
}
inputs
{
}
stat
{
  create 1387255345
  modify 1387255345
  author GaetanG@T3600-080.ve.local
  access 0777
}
color UT_Color RGB 0.8 0.8 0.8 
delscript ""
exprlanguage hscript
end
0707070000010000000006660000000000000000010000001225375632200001700000000020img/comp1.parm {
version 0.8
}
0707070000010000000006660000000000000000010000001225375632200002300000000041img/comp1.userdata     ___Version___    12.5.5620707070000010000000006660000000000000000010000001225375632200001600000000002img/comp1.net 1
0707070000010000000006660000000000000000010000001225375632200001000000000002img.net 1
0707070000010000000006660000000000000000010000001225375632200001000000000002vex.net 1
0707070000010000000006660000000000000000010000001225375632200002400000000342.userdisplayoptions viewoptadd -r vector vertex_normal
viewoptset vertex_normal selcolor ( 0 0.45 1 ) color ( 0 0 1 ) overridecolor ( 0 ) arrow ( 0 ) class ( vertex ) attrib ( N ) scale ( 1 ) visibility ( 0 ) icon ( SI_pointNormal ) label ( VN )
0707070000010000000006660000000000000000010000001225375632200001500000010445.application neteditor -d Build -b 0 -l 0 -f '' -q 1.000000 -v /obj 1.2  0.541176 1 panetab7
imgdispopt -m 10 -P on -M on -A on -g 1 -G "C Left Right" -B 1 -v split -V 2 2 -d h -a off -i 2 -b 0 0 0 -o "" -h on -H on -c 0.8 0.8 0.8 -C 1 1 1 -S 1 1 0 -R 6 -F dc -D "" -I "" -f "" -s off -r 256 256 -p on -l off -t on
imgview -z 1 -p (none) 0 -c 0 -l on -s off -i imgview2
imgview2d  -V on -L on -G on -H on -P off -m 0 -p 0 1 -b 1 1 0 -g 1 -d "" -c -1 -t off -i on -X on imgview2 1
imgview2d  -V on -L on -G on -H on -P off -m 0 -p 0 1 -b 1 1 0 -g 1 -d "" -c -1 -t off -i on -X on imgview2 2
imgview2d  -V on -L on -G on -H on -P off -m 0 -p 0 1 -b 1 1 0 -g 1 -d "" -c -1 -t off -i on -X on imgview2 3
imgview2d  -V on -L on -G on -H on -P off -m 0 -p 0 1 -b 1 1 0 -g 1 -d "" -c -1 -t off -i on -X on imgview2 4
imgview2d  -V on -L on -G on -H on -P off -m 0 -p 0 1 -b 1 1 0 -g 1 -d "" -c -1 -t off -i on -X on imgview2 5
imgview2d  -V on -L on -G on -H on -P off -m 0 -p 0 1 -b 1 1 0 -g 1 -d "" -c -1 -t off -i on -X on imgview2 6
imgview2d  -V on -L on -G on -H on -P off -m 0 -p 0 1 -b 1 1 0 -g 1 -d "" -c -1 -t off -i on -X on imgview2 7
imgview2d  -V on -L on -G on -H on -P off -m 0 -p 0 1 -b 1 1 0 -g 1 -d "" -c -1 -t off -i on -X on imgview2 8
imgview2d  -V on -L on -G on -H on -P off -m 0 -p 0 1 -b 1 1 0 -g 1 -d "" -c -1 -t off -i on -X on imgview2 9
imgview2d  -V on -L on -G on -H on -P off -m 0 -p 0 1 -b 1 1 0 -g 1 -d "" -c -1 -t off -i on -X on imgview2 10
imgview2d  -V on -L on -G on -H on -P off -m 0 -p 0 1 -b 1 1 0 -g 1 -d "" -c -1 -t off -i on -X on imgview2 11
imgview2d  -V on -L on -G on -H on -P off -m 0 -p 0 1 -b 1 1 0 -g 1 -d "" -c -1 -t off -i on -X on imgview2 12
imgview2d  -V on -L on -G on -H on -P off -m 0 -p 0 1 -b 1 1 0 -g 1 -d "" -c -1 -t off -i on -X on imgview2 13
imgview2d  -V on -L on -G on -H on -P off -m 0 -p 0 1 -b 1 1 0 -g 1 -d "" -c -1 -t off -i on -X on imgview2 14
imgview2d  -V on -L on -G on -H on -P off -m 0 -p 0 1 -b 1 1 0 -g 1 -d "" -c -1 -t off -i on -X on imgview2 15
imgview2d  -V on -L on -G on -H on -P off -m 0 -p 0 1 -b 1 1 0 -g 1 -d "" -c -1 -t off -i on -X on imgview2 16
imgviewtime -V on -L on -G on -H on -P off -r 24 -u fr -g 0 -f on -e on -b on -d imgview2
imgviewhist -V on -L on -G on -H on -P off -c -1 -h 0 -i on imgview2 1
imgviewhist -V on -L on -G on -H on -P off -c -1 -h 0 -i on imgview2 2
imgviewhist -V on -L on -G on -H on -P off -c -1 -h 0 -i on imgview2 3
imgviewhist -V on -L on -G on -H on -P off -c -1 -h 0 -i on imgview2 4
imgviewhist -V on -L on -G on -H on -P off -c -1 -h 0 -i on imgview2 5
imgviewhist -V on -L on -G on -H on -P off -c -1 -h 0 -i on imgview2 6
imgviewhist -V on -L on -G on -H on -P off -c -1 -h 0 -i on imgview2 7
imgviewhist -V on -L on -G on -H on -P off -c -1 -h 0 -i on imgview2 8
imgviewhist -V on -L on -G on -H on -P off -c -1 -h 0 -i on imgview2 9
imgviewhist -V on -L on -G on -H on -P off -c -1 -h 0 -i on imgview2 10
imgviewhist -V on -L on -G on -H on -P off -c -1 -h 0 -i on imgview2 11
imgviewhist -V on -L on -G on -H on -P off -c -1 -h 0 -i on imgview2 12
imgviewhist -V on -L on -G on -H on -P off -c -1 -h 0 -i on imgview2 13
imgviewhist -V on -L on -G on -H on -P off -c -1 -h 0 -i on imgview2 14
imgviewhist -V on -L on -G on -H on -P off -c -1 -h 0 -i on imgview2 15
imgviewhist -V on -L on -G on -H on -P off -c -1 -h 0 -i on imgview2 16
panepath -d Build -f -p panetab1 /obj/geo1
panepath -d Build -f -p panetab2 /obj/geo1
panepath -d Build -f -p panetab3 /obj/geo1
panepath -d Build -f -p panetab4 /img/comp1/
panepath -d Build -f -p panetab5 /obj/geo1
panepath -d Build -f -p panetab6 /obj/geo1
panepath -d Build -f -p panetab7 /obj/geo1
panepath -d Build -f -p panetab8 /obj/
panepath -d Build -f -p panetab9 /obj/geo1
panepath -d Build -f -p panetab10 /obj/
panepath -d Build -f -p Help /obj/
desk set Build
viewupdate -u always
audiopanel -s p ''
audiopanel -s r off
audiopanel -s s 1
audiopanel -s f 45
audiopanel -t p stop
audiopanel -t l off
audiopanel -t r on
audiopanel -o m off
audiopanel -o t on
audiopanel -o u on
audiopanel -o l 1
audiopanel -o r 1
audiopanel -o d 0
audiopanel -r d 0.2
audiopanel -m 0
audiopanel -a ''
audiopanel -f 1
audiopanel -O 0
colorsettings -D -A -g 1 -l ""
compproject -r 640 480 -a 1 -d i8 -p 0 255 -P full -f 0 -F 0 -l on
texcache  -a off -r 2147483647 2147483647 -m 10000 -M 8049
shopvisible +OGL +OGL2 +I3D +VMantra +MI +RIB
0707070000010000000006660000000000000000010000001225375632200000700000000060.takes HoudiniTakeFile 1.0
take name Main kids 0
   e
0707070000010000000006660000000000000000010000001225375632200000500000000024.cwd opcf /
takeset Main
0707070000010000000006660000000000000000010000001225375632200001600000000000.custompanels 0707070000010000000006660000000000000000010000001225375632200001300000000000TRAILER!!! 