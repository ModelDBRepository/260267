// nRTcell.p - Cell parameter file

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
   *set_compt_param	RM	2.50  // (2.50)
   *set_compt_param	RA	2.00  // (2.00)
   *set_compt_param	CM	0.005  // (0.01)
   *set_compt_param     EREST_ACT	-0.090   // -0.090
   *set_compt_param     ELEAK           -0.0107   // -0.107


//SOMA *************************************************************   
// For the soma, use the leakage potential (-0.07 + 0.0106) for Em
//*set_compt_param     ELEAK	-0.0594
// Actually, after Cunningham et al. PNAS 2004;101:7152-7157, will maintain
// leakage potential at ELEAK   -0.07
soma	none	0	0	20	15.0	Ca_s21	-44.38e12	NaF21	600	NaP21	6	KDR21	600	KA21	5.00	KM21	5	K221	5	KAHPs21	1	CaL21	0.5	AR21	0.25\
                              CaH21         5       KCs21           100

//*set_compt_param        ELEAK   -0.075
*set_compt_param	RM	2.50  // (2.50)
*set_compt_param	RA	4.00  // (2.00)
*set_compt_param	CM	0.005  // (0.01)

//PROXIMAL DENDRITE COMPARTMENTS ***************************************

// proxdendN   Cunningham et al., PNAS  2004;101:7152-7157
proxdendN	soma	0	0	75	2.12	Ca_d21	-83.73e12	NaF21	600	NaP21	6	KDR21	600	KA21	5.00	KM21	5	K221	5	KAHPd21	1	CaL21	0.5	AR21	0.25\
                              CaH21         5       KCd21           100

// proxdendE   Cunningham et al., PNAS  2004;101:7152-7157
proxdendE	soma	75	0	-10	2.12	Ca_d21	-83.73e12	NaF21	600	NaP21	6	KDR21	600	KA21	5.00	KM21	5	K221	5	KAHPd21	1	CaL21	0.5	AR21	0.25\
                              CaH21         5       KCd21           100

// proxdendS   Cunningham et al., PNAS  2004;101:7152-7157
proxdendS	soma	0	0	-75	2.12	Ca_d21	-83.73e12	NaF21	600	NaP21	6	KDR21	600	KA21	5.00	KM21	5	K221	5	KAHPd21	1	CaL21	0.5	AR21	0.25\
                              CaH21         5       KCd21           100

// proxdendW   Cunningham et al., PNAS  2004;101:7152-7157
proxdendW	soma	-75	0	-10	2.12	Ca_d21	-83.73e12	NaF21	600	NaP21	6	KDR21	600	KA21	5.00	KM21	5	K221	5	KAHPd21	1	CaL21	0.5	AR21	0.25\
                              CaH21         5       KCd21           100

*set_compt_param	RM	2.50  // (2.50)
*set_compt_param	RA	4.00  // (2.00)
*set_compt_param	CM	0.01  // (0.01)
//*set_compt_param     ELEAK -0.100


//North DISTAL DENDRITE COMPARTMENTS ***************************************
// distdendNlonga   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlonga	proxdendN	-25.6	0	70.5	1.34	Ca_d21	-66.23e12	NaF21	600	NaP21	6	KDR21	600	KA21	5.00	KM21	5	K221	5	KAHPd21	1	CaL21	0.5	AR21	0.25\
                                                 CaH21     5      KCd21           100

// distdendNlongb   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongb	distdendNlonga	-25.6	0	70.5	1.34	Ca_d21	-66.23e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5      KCd21           100

// distdendNlongc   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongc	distdendNlongb	-25.6	0	70.5	1.34	Ca_d21	-66.23e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5      KCd21           100

// distdendNlongd   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongd	distdendNlongc	-25.6	0	70.5	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                     CaH21     5       KCd21           100

// distdendNlonge   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlonge	distdendNlongd	-25.6	0	70.5	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5       KCd21           100

// distdendNlongf   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongf	distdendNlonge	-25.6	0	70.5	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5       KCd21           100

// distdendNlongg   Cunningham et al., PNAS  2004;101:7152-7157
distdendNlongg	distdendNlongf	-25.6	0	70.5	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5       KCd21           100

// distdendNmida   Cunningham et al., PNAS  2004;101:7152-7157
distdendNmida	proxdendN	25.6	0	70.5	1.34	Ca_d21	-66.23e12	NaF21	600	NaP21	6	KDR21	600	KA21	5.00	KM21	5	K221	5	KAHPd21	1	CaL21	0.5	AR21	0.25\
                                                 CaH21     5       KCd21           100

// distdendNmidb   Cunningham et al., PNAS  2004;101:7152-7157
distdendNmidb	distdendNmida	25.6	0	70.5	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5       KCd21           100

