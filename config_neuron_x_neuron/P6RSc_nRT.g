// genesis

// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

float destlim = {P6RSc_nRT_destlim}

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


//P6RSc - nRT AMPA

str s

//Load synapse location array

str locations = "proxdendN distdendNlonga distdendNmida proxdendE distdendElonga distdendEmida proxdendS distdendSlonga distdendSmida proxdendW distdendWlonga distdendWmida"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P6RScnet/P6RSc[]/soma/spk13  \
	      /nRTnet/nRT[]/{s}/Ex_ch21P6RSAMPA@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeprobscale}*{P6RSc_nRT_prob}}

end

//P6RSc - nRT NMDA

str s

//Load synapse location array

str locations = "proxdendN distdendNlonga distdendNmida proxdendE distdendElonga distdendEmida proxdendS distdendSlonga distdendSmida proxdendW distdendWlonga distdendWmida"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /P6RScnet/P6RSc[]/soma/spk13  \
	      /nRTnet/nRT[]/{s}/Ex_ch21P6RSNMDA@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeprobscale}*{P6RSc_nRT_prob}}

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
rvolumedelay /P6RScnet/P6RSc[]/soma/spk13 -radial  {P6RSc_nRT_axdelayCV} -add

// P6RSc - nRT AMPA

str s

//Load synapse location array

str locations = "proxdendN distdendNlonga distdendNmida proxdendE distdendElonga distdendEmida proxdendS distdendSlonga distdendSmida proxdendW distdendWlonga distdendWmida"

foreach s ({arglist {locations}})

    barrierall //ayu
    syndelay    /nRTnet/nRT[]/{s}/Ex_ch21P6RSAMPA {P6RSc_nRT_syndelay} -add

end

// P6RSc - nRT NMDA

str s

//Load synapse location array

str locations = "proxdendN distdendNlonga distdendNmida proxdendE distdendElonga distdendEmida proxdendS distdendSlonga distdendSmida proxdendW distdendWlonga distdendWmida"

foreach s ({arglist {locations}})

    barrierall //ayu
    syndelay    /nRTnet/nRT[]/{s}/Ex_ch21P6RSNMDA {P6RSc_nRT_syndelay} -add

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



