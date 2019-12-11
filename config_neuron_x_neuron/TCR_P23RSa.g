// genesis

// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

float destlim = {TCR_P23RSa_destlim}

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


//TCR - P23RSa AMPA

str s

//Load synapse location array

str locations = "apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRRR apdend5bRRR apdend5cRRR apdend5aRR apdend5bRR apdend5cRR apdend5aRL apdend5bRL apdend5cRL apdend5aRLL apdend5bRLL apdend5cRLL"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /TCRnet/TCR[]/soma/spk20  \
	      /P23RSanet/P23RSa[]/{s}/Ex_ch1TCRAMPA@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1  \
	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeprobscale}*{TCR_P23RSa_prob}}

end

//TCR - P23RSa NMDA

str s

//Load synapse location array

str locations = "apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRRR apdend5bRRR apdend5cRRR apdend5aRR apdend5bRR apdend5cRR apdend5aRL apdend5bRL apdend5cRL apdend5aRLL apdend5bRLL apdend5cRLL"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /TCRnet/TCR[]/soma/spk20  \
	      /P23RSanet/P23RSa[]/{s}/Ex_ch1TCRNMDA@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1  \
	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeprobscale}*{TCR_P23RSa_prob}}

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
rvolumedelay /TCRnet/TCR[]/soma/spk20 -fixed  {TCR_P23RSa_axdelayCV} -add

//TCR - P23RSa NMDA

str s

//Load synapse location array

str locations = "apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRRR apdend5bRRR apdend5cRRR apdend5aRR apdend5bRR apdend5cRR apdend5aRL apdend5bRL apdend5cRL apdend5aRLL apdend5bRLL apdend5cRLL"

foreach s ({arglist {locations}})

    barrierall //ayu
    syndelay    /P23RSanet/P23RSa[]/{s}/Ex_ch1TCRAMPA {TCR_P23RSa_syndelay} -add

end

//TCR - P23RSa NMDA

str s

//Load synapse location array

str locations = "apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRRR apdend5bRRR apdend5cRRR apdend5aRR apdend5bRR apdend5cRR apdend5aRL apdend5bRL apdend5cRL apdend5aRLL apdend5bRLL apdend5cRLL"

foreach s ({arglist {locations}})

    barrierall //ayu
    syndelay    /P23RSanet/P23RSa[]/{s}/Ex_ch1TCRNMDA {TCR_P23RSa_syndelay} -add

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
rvolumeweight /TCRnet/TCR[]/soma/spk20 -decay {TCRdecayrate} {TCRmaxwgt} {TCRminwgt}




