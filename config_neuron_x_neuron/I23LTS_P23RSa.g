// genesis

// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

float destlim = {I23LTS_P23RSa_destlim}

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



//I23LTS - P23RSa GABAa

str s

//Load synapse location array

str locations = "basalLsuperb basalLsuperc basalLmidsuperb basalLmidsuperc basalLmiddeepb basalLmiddeepc basalLdeepb basalLdeepc basalRsuperb basalRsuperc basalRmidsuperb basalRmidsuperc basalRmiddeepb basalRmiddeepc basalRdeepb basalRdeepc apdend3 apdend4aR apdend4bR apdend4aL apdend4bL apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR apobdistRb apobdistRc apobproxRb apobproxRc apobdistLb apobdistLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /I23LTSnet/I23LTS[]/soma/spk18  \
	      /P23RSanet/P23RSa[]/{s}/Inh_ch1I23LTSGABAa@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1  \
	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeprobscale}*{I23LTS_P23RSa_prob}}

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
rvolumedelay /I23LTSnet/I23LTS[]/soma/spk18 -radial  {I23LTS_P23RSa_axdelayCV} -add

//I23LTS - P23RSa GABAa

str s

//Load synapse location array

str locations = "basalLsuperb basalLsuperc basalLmidsuperb basalLmidsuperc basalLmiddeepb basalLmiddeepc basalLdeepb basalLdeepc basalRsuperb basalRsuperc basalRmidsuperb basalRmidsuperc basalRmiddeepb basalRmiddeepc basalRdeepb basalRdeepc apdend3 apdend4aR apdend4bR apdend4aL apdend4bL apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR apobdistRb apobdistRc apobproxRb apobproxRc apobdistLb apobdistLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

    barrierall //ayu
    syndelay    /P23RSanet/P23RSa[]/{s}/Inh_ch1I23LTSGABAa {I23LTS_P23RSa_syndelay} -add

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
rvolumeweight /I23LTSnet/I23LTS[]/soma/spk18 -decay {I23LTSdecayrate} {I23LTSmaxwgt} {I23LTSminwgt}




