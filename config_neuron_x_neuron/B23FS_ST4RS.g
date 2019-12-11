// genesis

// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

float destlim = {B23FS_ST4RS_destlim}

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


//B23FS - ST4RS GABAa

str s

//Load synapse location array

str locations = "soma proxdendN proxdendE proxdendS proxdendW"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /B23FSnet/B23FS[]/soma/spk5  \
	      /ST4RSnet/ST4RS[]/{s}/Inh_ch17B23FSGABAa@{regionnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{shortrangeprobscale}*{B23FS_ST4RS_prob}}

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
rvolumedelay /B23FSnet/B23FS[]/soma/spk5 -radial  {B23FS_ST4RS_axdelayCV} -add

// B23FS - ST4RS GABAa

str s

//Load synapse location array

str locations = "soma proxdendN proxdendE proxdendS proxdendW"

foreach s ({arglist {locations}})

    barrierall //ayu
    syndelay    /ST4RSnet/ST4RS[]/{s}/Inh_ch17B23FSGABAa {B23FS_ST4RS_syndelay} -add

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
rvolumeweight /B23FSnet/B23FS[]/soma/spk5 -decay {B23FSdecayrate} {B23FSmaxwgt} {B23FSminwgt}
//volumeweight /B23FSnet/B23FS[]/soma/spk5 -fixed 0.50


