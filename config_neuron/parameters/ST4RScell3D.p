// ST4RScell3D.p cell.p - Cell parameter file used in TraubFS_B

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
   *set_compt_param     EREST_ACT	-0.0700   //
   *set_compt_param     ELEAK           -0.0710   // -0.0710


//SOMA *************************************************************   
// For the soma, use the leakage potential (-0.07 + 0.0106) for Em
//*set_compt_param     ELEAK	-0.0594
// Actually, after Cunningham et al. PNAS 2004;101:7152-7157, will maintain
// leakage potential at ELEAK   -0.07
soma	none	0	0	20	15.0	Ca_s17	-44.38e12	NaF17	2000	NaP17	0.8	KDR17	1700	KA17	1225	K217	1.0	CaH17	2.0	KCs17	150	KM17	42	KAHPs17	2.0	AR17	2.5

//*set_compt_param        ELEAK   -0.075
*set_compt_param	RM	2.50  //0.33333 (2.50)
*set_compt_param	RA	2.00  //0.3 (2.00)
*set_compt_param	CM	0.01  //0.01 (0.01)

//PROXIMAL DENDRITE COMPARTMENTS ***************************************

// proxdendN   Cunningham et al., PNAS  2004;101:7152-7157
proxdendN	soma	0	0	40	2.12	Ca_d17	-78.50e12	NaF17	1500	NaP17	0.6	KDR17	1000	KA17	1225	K217	1	CaH17	2	KCd17	150	KM17	42	KAHPd17	2.0	AR17	2.5

// proxdendE   Cunningham et al., PNAS  2004;101:7152-7157
proxdendE	soma	40	0	0	2.12	Ca_d17	-78.50e12	NaF17	1500	NaP17	0.6	KDR17	1000	KA17	1225	K217	1	CaH17	2	KCd17	150	KM17	42	KAHPd17	2.0	AR17	2.5

// proxdendS   Cunningham et al., PNAS  2004;101:7152-7157
proxdendS	soma	0	0	-40	2.12	Ca_d17	-78.50e12	NaF17	1500	NaP17	0.6	KDR17	1000	KA17	1225	K217	1	CaH17	2	KCd17	150	KM17	42	KAHPd17	2.0	AR17	2.5

// proxdendW   Cunningham et al., PNAS  2004;101:7152-7157
proxdendW	soma	-40	0	0	2.12	Ca_d17	-78.50e12	NaF17	1500	NaP17	0.6	KDR17	1000	KA17	1225	K217	1	CaH17	2	KCd17	150	KM17	42	KAHPd17	2.0	AR17	2.5


*set_compt_param	RM	2.50  //0.33333 (2.50)
*set_compt_param	RA	2.00  //0.3 (2.00)
*set_compt_param	CM	0.01  //0.01 (0.01)
//*set_compt_param     ELEAK	-0.075


//North DISTAL DENDRITE COMPARTMENTS ***************************************
// distdendNlonga   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlonga	proxdendN	-6.84	11.8	37.6	1.34	Ca_d17	-124.18e12	NaF17	750	NaP17	0.3	KDR17	750	KA17	136	K217	1	CaH17	2	KCd17	150	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendNlongb   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongb	distdendNlonga	-6.84	11.8	37.6	1.34	Ca_d17	-124.18e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendNlongc   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongc	distdendNlongb	-6.84	11.8	37.6	1.34	Ca_d17	-124.18e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendNlongd   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongd	distdendNlongc	-6.84	11.8	37.6	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendNlonge   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlonge	distdendNlongd	-6.84	11.8	37.6	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendNlongf   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongf	distdendNlonge	-6.84	11.8	37.6	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendNlongg   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongg	distdendNlongf	-6.84	11.8	37.6	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendNmida   Cunningham et al., PNAS  2004;101:7152-7157
distdendNmida	proxdendN	6.84	-11.8	37.6	1.34	Ca_d17	-124.18e12	NaF17	750	NaP17	0.3	KDR17	750	KA17	136	K217	1	CaH17	2	KCd17	150	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendNmidb   Cunningham et al., PNAS  2004;101:7152-7157
distdendNmidb	distdendNmida	6.84	-11.8	37.6	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendNmidc   Cunningham et al., PNAS  2004;101:7152-7157
distdendNmidc	distdendNmidb	6.84	-11.8	37.6	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendNshorta   Cunningham et al., PNAS  2004;101:7152-7157
distdendNshorta	distdendNlonga	6.84	-11.8	37.6	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendNshortb   Cunningham et al., PNAS  2004;101:7152-7157
distdendNshortb	distdendNshorta	6.84	-11.8	37.6	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

//East DISTAL DENDRITE COMPARTMENTS ***************************************
// distdendElonga   Cunningham et al., PNAS  2004;101:7152-7157
distdendElonga	proxdendE	32.5	18.8	1368	1.34	Ca_d17	-124.18e12	NaF17	750	NaP17	0.3	KDR17	750	KA17	136	K217	1	CaH17	2	KCd17	150	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendElongb   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongb	distdendElonga	32.5	18.8	1368	1.34	Ca_d17	-124.18e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendElongc   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongc	distdendElongb	32.5	18.8	1368	1.34	Ca_d17	-124.18e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendElongd   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongd	distdendElongc	32.5	18.8	1368	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendElonge   Cunningham et al., PNAS  2004;101:7152-7157
distdendElonge	distdendElongd	32.5	18.8	1368	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendElongf   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongf	distdendElonge	32.5	18.8	1368	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendElongg   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongg	distdendElongf	32.5	18.8	1368	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendEmida   Cunningham et al., PNAS  2004;101:7152-7157
distdendEmida	proxdendE	32.5	18.8	-1368	1.34	Ca_d17	-124.18e12	NaF17	750	NaP17	0.3	KDR17	750	KA17	136	K217	1	CaH17	2	KCd17	150	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendEmidb   Cunningham et al., PNAS  2004;101:7152-7157
distdendEmidb	distdendEmida	32.5	18.8	-1368	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendEmidc   Cunningham et al., PNAS  2004;101:7152-7157
distdendEmidc	distdendEmidb	32.5	18.8	-1368	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendEshorta   Cunningham et al., PNAS  2004;101:7152-7157
distdendEshorta	distdendElonga	32.5	18.8	-1368	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendEshortb   Cunningham et al., PNAS  2004;101:7152-7157
distdendEshortb	distdendEshorta	32.5	18.8	-1368	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

