// genesis

// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

float destlim = {P6RSc_TCR_destlim}

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


//P6RSc - TCR AMPA

str s

//Load synapse location array

str locations = "proxdendNNW31 proxdendNNW32 proxdendNNW33 proxdendNNE31 proxdendNNE32 proxdendNNE33 proxdendNE31 proxdendNE32 proxdendNE33 proxdendE31 proxdendE32 proxdendE33 proxdendSE31 proxdendSE32 proxdendSE33 proxdendSSE31 proxdendSSE32 proxdendSSE33 proxdendSSW31 proxdendSSW32 proxdendSSW33 proxdendSW31 proxdendSW32 proxdendSW33 proxdendW31 proxdendW32 proxdendW33 proxdendNW31 proxdendNW32 proxdendNW33 proxdendNNW21 proxdendNNW22 proxdendNNW23 proxdendNNE21 proxdendNNE22 proxdendNNE23 proxdendNE21 proxdendNE22 proxdendNE23 proxdendE21 proxdendE22 proxdendE23 proxdendSE21 proxdendSE22 proxdendSE23 proxdendSSE21 proxdendSSE22 proxdendSSE23 proxdendSSW21 proxdendSSW22 proxdendSSW23 proxdendSW21 proxdendSW22 proxdendSW23 proxdendW21 proxdendW22 proxdendW23 proxdendNW21 proxdendNW22 proxdendNW23 proxdendNNW11 proxdendNNW12 proxdendNNW13 proxdendNNE11 proxdendNNE12 proxdendNNE13 proxdendNE11 proxdendNE12 proxdendNE13 proxdendE11 proxdendE12 proxdendE13 proxdendSE11 proxdendSE12 proxdendSE13 proxdendSSE11 proxdendSSE12 proxdendSSE13 proxdendSSW11 proxdendSSW12 proxdendSSW13 proxdendSW11 proxdendSW12 proxdendSW13 proxdendW11 proxdendW12 proxdendW13 proxdendNW11 proxdendNW12 proxdendNW13"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P6RScnet/P6RSc[]/soma/spk13  \
	      /TCRnet/TCR[]/{s}/Ex_ch20P6RSAMPA@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeprobscale}*{P6RSc_TCR_prob}}

end

//P6RSc - TCR NMDA

str s

//Load synapse location array

str locations = "proxdendNNW31 proxdendNNW32 proxdendNNW33 proxdendNNE31 proxdendNNE32 proxdendNNE33 proxdendNE31 proxdendNE32 proxdendNE33 proxdendE31 proxdendE32 proxdendE33 proxdendSE31 proxdendSE32 proxdendSE33 proxdendSSE31 proxdendSSE32 proxdendSSE33 proxdendSSW31 proxdendSSW32 proxdendSSW33 proxdendSW31 proxdendSW32 proxdendSW33 proxdendW31 proxdendW32 proxdendW33 proxdendNW31 proxdendNW32 proxdendNW33 proxdendNNW21 proxdendNNW22 proxdendNNW23 proxdendNNE21 proxdendNNE22 proxdendNNE23 proxdendNE21 proxdendNE22 proxdendNE23 proxdendE21 proxdendE22 proxdendE23 proxdendSE21 proxdendSE22 proxdendSE23 proxdendSSE21 proxdendSSE22 proxdendSSE23 proxdendSSW21 proxdendSSW22 proxdendSSW23 proxdendSW21 proxdendSW22 proxdendSW23 proxdendW21 proxdendW22 proxdendW23 proxdendNW21 proxdendNW22 proxdendNW23 proxdendNNW11 proxdendNNW12 proxdendNNW13 proxdendNNE11 proxdendNNE12 proxdendNNE13 proxdendNE11 proxdendNE12 proxdendNE13 proxdendE11 proxdendE12 proxdendE13 proxdendSE11 proxdendSE12 proxdendSE13 proxdendSSE11 proxdendSSE12 proxdendSSE13 proxdendSSW11 proxdendSSW12 proxdendSSW13 proxdendSW11 proxdendSW12 proxdendSW13 proxdendW11 proxdendW12 proxdendW13 proxdendNW11 proxdendNW12 proxdendNW13"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P6RScnet/P6RSc[]/soma/spk13  \
	      /TCRnet/TCR[]/{s}/Ex_ch20P6RSNMDA@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeprobscale}*{P6RSc_TCR_prob}}

end

// assigning delays using the volumedelay function

/* 
 * Usage :
 * volumedelay path 
 * [-fixed delay]
 * [-radial propagation_velocity] 
 * [-uniform range]   (not used here)
 * [-gaussian sd max] (not used here)
 * [-exp mid max]     (not used here)
 * [-absoluterandom]  (not used here)
 */

barrierall //ayu
rvolumedelay /P6RScnet/P6RSc[]/soma/spk13 -fixed  {P6RSc_TCR_axdelayCV} -add