// distdendNmidc   Cunningham et al., PNAS  2004;101:7152-7157
distdendNmidc	distdendNmidb	25.6	0	70.5	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5       KCd21           100

// distdendNshorta   Cunningham et al., PNAS  2004;101:7152-7157
distdendNshorta	distdendNlonga	25.6	0	70.5	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5       KCd21           100

// distdendNshortb   Cunningham et al., PNAS  2004;101:7152-7157
distdendNshortb	distdendNshorta	25.6	0	70.5	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5       KCd21           100

//East DISTAL DENDRITE COMPARTMENTS ***************************************
// distdendElonga   Cunningham et al., PNAS  2004;101:7152-7157
distdendElonga	proxdendE	70.5	25.6	0.0	1.34	Ca_d21	-66.23e12	NaF21	600	NaP21	6	KDR21	600	KA21	5.00	KM21	5	K221	5	KAHPd21	1	CaL21	0.5	AR21	0.25\
                                                 CaH21     5         KCd21           100

// distdendElongb   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongb	distdendElonga	70.5	25.6	0.0	1.34	Ca_d21	-66.23e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5         KCd21           100

// distdendElongc   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongc	distdendElongb	70.5	25.6	0.0	1.34	Ca_d21	-66.23e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5         KCd21           100

// distdendElongd   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongd	distdendElongc	70.5	25.6	0.0	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5         KCd21           100

// distdendElonge   Cunningham et al., PNAS  2004;101:7152-7157
distdendElonge	distdendElongd	70.5	25.6	0.0	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5         KCd21           100

// distdendElongf   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongf	distdendElonge	70.5	25.6	0.0	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5         KCd21           100

// distdendElongg   Cunningham et al., PNAS  2004;101:7152-7157
distdendElongg	distdendElongf	70.5	25.6	0.0	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5         KCd21           100

// distdendEmida   Cunningham et al., PNAS  2004;101:7152-7157
distdendEmida	proxdendE	70.5	-25.6	0.0	1.34	Ca_d21	-66.23e12	NaF21	600	NaP21	6	KDR21	600	KA21	5.00	KM21	5	K221	5	KAHPd21	1	CaL21	0.5	AR21	0.25\
                                                 CaH21     5         KCd21           100

// distdendEmidb   Cunningham et al., PNAS  2004;101:7152-7157
distdendEmidb	distdendEmida	70.5	-25.6	0.0	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5         KCd21           100

// distdendEmidc   Cunningham et al., PNAS  2004;101:7152-7157
distdendEmidc	distdendEmidb	70.5	-25.6	0.0	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5         KCd21           100

// distdendEshorta   Cunningham et al., PNAS  2004;101:7152-7157
distdendEshorta	distdendElonga	70.5	-25.6	0.0	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5         KCd21           100

// distdendEshortb   Cunningham et al., PNAS  2004;101:7152-7157
distdendEshortb	distdendEshorta	70.5	-25.6	0.0	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5         KCd21           100

//South DISTAL DENDRITE COMPARTMENTS ***************************************
// distdendSlonga   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlonga	proxdendS	25.6	0	-70.5	1.34	Ca_d21	-66.23e12	NaF21	600	NaP21	6	KDR21	600	KA21	5.00	KM21	5	K221	5	KAHPd21	1	CaL21	0.5	AR21	0.25\
                                                 CaH21     5         KCd21         100

// distdendSlongb   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongb	distdendSlonga	25.6	0	-70.5	1.34	Ca_d21	-66.23e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5        KCd21         100

// distdendSlongc   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongc	distdendSlongb	25.6	0	-70.5	1.34	Ca_d21	-66.23e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5         KCd21         100

// distdendSlongd   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongd	distdendSlongc	25.6	0	-70.5	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5          KCd21         100

// distdendSlonge   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlonge	distdendSlongd	25.6	0	-70.5	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5          KCd21         100

// distdendSlongf   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongf	distdendSlonge	25.6	0	-70.5	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5          KCd21         100

// distdendSlongg   Cunningham et al., PNAS  2004;101:7152-7157
distdendSlongg	distdendSlongf	25.6	0	-70.5	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5          KCd21         100

// distdendSmida   Cunningham et al., PNAS  2004;101:7152-7157
distdendSmida	proxdendS	-25.6	0	-70.5	1.34	Ca_d21	-66.23e12	NaF21	600	NaP21	6	KDR21	600	KA21	5.00	KM21	5	K221	5	KAHPd21	1	CaL21	0.5	AR21	0.25\
                                                 CaH21     5          KCd21         100

