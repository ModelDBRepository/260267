// I23LTS3Dcell.p - Cell parameter file

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
   *set_compt_param	RM	2.50  //0.33333 (2.50)
   *set_compt_param	RA	2.00  //0.3 (2.00)
   *set_compt_param	CM	0.01  //0.01 (0.01)
   *set_compt_param     EREST_ACT	-0.0690   // -0.0690
   *set_compt_param     ELEAK           -0.0700   // -0.0700


//SOMA *************************************************************   
// For the soma, use the leakage potential (-0.07 + 0.0106) for Em
//*set_compt_param     ELEAK	-0.0594
// Actually, after Cunningham et al. PNAS 2004;101:7152-7157, will maintain
// leakage potential at ELEAK   -0.07
soma	none	0	0	20	15.0	Ca_s18	-44.38e12	NaF18	600	KDR18	1000	KAHPs18	1	KA18	10.01	K218	5	CaH18	1	KCs18	250	KM18	5	CaL18	0.5

*set_compt_param        ELEAK   -0.075
*set_compt_param	RM	2.50  //0.33333 (2.50)
*set_compt_param	RA	2.00  //0.3 (2.00)
*set_compt_param	CM	0.01  //0.01 (0.01)

//PROXIMAL DENDRITE COMPARTMENTS ***************************************

// proxdendN   Cunningham et al., PNAS  2004;101:7152-7157
proxdendN	soma	0	0	40	2.12	Ca_d18	-156.99e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5
                              
// proxdendE   Cunningham et al., PNAS  2004;101:7152-7157
proxdendE	soma	40	0	0	2.12	Ca_d18	-156.99e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// proxdendS   Cunningham et al., PNAS  2004;101:7152-7157
proxdendS	soma	0	0	-40	2.12	Ca_d18	-156.99e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// proxdendW   Cunningham et al., PNAS  2004;101:7152-7157
proxdendW	soma	-40	0	0	2.12	Ca_d18	-156.99e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

*set_compt_param	RM	2.50  //0.33333 (2.50)
*set_compt_param	RA	2.00  //0.3 (2.00)
*set_compt_param	CM	0.01  //0.01 (0.01)
*set_compt_param     ELEAK	-0.075


//North DISTAL DENDRITE COMPARTMENTS ***************************************
// distdendNlonga   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlonga	proxdendN	-6.84	11.8	37.6	1.34	Ca_d18	-248.37e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendNlongb   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongb	distdendNlonga	-6.84	11.8	37.6	1.34	Ca_d18	-248.37e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendNlongc   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongc	distdendNlongb	-6.84	11.8	37.6	1.34	Ca_d18	-248.37e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendNlongd   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongd	distdendNlongc	-6.84	11.8	37.6	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendNlonge   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlonge	distdendNlongd	-6.84	11.8	37.6	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendNlongf   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongf	distdendNlonge	-6.84	11.8	37.6	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendNlongg   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongg	distdendNlongf	-6.84	11.8	37.6	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendNmida   Cunningham et al., PNAS  2004;101:7152-7157
distdendNmida	proxdendN	6.84	-11.8	37.6	1.34	Ca_d18	-248.37e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendNmidb   Cunningham et al., PNAS  2004;101:7152-7157
distdendNmidb	distdendNmida	6.84	-11.8	37.6	0.84	Ca_d18	-396.21e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendNmidc   Cunningham et al., PNAS  2004;101:7152-7157
distdendNmidc	distdendNmidb	6.84	-11.8	37.6	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendNshorta   Cunningham et al., PNAS  2004;101:7152-7157
distdendNshorta	distdendNlonga	6.84	-11.8	37.6	0.84	Ca_d18	-396.21e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendNshortb   Cunningham et al., PNAS  2004;101:7152-7157
distdendNshortb	distdendNshorta	6.84	-11.8	37.6	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

//East DISTAL DENDRITE COMPARTMENTS ***************************************
// distdendElonga   Cunningham et al., PNAS  2004;101:7152-7157
distdendElonga	proxdendE	32.5	18.8	13.68	1.34	Ca_d18	-248.37e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendElongb   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongb	distdendElonga	32.5	18.8	13.68	1.34	Ca_d18	-248.37e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendElongc   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongc	distdendElongb	32.5	18.8	13.68	1.34	Ca_d18	-248.37e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendElongd   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongd	distdendElongc	32.5	18.8	13.68	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendElonge   Cunningham et al., PNAS  2004;101:7152-7157
distdendElonge	distdendElongd	32.5	18.8	13.68	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendElongf   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongf	distdendElonge	32.5	18.8	13.68	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendElongg   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongg	distdendElongf	32.5	18.8	13.68	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendEmida   Cunningham et al., PNAS  2004;101:7152-7157
distdendEmida	proxdendE	32.5	18.8	-13.68	1.34	Ca_d18	-248.37e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendEmidb   Cunningham et al., PNAS  2004;101:7152-7157
distdendEmidb	distdendEmida	32.5	18.8	-13.68	0.84	Ca_d18	-396.21e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendEmidc   Cunningham et al., PNAS  2004;101:7152-7157
distdendEmidc	distdendEmidb	32.5	18.8	-13.68	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendEshorta   Cunningham et al., PNAS  2004;101:7152-7157
distdendEshorta	distdendElonga	32.5	18.8	-13.68	0.84	Ca_d18	-396.21e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendEshortb   Cunningham et al., PNAS  2004;101:7152-7157
distdendEshortb	distdendEshorta	32.5	18.8	-13.68	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

