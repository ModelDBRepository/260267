// genesis


// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

//float destlim = {P23FRBa_P6RSd_destlim}
float destlim = 1.0 // being lazy; should calculate based on model size instead

/*
 * Usage :
 * volumeconnect source-path destination-path
 *		 [-relative]
 *		 [-sourcemask {box,ellipse} x1 y1 x2 y2]
 *		 [-sourcehole {box,ellipse} x1 y1 x2 y2]
 *		 [-destmask   {box,ellipse} x1 y1 x2 y2]
 *		 [-desthole   {box,ellipse} x1 y1 x2 y2]
 *		 [-probability p]
 */


//P23FRBa - P6RSd AMPA
str s
//Load synapse location array
str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P23FRBanet/P23FRBa[]/soma/spk22longrange  \
	      /P6RSdnet/P6RSd[]/{s}/Ex_ch14P23FRBAMPA@{distantnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{longrangeprobscale}*{P23FRBa_P6RSd_prob}}
          //-probability 0.5

end

//P23FRBa - P6RSd NMDA
str s
//Load synapse location array
str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P23FRBanet/P23FRBa[]/soma/spk22longrange  \
	      /P6RSdnet/P6RSd[]/{s}/Ex_ch14P23FRBNMDA@{distantnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1    \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{longrangeprobscale}*{P23FRBa_P6RSd_prob}}

end

// For inhibitory long range connections
////P23FRBa - P6RSd GABAa
//str s
////Load synapse location array
//str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"
//
//foreach s ({arglist {locations}})
//
//    barrierall //ayu
//    rvolumeconnect /P23FRBanet/P23FRBa[]/soma/spk22longrange  \
//	      /P6RSdnet/P6RSd[]/{s}/Inh_ch14P23FRBGABAa@{distantnodes}	    \
//	      -relative			    \
//	      -sourcemask box -1 -1  -1  1  1  1  \
//	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
//	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
//          -probability {{longrangeprobscale}*{P23FRBa_P6RSd_prob}}
//
//end



// assigning delays
barrierall //ayu
rvolumedelay /P23FRBanet/P23FRBa[]/soma/spk22longrange -radial {{P23FRBa_P6RSd_axdelayCV}*{longrangeCVscale}} -add

// assigning weights
float P23FRBamaxweight = 1.0
float P23FRBaminweight = 0.0
float P23FRBadecayrate = 0.1
float longrangeweight = {longrangeweightscale}*{{{P23FRBamaxweight}-{P23FRBaminweight}} * {exp {-1*{sqrt {{NX}^2*{SEPX}^2*{sqrtNnodesperregion}+{NY}^2*{SEPY}^2*{sqrtNnodesperregion}} }*P23FRBadecayrate} } + {P23FRBaminweight}}
barrierall //ayu
rvolumeweight /P23FRBanet/P23FRBa[]/soma/spk22longrange -fixed {longrangeweight}

