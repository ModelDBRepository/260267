// genesis


// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

//float destlim = {P5RSa_B23FS_destlim}
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


//P5RSa - B23FS AMPA
str s
//Load synapse location array
str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P5RSanet/P5RSa[]/soma/spk23longrange  \
	      /B23FSnet/B23FS[]/{s}/Ex_ch5P5RSAMPA@{distantnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{longrangeprobscale}*{P5RSa_B23FS_prob}}
          //-probability 0.5

end

//P5RSa - B23FS NMDA
str s
//Load synapse location array
str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P5RSanet/P5RSa[]/soma/spk23longrange  \
	      /B23FSnet/B23FS[]/{s}/Ex_ch5P5RSNMDA@{distantnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1    \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{longrangeprobscale}*{P5RSa_B23FS_prob}}

end

// For inhibitory long range connections
////P5RSa - B23FS GABAa
//str s
////Load synapse location array
//str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"
//
//foreach s ({arglist {locations}})
//
//    barrierall //ayu
//    rvolumeconnect /P5RSanet/P5RSa[]/soma/spk23longrange  \
//	      /B23FSnet/B23FS[]/{s}/Inh_ch5P5RSGABAa@{distantnodes}	    \
//	      -relative			    \
//	      -sourcemask box -1 -1  -1  1  1  1  \
//	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
//	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
//          -probability {{longrangeprobscale}*{P5RSa_B23FS_prob}}
//
//end



// assigning delays
barrierall //ayu
rvolumedelay /P5RSanet/P5RSa[]/soma/spk23longrange -radial {{P5RSa_B23FS_axdelayCV}*{longrangeCVscale}} -add

// assigning weights
float P5RSamaxweight = 1.0
float P5RSaminweight = 0.0
float P5RSadecayrate = 0.1
float longrangeweight = {longrangeweightscale}*{{{P5RSamaxweight}-{P5RSaminweight}} * {exp {-1*{sqrt {{NX}^2*{SEPX}^2*{sqrtNnodesperregion}+{NY}^2*{SEPY}^2*{sqrtNnodesperregion}} }*P5RSadecayrate} } + {P5RSaminweight}}
barrierall //ayu
rvolumeweight /P5RSanet/P5RSa[]/soma/spk23longrange -fixed {longrangeweight}

