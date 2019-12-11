// P6RSacell3D.p

//	Format of file :
// x,y,z,dia are in microns, all other units are SI (Meter Kilogram Sec Amp)
// In polar mode 'r' is in microns, theta and phi in degrees 
// Control line options start with a '*'
// The format for each compartment parameter line is :
//name	parent	r	theta	phi	d	ch	dens ...
//in polar mode, and in cartesian mode :
//name	parent	x	y	z	d	ch	dens ...
// For channels, "dens" =  maximum conductance per unit area of compartment
// For spike elements, "dens" is the spike threshold
//		Coordinate mode
*relative
*cartesian
*asymmetric

//		Specifying constants
*set_compt_param	RM	5.0   //0.33333
*set_compt_param	RA	2.50  //0.3
*set_compt_param	CM	0.009 //0.01
*set_compt_param     EREST_ACT	-0.070 // -0.07
*set_compt_param        ELEAK   -0.068 // -0.068


//SOMA *************************************************************   
// For the soma, use the leakage potential (-0.07 + 0.0106) for Em
//*set_compt_param     ELEAK	-0.0594
// Actually, after Traub et al. J Neurophys 2003;89:909-921, will maintain
soma	none	0	0	15	16	Ca_s11	-55.47e12	NaF11	2000	NaP11	0.8	KDR11	1700	KA11	1225	K211	1.0	KM11	42	CaL11	1.0	CaH11	2.0	KCs11	150	AR11	2.5	KAHPs11	2.0

//APICAL DENDRITE COMPARTMENTS ***************************************
// apdend1 Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend1	soma	0	0	50	8	Ca_d11	-16.64e12	NaF11	1500	NaP11	0.6	KDR11	1200	KA11	1225	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	150	AR11	2.5	KAHPd11	2.0
                             
// apdend2 Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend2	apdend1	0	0	50	7.560	Ca_d11	-17.61e12	NaF11	750	NaP11	0.3	KDR11	750	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	150	AR11	2.5	KAHPd11	2.0


// apdend3 Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend3	apdend2	0	0	50	7.120	Ca_d11	-18.70e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0


// apdend4 Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend4	apdend3	0	0	50	6.680	Ca_d11	-20.02e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// apdend5 Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend5	apdend4	0	0	50	6.240	Ca_d11	-21.43e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// apdend6 Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend6	apdend5	0	0	50	5.800	Ca_d11	-23.06e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// apdend7 Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend7	apdend6	0	0	50	5.360	Ca_d11	-24.95e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// apdend8 Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend8	apdend7	0	0	50	4.920	Ca_d11	-27.18e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// apdend9 Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend9	apdend8	0	0	50	4.480	Ca_d11	-29.85e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// apdend10 Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apdend10	apdend9	0	0	40	4.000	Ca_d11	-33.43e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

//APICAL OBLIQUE DENDRITE COMPARTMENTS ***************************************

// apobdistRa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobdistRa	apdend3	42.4	42.4	0	1.0	Ca_d11	-111.4e12	NaF11	750	NaP11	0.3	KDR11	750	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	150	AR11	2.5	KAHPd11	2.0

// apobdistRb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobdistRb	apobdistRa	42.4	42.4	0	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// apobdistRc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobdistRc	apobdistRb	42.4	42.4	0	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// apobdistLa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobdistLa	apdend3	-42.4	-42.4	0	1.0	Ca_d11	-111.4e12	NaF11	750	NaP11	0.3	KDR11	750	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	150	AR11	2.5	KAHPd11	2.0

// apobdistLb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobdistLb	apobdistLa	-42.4	-42.4	0	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// apobdistLc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobdistLc	apobdistLb	-42.4	-42.4	0	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// apobmidRa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobmidRa	apdend2	42.4	-42.4	0	1.0	Ca_d11	-111.4e12	NaF11	750	NaP11	0.3	KDR11	750	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	150	AR11	2.5	KAHPd11	2.0

// apobmidRb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobmidRb	apobmidRa	42.4	-42.4	0	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// apobmidRc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobmidRc	apobmidRb	42.4	-42.4	0	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// apobmidLa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobmidLa	apdend2	-42.4	42.4	0	1.0	Ca_d11	-111.4e12	NaF11	750	NaP11	0.3	KDR11	750	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	150	AR11	2.5	KAHPd11	2.0

