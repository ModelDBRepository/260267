// genesis

// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

float destlim = {TCR_P6RSb_destlim}

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


//TCR - P6RSb AMPA

str s

//Load synapse location array

str locations = "apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /TCRnet/TCR[]/soma/spk20  \
	      /P6RSbnet/P6RSb[]/{s}/Ex_ch12TCRAMPA@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1  \
	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeprobscale}*{TCR_P6RSb_prob}}

end

//TCR - P6RSb NMDA

str s

//Load synapse location array

str locations = "apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /TCRnet/TCR[]/soma/spk20  \
	      /P6RSbnet/P6RSb[]/{s}/Ex_ch12TCRNMDA@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1  \
	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeprobscale}*{TCR_P6RSb_prob}}

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
rvolumedelay /TCRnet/TCR[]/soma/spk20 -fixed  {TCR_P6RSb_axdelayCV} -add

//TCR - P6RSb NMDA

str s

//Load synapse location array

str locations = "apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

    barrierall //ayu
    syndelay    /P6RSbnet/P6RSb[]/{s}/Ex_ch12TCRAMPA {TCR_P6RSb_syndelay} -add

end

//TCR - P6RSb NMDA

str s

//Load synapse location array

str locations = "apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

    barrierall //ayu
    syndelay    /P6RSbnet/P6RSb[]/{s}/Ex_ch12TCRNMDA {TCR_P6RSb_syndelay} -add

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




