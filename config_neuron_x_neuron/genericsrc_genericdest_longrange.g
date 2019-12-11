// genesis

// ayu: I clone this file by doing this:

// Setting the axonal propagation velocity
float CABLE_VEL = 1	// scale factor = 1/(cable velocity) sec/meter

//float destlim = {%SRC%_%DEST%_destlim}
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


//%SRC% - %DEST% AMPA
str s
//Load synapse location array
str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /%SRC%net/%SRC%[]/soma/spk%SRCNUM%longrange  \
	      /%DEST%net/%DEST%[]/{s}/Ex_ch%DESTNUM%%SHORTSRC%AMPA@{distantnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1   \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{longrangeprobscale}*{%SRC%_%DEST%_prob}}

end

//%SRC% - %DEST% NMDA
str s
//Load synapse location array
str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc"

foreach s ({arglist {locations}})

    barrierall //ayu
    rvolumeconnect /%SRC%net/%SRC%[]/soma/spk%SRCNUM%longrange  \
	      /%DEST%net/%DEST%[]/{s}/Ex_ch%DESTNUM%%SHORTSRC%NMDA@{distantnodes}	    \
	      -relative			    \
	      -sourcemask box -1 -1  -1  1  1  1    \
	      -destmask   box -{destlim} -{destlim}  -1  {destlim}  {destlim}  1   \
	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
          -probability {{longrangeprobscale}*{%SRC%_%DEST%_prob}}

end

// For inhibitory long range connections
////%SRC% - %DEST% GABAa
//str s
////Load synapse location array
//str locations = "basalLsuperb basalLsuperc basalLmidsuperb basalLmidsuperc basalLmiddeepb basalLmiddeepc basalLdeepb basalLdeepc basalRsuperb basalRsuperc basalRmidsuperb basalRmidsuperc basalRmiddeepb basalRmiddeepc basalRdeepb basalRdeepc apdend3 apdend4aR apdend4bR apdend4aL apdend4bL apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR apobdistRb apobdistRc apobproxRb apobproxRc apobdistLb apobdistLc apobproxLb apobproxLc"
//
//foreach s ({arglist {locations}})
//
//    barrierall //ayu
//    rvolumeconnect /%SRC%net/%SRC%[]/soma/spk%SRCNUM%longrange  \
//	      /%DEST%net/%DEST%[]/{s}/Inh_ch%DESTNUM%%SHORTSRC%GABAa@{distantnodes}	    \
//	      -relative			    \
//	      -sourcemask box -1 -1  -1  1  1  1  \
//	      -destmask   box -{destlim} -{destlim}  -1 {destlim}  {destlim}  1   \
//	      -desthole   box -0.000001 -0.000001 -0.000001 0.000001 0.000001 0.000001 \
//          -probability {{longrangeprobscale}*{%SRC%_%DEST%_prob}}
//
//end



// assigning delays
barrierall //ayu
rvolumedelay /%SRC%net/%SRC%[]/soma/spk%SRCNUM%longrange -radial {{%SRC%_%DEST%_axdelayCV}*{longrangeCVscale}} -add

// assigning weights
float %SRC%decayrate = 0.1
float longrangeweight = {longrangeweightscale}*{{{%SHORTSRC%maxwgt}-{%SHORTSRC%minwgt}} * {exp {-1*{sqrt {{NX}^2*{SEPX}^2*{sqrtNnodesperregion}+{NY}^2*{SEPY}^2*{sqrtNnodesperregion}} }*%SRC%decayrate} } + {%SHORTSRC%minwgt}}
barrierall //ayu
rvolumeweight /%SRC%net/%SRC%[]/soma/spk%SRCNUM%longrange -fixed {longrangeweight}

