// genesis

// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

float destlim = {nRT_nRT_destlim}

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


//nRT - nRT GABAa

str s

//Load synapse location array

str locations = "distdendNlonga distdendNlongb distdendNlongc distdendNlongd distdendNlonge distdendNlongf distdendNlongg distdendNmida distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElonga distdendElongb distdendElongc distdendElongd distdendElonge distdendElongf distdendElongg distdendEmida distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlonga distdendSlongb distdendSlongc distdendSlongd distdendSlonge distdendSlongf distdendSlongg distdendSmida distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlonga distdendWlongb distdendWlongc distdendWlongd distdendWlonge distdendWlongf distdendWlongg distdendWmida distdendWmidb distdendWmidc distdendWshorta distdendWshortb"


foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /nRTnet/nRT[]/soma/spk21  \
	      /nRTnet/nRT[]/{s}/Inh_ch21nRTGABAa@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1  \
	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeprobscale}*{nRT_nRT_prob}}

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
rvolumedelay /nRTnet/nRT[]/soma/spk21 -radial  {nRT_nRT_axdelayCV} -add

//nRT - nRT GABAa

str s

//Load synapse location array

str locations = "distdendNlonga distdendNlongb distdendNlongc distdendNlongd distdendNlonge distdendNlongf distdendNlongg distdendNmida distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElonga distdendElongb distdendElongc distdendElongd distdendElonge distdendElongf distdendElongg distdendEmida distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlonga distdendSlongb distdendSlongc distdendSlongd distdendSlonge distdendSlongf distdendSlongg distdendSmida distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlonga distdendWlongb distdendWlongc distdendWlongd distdendWlonge distdendWlongf distdendWlongg distdendWmida distdendWmidb distdendWmidc distdendWshorta distdendWshortb"


foreach s ({arglist {locations}})

    barrierall //ayu
    syndelay    /nRTnet/nRT[]/{s}/Inh_ch21nRTGABAa {nRT_nRT_syndelay} -add

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
rvolumeweight /nRTnet/nRT[]/soma/spk21 -decay {nRTdecayrate} {nRTmaxwgt} {nRTminwgt}




