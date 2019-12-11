// genesis

create xform /Neoxout [312,380,500,547]
ce /Neoxout

// Creating a view to look at the selected cellular activity pattern.

float P23RSa_xscale  = 0.7
float P23RSa_yscale  = 0.8
float P23RSa_xoffset = 3 * P23RSa_SEPX
float P23RSa_yoffset = P23RSa_SEPY/2

create xlabel /Neoxout/"Activity Pattern" [25%,2%,45%,30]

create xdraw /Neoxout/draw3 [10%,10%,80%,80%] 
setfield     /Neoxout/draw3  \
    xmin     -0.000559    \
    xmax      0.000457    \
    ymin     -0.00044435  \
    ymax      0.00044465  \
    zmin     -0.0807691   \
    zmax      0.08077     \
    vx       -0.211083    \
    vy       -0.779934    \
    vz        0.589192    \
    transform ortho3d     

// create labels for the xview widgets corresponding to the P23RSa cells

create xshape /Neoxout/draw3/horiz_label -text P23RSa  -tx -0.00005 -ty -0.0001

// Creating the cell display array.

create xview /Neoxout/draw3/P23RSa 
setfield     /Neoxout/draw3/P23RSa          \
             tx {-P23RSa_xoffset}           \  
             ty { P23RSa_yoffset}           \
	     value_min[0] -0.090        \
	     value_max[0]  0.060        \
             sizescale {P23RSa_SEPX * 30.0} \
	     morph_val 0                \
         path /P23RSanet/P23RSa[]/soma \
	     field Vm                   

// Creating a set of toggles to choose the P23RSa cell compartment to be
// displayed in the Activity view.  These will all have to be altered
// to use addmsg, or else the above scheme will have to be altered to 
// use path.  

useclock /Neoxout/draw3/P23RSa 1

xshow /Neoxout

