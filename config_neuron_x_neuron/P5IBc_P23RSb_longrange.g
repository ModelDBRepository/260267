// genesis


// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

//float destlim = {P5IBc_P23RSb_destlim}
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


//P5IBc - P23RSb AMPA
str s
//Load synapse location array
str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P5IBcnet/P5IBc[]/soma/spk8longrange  \
	      /P23RSbnet/P23RSb[]/{s}/Ex_ch2P5IBAMPA@{distantnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{longrangeprobscale}*{P5IBc_P23RSb_prob}}
          //-probability 0.5

end

//P5IBc - P23RSb NMDA
str s
//Load synapse location array
str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P5IBcnet/P5IBc[]/soma/spk8longrange  \
	      /P23RSbnet/P23RSb[]/{s}/Ex_ch2P5IBNMDA@{distantnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1    \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{longrangeprobscale}*{P5IBc_P23RSb_prob}}

end

// For inhibitory long range connections
////P5IBc - P23RSb GABAa
//str s
////Load synapse location array
//str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL"
//
//foreach s ({arglist {locations}})
//
//    barrierall //ayu
//    rvolumeconnect /P5IBcnet/P5IBc[]/soma/spk8longrange  \
//	      /P23RSbnet/P23RSb[]/{s}/Inh_ch2P5IBGABAa@{distantnodes}	    \
//	      -relative			    \
//	      -sourcemask box -1 -1  -1  1  1  1  \
//	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
//	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
//          -probability {{longrangeprobscale}*{P5IBc_P23RSb_prob}}
//
//end



// assigning delays
barrierall //ayu
rvolumedelay /P5IBcnet/P5IBc[]/soma/spk8longrange -radial {{P5IBc_P23RSb_axdelayCV}*{longrangeCVscale}} -add

// assigning weights
float P5IBcmaxweight = 1.0
float P5IBcminweight = 0.0
float P5IBcdecayrate = 0.1
float longrangeweight = {longrangeweightscale}*{{{P5IBcmaxweight}-{P5IBcminweight}} * {exp {-1*{sqrt {{NX}^2*{SEPX}^2*{sqrtNnodesperregion}+{NY}^2*{SEPY}^2*{sqrtNnodesperregion}} }*P5IBcdecayrate} } + {P5IBcminweight}}
barrierall //ayu
rvolumeweight /P5IBcnet/P5IBc[]/soma/spk8longrange -fixed {longrangeweight}