// P6RSc - TCR AMPA

str s

//Load synapse location array

str locations = "proxdendNNW31 proxdendNNW32 proxdendNNW33 proxdendNNE31 proxdendNNE32 proxdendNNE33 proxdendNE31 proxdendNE32 proxdendNE33 proxdendE31 proxdendE32 proxdendE33 proxdendSE31 proxdendSE32 proxdendSE33 proxdendSSE31 proxdendSSE32 proxdendSSE33 proxdendSSW31 proxdendSSW32 proxdendSSW33 proxdendSW31 proxdendSW32 proxdendSW33 proxdendW31 proxdendW32 proxdendW33 proxdendNW31 proxdendNW32 proxdendNW33 proxdendNNW21 proxdendNNW22 proxdendNNW23 proxdendNNE21 proxdendNNE22 proxdendNNE23 proxdendNE21 proxdendNE22 proxdendNE23 proxdendE21 proxdendE22 proxdendE23 proxdendSE21 proxdendSE22 proxdendSE23 proxdendSSE21 proxdendSSE22 proxdendSSE23 proxdendSSW21 proxdendSSW22 proxdendSSW23 proxdendSW21 proxdendSW22 proxdendSW23 proxdendW21 proxdendW22 proxdendW23 proxdendNW21 proxdendNW22 proxdendNW23 proxdendNNW11 proxdendNNW12 proxdendNNW13 proxdendNNE11 proxdendNNE12 proxdendNNE13 proxdendNE11 proxdendNE12 proxdendNE13 proxdendE11 proxdendE12 proxdendE13 proxdendSE11 proxdendSE12 proxdendSE13 proxdendSSE11 proxdendSSE12 proxdendSSE13 proxdendSSW11 proxdendSSW12 proxdendSSW13 proxdendSW11 proxdendSW12 proxdendSW13 proxdendW11 proxdendW12 proxdendW13 proxdendNW11 proxdendNW12 proxdendNW13"

foreach s ({arglist {locations}})

    barrierall //ayu
    syndelay    /TCRnet/TCR[]/{s}/Ex_ch20P6RSAMPA {P6RSc_TCR_syndelay} -add

end

// P6RSc - TCR NMDA

str s

//Load synapse location array

str locations = "proxdendNNW31 proxdendNNW32 proxdendNNW33 proxdendNNE31 proxdendNNE32 proxdendNNE33 proxdendNE31 proxdendNE32 proxdendNE33 proxdendE31 proxdendE32 proxdendE33 proxdendSE31 proxdendSE32 proxdendSE33 proxdendSSE31 proxdendSSE32 proxdendSSE33 proxdendSSW31 proxdendSSW32 proxdendSSW33 proxdendSW31 proxdendSW32 proxdendSW33 proxdendW31 proxdendW32 proxdendW33 proxdendNW31 proxdendNW32 proxdendNW33 proxdendNNW21 proxdendNNW22 proxdendNNW23 proxdendNNE21 proxdendNNE22 proxdendNNE23 proxdendNE21 proxdendNE22 proxdendNE23 proxdendE21 proxdendE22 proxdendE23 proxdendSE21 proxdendSE22 proxdendSE23 proxdendSSE21 proxdendSSE22 proxdendSSE23 proxdendSSW21 proxdendSSW22 proxdendSSW23 proxdendSW21 proxdendSW22 proxdendSW23 proxdendW21 proxdendW22 proxdendW23 proxdendNW21 proxdendNW22 proxdendNW23 proxdendNNW11 proxdendNNW12 proxdendNNW13 proxdendNNE11 proxdendNNE12 proxdendNNE13 proxdendNE11 proxdendNE12 proxdendNE13 proxdendE11 proxdendE12 proxdendE13 proxdendSE11 proxdendSE12 proxdendSE13 proxdendSSE11 proxdendSSE12 proxdendSSE13 proxdendSSW11 proxdendSSW12 proxdendSSW13 proxdendSW11 proxdendSW12 proxdendSW13 proxdendW11 proxdendW12 proxdendW13 proxdendNW11 proxdendNW12 proxdendNW13"

foreach s ({arglist {locations}})

    barrierall //ayu
    syndelay    /TCRnet/TCR[]/{s}/Ex_ch20P6RSNMDA {P6RSc_TCR_syndelay} -add

end

// assigning weights using the volumeweight function

/* 
 * Usage :
 *  volumeweight sourcepath 
 *          [-fixed weight]
 *          [-decay decay_rate max_weight min_weight]
 *          [-uniform range] 
 *          [-gaussian sd max] 
 *          [-exponential mid max]
 *          [-absoluterandom]
 */

barrierall //ayu
rvolumeweight /P6RScnet/P6RSc[]/soma/spk13 -decay {P6RSdecayrate} {P6RSmaxwgt} {P6RSminwgt}
//volumeweight /P6RSanet/P6RSa[]/soma/spk11 -fixed 0.50