//South DISTAL DENDRITE COMPARTMENTS ***************************************
// distdendSlonga   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlonga	proxdendS	6.84	-11.8	-37.6	1.34	Ca_d17	-124.18e12	NaF17	750	NaP17	0.3	KDR17	750	KA17	136	K217	1	CaH17	2	KCd17	150	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendSlongb   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongb	distdendSlonga	6.84	-11.8	-37.6	1.34	Ca_d17	-124.18e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendSlongc   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongc	distdendSlongb	6.84	-11.8	-37.6	1.34	Ca_d17	-124.18e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendSlongd   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongd	distdendSlongc	6.84	-11.8	-37.6	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendSlonge   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlonge	distdendSlongd	6.84	-11.8	-37.6	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendSlongf   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongf	distdendSlonge	6.84	-11.8	-37.6	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendSlongg   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongg	distdendSlongf	6.84	-11.8	-37.6	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendSmida   Cunningham et al., PNAS  2004;101:7152-7157
distdendSmida	proxdendS	-6.84	11.8	-37.6	1.34	Ca_d17	-124.18e12	NaF17	750	NaP17	0.3	KDR17	750	KA17	136	K217	1	CaH17	2	KCd17	150	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendSmidb   Cunningham et al., PNAS  2004;101:7152-7157
distdendSmidb	distdendSmida	-6.84	11.8	-37.6	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendSmidc   Cunningham et al., PNAS  2004;101:7152-7157
distdendSmidc	distdendSmidb	-6.84	11.8	-37.6	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendSshorta   Cunningham et al., PNAS  2004;101:7152-7157
distdendSshorta	distdendSlonga	-6.84	11.8	-37.6	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendSshortb   Cunningham et al., PNAS  2004;101:7152-7157
distdendSshortb	distdendSshorta	-6.84	11.8	-37.6	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

//West DISTAL DENDRITE COMPARTMENTS ***************************************
// distdendWlonga   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlonga	proxdendW	-32.5	-18.8	1368	1.34	Ca_d17	-124.18e12	NaF17	750	NaP17	0.3	KDR17	750	KA17	136	K217	1	CaH17	2	KCd17	150	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendWlongb   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongb	distdendWlonga	-32.5	-18.8	1368	1.34	Ca_d17	-124.18e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendWlongc   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongc	distdendWlongb	-32.5	-18.8	1368	1.34	Ca_d17	-124.18e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendWlongd   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongd	distdendWlongc	-32.5	-18.8	1368	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendWlonge   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlonge	distdendWlongd	-32.5	-18.8	1368	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendWlongf   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongf	distdendWlonge	-32.5	-18.8	1368	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendWlongg   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongg	distdendWlongf	-32.5	-18.8	1368	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendWmida   Cunningham et al., PNAS  2004;101:7152-7157
distdendWmida	proxdendW	-32.5	-18.8	-1368	1.34	Ca_d17	-124.18e12	NaF17	750	NaP17	0.3	KDR17	750	KA17	136	K217	1	CaH17	2	KCd17	150	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendWmidb   Cunningham et al., PNAS  2004;101:7152-7157
distdendWmidb	distdendWmida	-32.5	-18.8	-1368	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendWmidc   Cunningham et al., PNAS  2004;101:7152-7157
distdendWmidc	distdendWmidb	-32.5	-18.8	-1368	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendWshorta   Cunningham et al., PNAS  2004;101:7152-7157
distdendWshorta	distdendWlonga	-32.5	-18.8	-1368	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

// distdendWshortb   Cunningham et al., PNAS  2004;101:7152-7157
distdendWshortb	distdendWshorta	-32.5	-18.8	-1368	0.84	Ca_d17	-198.10e12	NaF17	50	NaP17	0.02	KDR17	0	KA17	136	K217	1	CaH17	2	KCd17	0	KM17	42	KAHPd17	2.0	AR17	2.5

//		Specifying constants for axonal compartment

   *set_compt_param	RM	0.01  // (0.1)
   *set_compt_param	RA	1.0   // (1.0)
   *set_compt_param	CM	0.01  // (0.01) RC = 0.001
   *set_compt_param     ELEAK	-0.08  //-0.07441
  
// axona Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axona	soma	0	0	-25	1.8	NaF17	4500	KDR17	4500	KA17	4.0	K217	1

// axonb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonb	axona	0	0	-50	1.4	NaF17	4500	KDR17	4500	KA17	4.0	K217	1

// axonLa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonLa	axonb	-8.7	0	-49.2	1.2	NaF17	4500	KDR17	4500	KA17	4.0	K217	1

// axonLb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonLb	axonLa	-8.7	0	-49.2	1.0	NaF17	4500	KDR17	4500	KA17	4.0	K217	1

// axonRa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonRa	axonb	8.7	0	-49.2	1.2	NaF17	4500	KDR17	4500	KA17	4.0	K217	1

// axonRb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonRb	axonRa	8.7	0	-49.2	1.0	NaF17	4500	KDR17	4500	KA17	4.0	K217	1
