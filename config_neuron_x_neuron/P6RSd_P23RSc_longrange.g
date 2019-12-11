// genesis


// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

//float destlim = {P6RSd_P23RSc_destlim}
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


//P6RSd - P23RSc AMPA
str s
//Load synapse location array
str locations = "apdend4aL apdend4bL apdend4aR apdend4bR"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P6RSdnet/P6RSd[]/soma/spk14longrange  \
	      /P23RScnet/P23RSc[]/{s}/Ex_ch3P6RSAMPA@{distantnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{longrangeprobscale}*{P6RSd_P23RSc_prob}}
          //-probability 0.5

end

//P6RSd - P23RSc NMDA
str s
//Load synapse location array
str locations = "apdend4aL apdend4bL apdend4aR apdend4bR"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P6RSdnet/P6RSd[]/soma/spk14longrange  \
	      /P23RScnet/P23RSc[]/{s}/Ex_ch3P6RSNMDA@{distantnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1    \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{longrangeprobscale}*{P6RSd_P23RSc_prob}}

end

// For inhibitory long range connections
////P6RSd - P23RSc GABAa
//str s
////Load synapse location array
//str locations = "apdend4aL apdend4bL apdend4aR apdend4bR"
//
//foreach s ({arglist {locations}})
//
//    barrierall //ayu
//    rvolumeconnect /P6RSdnet/P6RSd[]/soma/spk14longrange  \
//	      /P23RScnet/P23RSc[]/{s}/Inh_ch3P6RSGABAa@{distantnodes}	    \
//	      -relative			    \
//	      -sourcemask box -1 -1  -1  1  1  1  \
//	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
//	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
//          -probability {{longrangeprobscale}*{P6RSd_P23RSc_prob}}
//
//end



// assigning delays
barrierall //ayu
rvolumedelay /P6RSdnet/P6RSd[]/soma/spk14longrange -radial {{P6RSd_P23RSc_axdelayCV}*{longrangeCVscale}} -add

// assigning weights
float P6RSdmaxweight = 1.0
float P6RSdminweight = 0.0
float P6RSddecayrate = 0.1
float longrangeweight = {longrangeweightscale}*{{{P6RSdmaxweight}-{P6RSdminweight}} * {exp {-1*{sqrt {{NX}^2*{SEPX}^2*{sqrtNnodesperregion}+{NY}^2*{SEPY}^2*{sqrtNnodesperregion}} }*P6RSddecayrate} } + {P6RSdminweight}}
barrierall //ayu
rvolumeweight /P6RSdnet/P6RSd[]/soma/spk14longrange -fixed {longrangeweight}