//South DISTAL DENDRITE COMPARTMENTS ***************************************
// distdendSlonga   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlonga	proxdendS	6.84	-11.8	-37.6	1.34	Ca_d18	-248.37e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendSlongb   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongb	distdendSlonga	6.84	-11.8	-37.6	1.34	Ca_d18	-248.37e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendSlongc   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongc	distdendSlongb	6.84	-11.8	-37.6	1.34	Ca_d18	-248.37e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendSlongd   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongd	distdendSlongc	6.84	-11.8	-37.6	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendSlonge   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlonge	distdendSlongd	6.84	-11.8	-37.6	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendSlongf   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongf	distdendSlonge	6.84	-11.8	-37.6	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendSlongg   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongg	distdendSlongf	6.84	-11.8	-37.6	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendSmida   Cunningham et al., PNAS  2004;101:7152-7157
distdendSmida	proxdendS	-6.84	11.8	-37.6	1.34	Ca_d18	-248.37e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendSmidb   Cunningham et al., PNAS  2004;101:7152-7157
distdendSmidb	distdendSmida	-6.84	11.8	-37.6	0.84	Ca_d18	-396.21e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendSmidc   Cunningham et al., PNAS  2004;101:7152-7157
distdendSmidc	distdendSmidb	-6.84	11.8	-37.6	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendSshorta   Cunningham et al., PNAS  2004;101:7152-7157
distdendSshorta	distdendSlonga	-6.84	11.8	-37.6	0.84	Ca_d18	-396.21e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendSshortb   Cunningham et al., PNAS  2004;101:7152-7157
distdendSshortb	distdendSshorta	-6.84	11.8	-37.6	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

//West DISTAL DENDRITE COMPARTMENTS ***************************************
// distdendWlonga   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlonga	proxdendW	-32.5	-18.8	13.68	1.34	Ca_d18	-248.37e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendWlongb   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongb	distdendWlonga	-32.5	-18.8	13.68	1.34	Ca_d18	-248.37e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendWlongc   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongc	distdendWlongb	-32.5	-18.8	13.68	1.34	Ca_d18	-248.37e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendWlongd   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongd	distdendWlongc	-32.5	-18.8	13.68	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendWlonge   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlonge	distdendWlongd	-32.5	-18.8	13.68	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendWlongf   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongf	distdendWlonge	-32.5	-18.8	13.68	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20


// distdendWlongg   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongg	distdendWlongf	-32.5	-18.8	13.68	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendWmida   Cunningham et al., PNAS  2004;101:7152-7157
distdendWmida	proxdendW	-32.5	-18.8	-13.68	1.34	Ca_d18	-248.37e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendWmidb   Cunningham et al., PNAS  2004;101:7152-7157
distdendWmidb	distdendWmida	-32.5	-18.8	-13.68	0.84	Ca_d18	-396.21e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendWmidc   Cunningham et al., PNAS  2004;101:7152-7157
distdendWmidc	distdendWmidb	-32.5	-18.8	-13.68	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

// distdendWshorta   Cunningham et al., PNAS  2004;101:7152-7157
distdendWshorta	distdendWlonga	-32.5	-18.8	-13.68	0.84	Ca_d18	-396.21e12	NaF18	600	KDR18	1000	KAHPd18	1	KA18	10.01	K218	5	CaH18	1	KCd18	250	KM18	5	CaL18	0.5

// distdendWshortb   Cunningham et al., PNAS  2004;101:7152-7157
distdendWshortb	distdendWshorta	-32.5	-18.8	-13.68	0.84	Ca_d18	-396.21e12	NaF18	100	KDR18	100	KAHPd18	1	KA18	10.01	K218	5	CaH18	2	KCd18	250	KM18	5	CaL18	20

//		Specifying constants for axonal compartment

   *set_compt_param	RM	0.02   // (0.1)
   *set_compt_param	RA	1.0    // (1.0)
   *set_compt_param	CM	0.01   // (0.01) RC = 0.001
   *set_compt_param     ELEAK	-0.074 //-0.07441
  
// axona Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axona	soma	0	0	-25	1.8	NaF18	4000	KDR18	4000	KA18	10.01	K218	5

// axonb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonb	axona	0	0	-50	1.4	NaF18	4000	KDR18	4000	KA18	10.01	K218	5

// axonLa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonLa	axonb	-8.7	0	-49.2	1.2	NaF18	4000	KDR18	4000	KA18	10.01	K218	5

// axonLb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonLb	axonLa	-8.7	0	-49.2	1.0	NaF18	4000	KDR18	4000	KA18	10.01	K218	5

// axonRa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonRa	axonb	8.7	0	-49.2	1.2	NaF18	4000	KDR18	4000	KA18	10.01	K218	5

// axonRb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonRb	axonRa	8.7	0	-49.2	1.0	NaF18	4000	KDR18	4000	KA18	10.01	K218	5