// apobmidLb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobmidLb	apobmidLa	-42.4	42.4	0	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// apobmidLc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobmidLc	apobmidLb	-42.4	42.4	0	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// apobproxRa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobproxRa	apdend1	42.4	42.4	0	1.0	Ca_d11	-111.4e12	NaF11	750	NaP11	0.3	KDR11	750	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	150	AR11	2.5	KAHPd11	2.0

// apobproxRb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobproxRb	apobproxRa	42.4	42.4	0	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// apobproxRc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobproxRc	apobproxRb	42.4	42.4	0	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// apobproxLa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobproxLa	apdend1	-42.4	-42.4	0	1.0	Ca_d11	-111.4e12	NaF11	750	NaP11	0.3	KDR11	750	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	150	AR11	2.5	KAHPd11	2.0

// apobproxLb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobproxLb	apobproxLa	-42.4	-42.4	0	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// apobproxLc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
apobproxLc	apobproxLb	-42.4	-42.4	0	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

//BASAL DENDRITE COMPARTMENTS ************************************************
// basalLsupera Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalLsupera	soma	-26.8	-46.4	-27.2	1.0	Ca_d11	-111.4e12	NaF11	750	NaP11	0.3	KDR11	750	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	150	AR11	2.5	KAHPd11	2.0

// basalLsuperb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalLsuperb	basalLsupera	-26.8	-46.4	-27.2	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// basalLsuperc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalLsuperc	basalLsuperb	-26.8	-46.4	-27.2	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// basalLmida Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalLmida	soma	-19.3	33.4	-46.0	1.0	Ca_d11	-111.4e12	NaF11	750	NaP11	0.3	KDR11	750	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	150	AR11	2.5	KAHPd11	2.0

// basalLmidb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalLmidb	basalLmida	-19.3	33.4	-46.0	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// basalLmidc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalLmidc	basalLmidb	-19.3	33.4	-46.0	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// basalRsupera Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalRsupera	soma	26.8	46.4	-27.2	1.0	Ca_d11	-111.4e12	NaF11	750	NaP11	0.3	KDR11	750	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	150	AR11	2.5	KAHPd11	2.0

// basalRsuperb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalRsuperb	basalRsupera	26.8	46.4	-27.2	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// basalRsuperc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalRsuperc	basalRsuperb	26.8	46.4	-27.2	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// basalRmida Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalRmida	soma	19.3	-33.4	-46.0	1.0	Ca_d11	-111.4e12	NaF11	750	NaP11	0.3	KDR11	750	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	150	AR11	2.5	KAHPd11	2.0

// basalRmidb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalRmidb	basalRmida	19.3	-33.4	-46.0	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// basalRmidc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basalRmidc	basalRmidb	19.3	-33.4	-46.0	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// basaldeepa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basaldeepa	soma	0	0	-60.0	1.0	Ca_d11	-111.4e12	NaF11	750	NaP11	0.3	KDR11	750	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	150	AR11	2.5	KAHPd11	2.0

// basaldeepb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basaldeepb	basaldeepa	0	0	-60.0	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

// basaldeepc Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
basaldeepc	basaldeepb	0	0	-60.0	1.0	Ca_d11	-111.4e12	NaF11	50	NaP11	0.02	KDR11	0	KA11	136	K211	1	KM11	42	CaL11	1	CaH11	2	KCd11	0	AR11	2.5	KAHPd11	2.0

//		Specifying constants for axonal compartment RMCM=0.0024 (0.0009)
*set_compt_param	RM	0.01   //(0.1)
*set_compt_param	RA	1.00   //(1.00)
*set_compt_param	CM	0.009  //(0.009)(0.024)
*set_compt_param     EREST_ACT	-0.07
*set_compt_param     ELEAK	-0.07

//AXONAL COMPARTMENTS ***************************************
// axona Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axona	soma	0	0	-25	1.8	NaF11	4500	KDR11	4500	KA11	40.00	K211	1

// axonb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonb	axona	0	0	-50	1.4	NaF11	4500	KDR11	4500	KA11	40.00	K211	1

// axonLa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonLa	axonb	-8.7	0	-49.2	1.2	NaF11	4500	KDR11	4500	KA11	40.00	K211	1

// axonLb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonLb	axonLa	-8.7	0	-49.2	1.0	NaF11	4500	KDR11	4500	KA11	40.00	K211	1

// axonRa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonRa	axonb	8.7	0	-49.2	1.2	NaF11	4500	KDR11	4500	KA11	40.00	K211	1

// axonRb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonRb	axonRa	8.7	0	-49.2	1.0	NaF11	4500	KDR11	4500	KA11	4.00	K211	1
