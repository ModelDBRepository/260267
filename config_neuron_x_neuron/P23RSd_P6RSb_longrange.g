// genesis


// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

//float destlim = {P23RSd_P6RSb_destlim}
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


//P23RSd - P6RSb AMPA
str s
//Load synapse location array
str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P23RSdnet/P23RSd[]/soma/spk4longrange  \
	      /P6RSbnet/P6RSb[]/{s}/Ex_ch12P23RSAMPA@{distantnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{longrangeprobscale}*{P23RSd_P6RSb_prob}}
          //-probability 0.5

end

//P23RSd - P6RSb NMDA
str s
//Load synapse location array
str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P23RSdnet/P23RSd[]/soma/spk4longrange  \
	      /P6RSbnet/P6RSb[]/{s}/Ex_ch12P23RSNMDA@{distantnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1    \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{longrangeprobscale}*{P23RSd_P6RSb_prob}}

end

// For inhibitory long range connections
////P23RSd - P6RSb GABAa
//str s
////Load synapse location array
//str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"
//
//foreach s ({arglist {locations}})
//
//    barrierall //ayu
//    rvolumeconnect /P23RSdnet/P23RSd[]/soma/spk4longrange  \
//	      /P6RSbnet/P6RSb[]/{s}/Inh_ch12P23RSGABAa@{distantnodes}	    \
//	      -relative			    \
//	      -sourcemask box -1 -1  -1  1  1  1  \
//	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
//	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
//          -probability {{longrangeprobscale}*{P23RSd_P6RSb_prob}}
//
//end



// assigning delays
barrierall //ayu
rvolumedelay /P23RSdnet/P23RSd[]/soma/spk4longrange -radial {{P23RSd_P6RSb_axdelayCV}*{longrangeCVscale}} -add

// assigning weights
float P23RSdmaxweight = 1.0
float P23RSdminweight = 0.0
float P23RSddecayrate = 0.1
float longrangeweight = {longrangeweightscale}*{{{P23RSdmaxweight}-{P23RSdminweight}} * {exp {-1*{sqrt {{NX}^2*{SEPX}^2*{sqrtNnodesperregion}+{NY}^2*{SEPY}^2*{sqrtNnodesperregion}} }*P23RSddecayrate} } + {P23RSdminweight}}
barrierall //ayu
rvolumeweight /P23RSdnet/P23RSd[]/soma/spk4longrange -fixed {longrangeweight}