// distdendSmidb   Cunningham et al., PNAS  2004;101:7152-7157
distdendSmidb	distdendSmida	-25.6	0	-70.5	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5          KCd21         100

// distdendSmidc   Cunningham et al., PNAS  2004;101:7152-7157
distdendSmidc	distdendSmidb	-25.6	0	-70.5	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5          KCd21         100

// distdendSshorta   Cunningham et al., PNAS  2004;101:7152-7157
distdendSshorta	distdendSlonga	-25.6	0	-70.5	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5          KCd21         100

// distdendSshortb   Cunningham et al., PNAS  2004;101:7152-7157
distdendSshortb	distdendSshorta	-25.6	0	-70.5	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5          KCd21         100

//West DISTAL DENDRITE COMPARTMENTS ***************************************
// distdendWlonga   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlonga	proxdendW	-70.5	-25.6	0.0	1.34	Ca_d21	-66.23e12	NaF21	600	NaP21	6	KDR21	600	KA21	5.00	KM21	5	K221	5	KAHPd21	1	CaL21	0.5	AR21	0.25\
                                                 CaH21     5          KCd21         100

// distdendWlongb   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongb	distdendWlonga	-70.5	-25.6	0.0	1.34	Ca_d21	-66.23e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5          KCd21         100

// distdendWlongc   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongc	distdendWlongb	-70.5	-25.6	0.0	1.34	Ca_d21	-66.23e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5          KCd21         100

// distdendWlongd   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongd	distdendWlongc	-70.5	-25.6	0.0	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5          KCd21         100

// distdendWlonge   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlonge	distdendWlongd	-70.5	-25.6	0.0	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5          KCd21         100

// distdendWlongf   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongf	distdendWlonge	-70.5	-25.6	0.0	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5          KCd21         100

// distdendWlongg   Cunningham et al., PNAS  2004;101:7152-7157
distdendWlongg	distdendWlongf	-70.5	-25.6	0.0	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5          KCd21         100

// distdendWmida   Cunningham et al., PNAS  2004;101:7152-7157
distdendWmida	proxdendW	-70.5	25.6	0.0	1.34	Ca_d21	-66.23e12	NaF21	600	NaP21	6	KDR21	600	KA21	5.00	KM21	5	K221	5	KAHPd21	1	CaL21	0.5	AR21	0.25\
                                                 CaH21     5          KCd21         100

// distdendWmidb   Cunningham et al., PNAS  2004;101:7152-7157
distdendWmidb	distdendWmida	-70.5	25.6	0.0	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5          KCd21         100

// distdendWmidc   Cunningham et al., PNAS  2004;101:7152-7157
distdendWmidc	distdendWmidb	-70.5	25.6	0.0	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5          KCd21         100

// distdendWshorta   Cunningham et al., PNAS  2004;101:7152-7157
distdendWshorta	distdendWlonga	-70.5	25.6	0.0	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5          KCd21         100

// distdendWshortb   Cunningham et al., PNAS  2004;101:7152-7157
distdendWshortb	distdendWshorta	-70.5	25.6	0.0	0.84	Ca_d21	-105.66e12	NaF21	100	NaP21	1	KDR21	100	KA21	1.00	KM21	5	K221	5	KAHPd21	1	CaL21	20	AR21	0.25\
                                                      CaH21     5          KCd21      100

//		Specifying constants for axonal compartment

   *set_compt_param	RM	0.1   // (0.1)
   *set_compt_param	RA	2.0   // (1.0)
   *set_compt_param	CM	0.005  // (0.01) RC = 0.001
//*set_compt_param     ELEAK	-0.07441
  
// axona Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axona	soma	0	0	-25	1.8	NaF21	4000	NaP21	40	KDR21	4000	KA21	1.00	K221	5

// axonb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonb	axona	0	0	-75	1.4	NaF21	4000	NaP21	40	KDR21	4000	KA21	1.00	K221	5

// axonLa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonLa	axonb	-8.5	0	-124.0	1.2	NaF21	4000	NaP21	40	KDR21	4000	KA21	1.00	K221	5

// axonLb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonLb	axonLa	-17.0	0	-173.0	1.0	NaF21	4000	NaP21	40	KDR21	4000	KA21	1.00	K221	5

// axonRa Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonRa	axonb	8.5	0	-124.0	1.2	NaF21	4000	NaP21	40	KDR21	4000	KA21	1.00	K221	5

// axonRb Fig 1. Traub et al., J Neurophysiol 2003;89:909-921
// Differs from Traub et al., in that axon is vertical
axonRb	axonRa	17.0	0	-173.0	1.0	NaF21	4000	NaP21	40	KDR21	4000	KA21	1.00	K221	5
