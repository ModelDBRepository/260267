//genesis

/* FILE INFORMATION
** The 1991 Traub set of voltage and concentration dependent channels
** Implemented as tabchannels by : Dave Beeman
**      R.D.Traub, R. K. S. Wong, R. Miles, and H. Michelson
**	Journal of Neurophysiology, Vol. 66, p. 635 (1991)
**
** This file depends on functions and constants defined in defaults.g
** As it is also intended as an example of the use of the tabchannel
** object to implement concentration dependent channels, it has extensive
** comments.  Note that the original units used in the paper have been
** converted to SI (MKS) units.  Also, we define the ionic equilibrium 
** potentials relative to the resting potential, EREST_ACT.  In the
** paper, this was defined to be zero.  Here, we use -0.060 volts, the
** measured value relative to the outside of the cell.
*/

/* November 1999 update for GENESIS 2.2: Previous versions of this file used
   a combination of a table, tabgate, and vdep_channel to implement the
   Ca-dependent K Channel - K(C).  This new version uses the new tabchannel
   "instant" field, introduced in GENESIS 2.2, to implement an
   "instantaneous" gate for the multiplicative Ca-dependent factor in the
   conductance.   This allows these channels to be used with the fast
   hsolve chanmodes > 1.
*/

// Now updated for Traub et al. J Neurophysiol 2003;89:909-921.

// CONSTANTS
float EREST_ACT = -0.060 /* hippocampal cell resting potl */
float ENAP5IBd = 0.115 + EREST_ACT // 0.055
float EKP5IBd = -0.015 + EREST_ACT // -0.075
float ECAP5IBd = 0.140 + EREST_ACT // 0.080
float EARP5IBd = 0.025 + EREST_ACT // -0.035
float SOMA_A = 3.320e-9       // soma area in square meters

/*
For these channels, the maximum channel conductance (Gbar) has been
calculated using the CA3 soma channel conductance densities and soma
area.  Typically, the functions which create these channels will be used
to create a library of prototype channels.  When the cell reader creates
copies of these channels in various compartments, it will set the actual
value of Gbar by calculating it from the cell parameter file.
*/

//========================================================================
//                Tabchannel gNa-transient, gNa(F) 2005/03
//========================================================================
function make_NaF9
        if ({exists NaF9})
                return
        end

        create  tabchannel      NaF9
                setfield        ^       \
                Ek              {ENAP5IBd}   \               //      V
                Gbar            { 300 * SOMA_A }    \   //      S
                Ik              0       \               //      A
                Gk              0       \               //      S
                Xpower  3       \
                Ypower  1       \
                Zpower  0

// Allocate space in the A and B tables with room for xdivs+1 = 50 (80) entries,
// covering the range xmin = -0.1 to xmax = 0.05.
        float   xmin = -0.15     // normally -0.1
        float   xmax = 0.10      // normally  0.05
        int     xdivs = 79
	call NaF9  TABCREATE X {xdivs} {xmin} {xmax}
    call NaF9  TABCREATE Y {xdivs} {xmin} {xmax}

// Fill the X_A table with alpha values and the X_B table with (alpha+beta)
        int i
        float x,dx,y,y1,y2,z,z1
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)

            // alpha

            if (x <= -0.0265)
                y1 = 0.000025+0.00014*{exp {100*(x + 0.0265)}}
                z1=y1
            else
                y1 = 0.000020+0.000145*{exp {100*(-x-0.0265)}}
                z1=y1
            end

            y2 = 1.0+{exp {100*(-x-0.0345)}}

            y = 1/(y2*y1)

            // alpha+beta
	   
            z=1/z1

            setfield NaF9  X_A->table[{i}] {y}
            setfield NaF9  X_B->table[{i}] {z}
            x = x + dx
        end

// Fill the Y_A table with alpha values and the Y_B table with (alpha+beta)
        int i
        float x,dx,y,y1,y2,z,z1
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)

            // alpha

            y1 = 0.00015+0.00115/{1.0+{exp {66.7*(x + 0.0335)}}}
            z1=y1

            y2 = 1/{1.0+{exp {93.46*(x+0.0594)}}}

            y = y2/y1

            // alpha+beta
	   
            z=1/z1

            setfield NaF9  Y_A->table[{i}] {y}
            setfield NaF9  Y_B->table[{i}] {z}
            x = x + dx
        end

// For speed during execution, set the calculation mode to "no interpolation"
// and use TABFILL to expand the table to 3000 entries.
        setfield NaF9  X_A->calc_mode 0   X_B->calc_mode 0
        call NaF9  TABFILL X 3000 0

        setfield NaF9  Y_A->calc_mode 0   Y_B->calc_mode 0
        call NaF9  TABFILL Y 3000 0

end

//========================================================================
//        Tabchannel gNa-persistent (non-inactivating), gNa(P) 2005/03
//========================================================================
function make_NaP9
        if ({exists NaP9})
                return
        end

        create  tabchannel      NaP9
                setfield        ^       \
                Ek              {ENAP5IBd}   \               //      V
                Gbar            { 300 * SOMA_A }    \   //      S
                Ik              0       \               //      A
                Gk              0       \               //      S
                Xpower  1       \
                Ypower  0       \
                Zpower  0

// Allocate space in the A and B tables with room for xdivs+1 = 50 (80) entries,
// covering the range xmin = -0.1 to xmax = 0.05.
        float   xmin = -0.15  // normally -0.1
        float   xmax = 0.10   // normally  0.05
        int     xdivs = 79
	call NaP9 TABCREATE X {xdivs} {xmin} {xmax}

// Fill the X_A table with alpha values and the X_B table with (alpha+beta)
        int i
        float x,dx,y,y1,y2,z,z1
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)

            // alpha

            if (x <= -0.040)
                y1 = 0.000025+0.00014*{exp {100*(x + 0.040)}}
                z1=y1
            else
                y1 = 0.000020+0.000145*{exp {100*(-x-0.040)}}
                z1=y1
            end

            y2 = 1.0+{exp {100*(-x-0.048)}}

            y = 1/(y2*y1)

            // alpha+beta
	   
            z=1/z1

            setfield NaP9 X_A->table[{i}] {y}
            setfield NaP9 X_B->table[{i}] {z}
            x = x + dx
        end

// For speed during execution, set the calculation mode to "no interpolation"
// and use TABFILL to expand the table to 3000 entries.
        setfield NaP9  X_A->calc_mode 0   X_B->calc_mode 0
        call NaP9  TABFILL X 3000 0

end

//========================================================================
//        Tabchannel Anomalous Rectifier, gAR 2005/03
//========================================================================
function make_AR9
        if ({exists AR9})
                return
        end

        create  tabchannel      AR9
                setfield        ^       \
                Ek              {EARP5IBd}   \               //      V
                Gbar            { 300 * SOMA_A }    \   //      S
                Ik              0       \               //      A
                Gk              0       \               //      S
                Xpower  1       \
                Ypower  0       \
                Zpower  0

// Allocate space in the A and B tables with room for xdivs+1 = 50 (80) entries,
// covering the range xmin = -0.1 to xmax = 0.05.
        float   xmin = -0.15 // normally -0.1
        float   xmax = 0.10  // normally  0.05
        int     xdivs = 79
	call AR9 TABCREATE X {xdivs} {xmin} {xmax}

// Fill the X_A table with alpha values and the X_B table with (alpha+beta)
        int i
        float x,dx,y,y1,y2,z,z1
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)

            // alpha

            y1 = 0.001/{ {exp {-14.6 - 86.0*x}} + {exp {-1.87 + 70.0*x}} }
			z1=y1
            y2 = 1.0+{exp {181.8*(x+0.075)}}

            y = 1/(y2*y1)

            // alpha+beta
	   
            z=1/z1

            setfield AR9 X_A->table[{i}] {y}
            setfield AR9 X_B->table[{i}] {z}
            x = x + dx
        end

// For speed during execution, set the calculation mode to "no interpolation"
// and use TABFILL to expand the table to 3000 entries.
        setfield AR9 X_A->calc_mode 0   X_B->calc_mode 0
        call AR9 TABFILL X 3000 0

end


//========================================================================
//                Tabchannel gK-delayed rectifier, gK(DR) 2005/03
//========================================================================
function make_KDR9
        if ({exists KDR9})
                return
        end

        create  tabchannel      KDR9
                setfield        ^       \
                Ek              {EKP5IBd}   \               //      V
                Gbar            { 300 * SOMA_A }    \   //      S
                Ik              0       \               //      A
                Gk              0       \               //      S
                Xpower  4       \
                Ypower  0       \
                Zpower  0

// Allocate space in the A and B tables with room for xdivs+1 = 50 (80) entries,
// covering the range xmin = -0.1 to xmax = 0.05.
        float   xmin = -0.15 // normally -0.1
        float   xmax = 0.10  // normally  0.05
        int     xdivs = 79
	call KDR9 TABCREATE X {xdivs} {xmin} {xmax}

// Fill the X_A table with alpha values and the X_B table with (alpha+beta)
        int i
        float x,dx,y,y1,y2,z,z1
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)

            // alpha

            if (x <= -0.010)
                y1 = 0.00025+0.00435*{exp {100*(x + 0.010)}}
                z1=y1
            else
                y1 = 0.00025+0.00435*{exp {100*(-x - 0.010)}}
                z1=y1
            end

            y2 = 1.0+{exp {100*(-x-0.0295)}}

            y = 1/(y2*y1)

            // alpha+beta
	   
            z=1/z1

            setfield KDR9 X_A->table[{i}] {y}
            setfield KDR9 X_B->table[{i}] {z}
            x = x + dx
        end

// For speed during execution, set the calculation mode to "no interpolation"
// and use TABFILL to expand the table to 3000 entries.
        setfield KDR9 X_A->calc_mode 0   X_B->calc_mode 0
        call KDR9 TABFILL X 3000 0

end

//========================================================================
//                Tabchannel gK-transient, gK(A) 2005/03
//========================================================================
function make_KA9
        if ({exists KA9})
                return
        end

        create  tabchannel      KA9
                setfield        ^       \
                Ek              {EKP5IBd}   \               //      V
                Gbar            { 300 * SOMA_A }    \   //      S
                Ik              0       \               //      A
                Gk              0       \               //      S
                Xpower  4       \
                Ypower  1       \
                Zpower  0

// Allocate space in the A and B tables with room for xdivs+1 = 50 (80) entries,
// covering the range xmin = -0.1 to xmax = 0.05.
        float   xmin = -0.15 // normally -0.1
        float   xmax = 0.10  // normally  0.05
        int     xdivs = 79
	call KA9 TABCREATE X {xdivs} {xmin} {xmax}
    call KA9 TABCREATE Y {xdivs} {xmin} {xmax}

// Fill the X_A table with alpha values and the X_B table with (alpha+beta)
        int i
        float x,dx,y,y1,y2,z,z1
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)

            // alpha

            y1=0.000185+0.0005/{{exp {50.76*(x+0.0358)}} +{exp {78.74*(-x-0.0797)}}}
            z1=y1

            y2 = 1.0+{exp {117.65*(-x-0.060)}}

            y = 1/(y2*y1)

            // alpha+beta
	   
            z=1/z1

            setfield KA9 X_A->table[{i}] {y}
            setfield KA9 X_B->table[{i}] {z}
            x = x + dx
        end

// Fill the Y_A table with alpha values and the Y_B table with (alpha+beta)
        int i
        float x,dx,y,y1,y2,z,z1
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)

            // alpha

            if (x <= -0.063)
                y1 = 0.0005/{{exp {200*(x+0.046)}} +{exp {26.67*(-x-0.238)}}}
                y1=y1*2.6 //After Traub et al. 2005
                z1=y1
            else
                y1 = .0095
                y1=y1*2.6 //After Traub et al. 2005
                z1=y1
            end

            y2 = 1/{1.0+{exp {166.67*(x+0.078)}}}

            y = y2/y1

            // alpha+beta
	   
            z=1/z1

            setfield KA9 Y_A->table[{i}] {y}
            setfield KA9 Y_B->table[{i}] {z}
            x = x + dx
        end

// For speed during execution, set the calculation mode to "no interpolation"
// and use TABFILL to expand the table to 3000 entries.
        setfield KA9 X_A->calc_mode 0   X_B->calc_mode 0
        call KA9 TABFILL X 3000 0

        setfield KA9 Y_A->calc_mode 0   Y_B->calc_mode 0
        call KA9 TABFILL Y 3000 0

end


//========================================================================
//                Tabchannel gK2-slow, gK2 2005/03
//========================================================================
function make_K29
        if ({exists K29})
                return
        end

        create  tabchannel      K29
                setfield        ^       \
                Ek              {EKP5IBd}   \               //      V
                Gbar            { 300 * SOMA_A }    \   //      S
                Ik              0       \               //      A
                Gk              0       \               //      S
                Xpower  1       \
                Ypower  1       \
                Zpower  0

// Allocate space in the A and B tables with room for xdivs+1 = 50 (80) entries,
// covering the range xmin = -0.1 to xmax = 0.05.
        float   xmin = -0.15  // normally -0.1
        float   xmax = 0.10   // normally  0.05
        int     xdivs = 79
	call K29 TABCREATE X {xdivs} {xmin} {xmax}
    call K29 TABCREATE Y {xdivs} {xmin} {xmax}

// Fill the X_A table with alpha values and the X_B table with (alpha+beta)
        int i
        float x,dx,y,y1,y2,z,z1
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)

            // alpha

            y1=0.00495+0.0005/{{exp {39.06*(x-0.081)}} +{exp {55.56*(-x-0.132)}}}
            z1=y1

            y2 = 1.0+{exp {58.82*(-x-0.010)}}

            y = 1/(y2*y1)

            // alpha+beta
	   
            z=1/z1

            setfield K29 X_A->table[{i}] {y}
            setfield K29 X_B->table[{i}] {z}
            x = x + dx
        end

// Fill the Y_A table with alpha values and the Y_B table with (alpha+beta)
        int i
        float x,dx,y,y1,y2,z,z1
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)

            // alpha

            y1=0.060+0.0005/{{exp {5.0*(x-0.00133)}} +{exp {140.8*(-x-0.130)}}}
            z1=y1

            y2 = 1.0+{exp {94.34*(x+0.058)}}

            y = 1/(y2*y1)

            // alpha+beta
	   
            z=1/z1

            setfield K29 Y_A->table[{i}] {y}
            setfield K29 Y_B->table[{i}] {z}
            x = x + dx
        end

// For speed during execution, set the calculation mode to "no interpolation"
// and use TABFILL to expand the table to 3000 entries.
        setfield K29 X_A->calc_mode 0   X_B->calc_mode 0
        call K29 TABFILL X 3000 0

        setfield K29 Y_A->calc_mode 0   Y_B->calc_mode 0
        call K29 TABFILL Y 3000 0

end

//========================================================================
//           Tabchannel gK-muscarinic receptor supressed, gK(M) 2005/03
//========================================================================
function make_KM9
        if ({exists KM9})
                return
        end

        create  tabchannel      KM9
                setfield        ^       \
                Ek              {EKP5IBd}   \               //      V
                Gbar            { 300 * SOMA_A }    \   //      S
                Ik              0       \               //      A
                Gk              0       \               //      S
                Xpower  1       \
                Ypower  0       \
                Zpower  0

// Allocate space in the A and B tables with room for xdivs+1 = 50 (80) entries,
// covering the range xmin = -0.1 to xmax = 0.05.
        float   xmin = -0.15  // normally -0.1
        float   xmax = 0.10   // normally  0.05
        int     xdivs = 79
	call KM9 TABCREATE X {xdivs} {xmin} {xmax}

// Fill the X_A table with alpha values and the X_B table with (alpha+beta)
        int i
        float x,dx,y,y1,y2,z,z1
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)

            // alpha

            y1 = 20.0/{1.0 + {exp {200*(-x-0.020)}}}

            y2 = 10.0*{exp {55.56*(-x-0.043)}}

            y = y1

            // alpha+beta
	   
            z=y1+y2

            setfield KM9 X_A->table[{i}] {y}
            setfield KM9 X_B->table[{i}] {z}
            x = x + dx
        end

// For speed during execution, set the calculation mode to "no interpolation"
// and use TABFILL to expand the table to 3000 entries.
        setfield KM9 X_A->calc_mode 0   X_B->calc_mode 0
        call KM9 TABFILL X 3000 0

end


//========================================================================
//          Tabchannel gCa(L)-low threshold, transient, gCa(L) 2005/03
//========================================================================
function make_CaL9
        if ({exists CaL9})
                return
        end

        create  tabchannel      CaL9
                setfield        ^       \
                Ek              {ECAP5IBd}   \               //      V
                Gbar            { 300 * SOMA_A }    \   //      S
                Ik              0       \               //      A
                Gk              0       \               //      S
                Xpower  2       \
                Ypower  1       \
                Zpower  0

// Allocate space in the A and B tables with room for xdivs+1 = 50 (80) entries,
// covering the range xmin = -0.1 to xmax = 0.05.
        float   xmin = -0.15 // normally -0.1
        float   xmax = 0.10  // normally  0.05
        int     xdivs = 79
	call CaL9 TABCREATE X {xdivs} {xmin} {xmax}
    call CaL9 TABCREATE Y {xdivs} {xmin} {xmax}

// Fill the X_A table with alpha values and the X_B table with (alpha+beta)
        int i
        float x,dx,y,y1,y2,z,z1
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)

            // alpha

            y1=0.000204+0.000333/{{exp {54.94*(x+0.0158)}} +{exp {59.88*(-x-0.131)}}}
            z1=y1

            y2 = 1.0+{exp {161.29*(-x-0.056)}}

            y = 1/(y2*y1)

            // alpha+beta
	   
            z=1/z1

            setfield CaL9 X_A->table[{i}] {y}
            setfield CaL9 X_B->table[{i}] {z}
            x = x + dx
        end

// Fill the Y_A table with alpha values and the Y_B table with (alpha+beta)
        int i
        float x,dx,y,y1,y2,z,z1
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)

            // alpha

            if (x <= -0.081)
                y1 = 0.000333*{exp {15.02*(x+0.466)}}
                z1=y1
            else
                y1 = .00932 + 0.000333*{exp {95.24*(-x-0.021)}}
                z1=y1
            end

            y2 = 1/{1.0+{exp {250.0*(x+0.080)}}}

            y = y2/y1

            // alpha+beta
	   
            z=1/z1

            setfield CaL9 Y_A->table[{i}] {y}
            setfield CaL9 Y_B->table[{i}] {z}
            x = x + dx
        end

// For speed during execution, set the calculation mode to "no interpolation"
// and use TABFILL to expand the table to 3000 entries.
        setfield CaL9 X_A->calc_mode 0   X_B->calc_mode 0
        call CaL9 TABFILL X 3000 0

        setfield CaL9 Y_A->calc_mode 0   Y_B->calc_mode 0
        call CaL9 TABFILL Y 3000 0

end

//==========================================================================
//            Tabchannel gCaH-high threshold calcium, gCa(L) "long" 2003/05
//==========================================================================
function make_CaH9
        if ({exists CaH9})
                return
        end

        create  tabchannel      CaH9
                setfield        ^       \
                Ek              {ECAP5IBd}   \               //      V
                Gbar            { 300 * SOMA_A }    \   //      S
                Ik              0       \               //      A
                Gk              0       \               //      S
                Xpower  2       \
                Ypower  0       \
                Zpower  0

// Allocate space in the A and B tables with room for xdivs+1 = 50 (80) entries,
// covering the range xmin = -0.1 to xmax = 0.05.
        float   xmin = -0.15 // normally -0.1
        float   xmax = 0.10  // normally  0.05
        int     xdivs = 79
	call CaH9 TABCREATE X {xdivs} {xmin} {xmax}

// Fill the X_A table with alpha values and the X_B table with (alpha+beta)
        int i
        float x,dx,y,y1,y2,z,z1
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)

            // alpha

            y1 = 1600.0/{1.0 + {exp {-72.0*(x-0.005)}}}

            y2 = 20000.0*(x+0.0089)/{-1.0+{exp {200.0*(x+0.0089)}}}

            y = y1

            // alpha+beta
	   
            z=y1+y2

            setfield CaH9 X_A->table[{i}] {y}
            setfield CaH9 X_B->table[{i}] {z}
            x = x + dx
        end

// For speed during execution, set the calculation mode to "no interpolation"
// and use TABFILL to expand the table to 3000 entries.
        setfield CaH9 X_A->calc_mode 0   X_B->calc_mode 0
        call CaH9 TABFILL X 3000 0

end

//========================================================================
//             Ca conc, Traub et al. J Neurophysiol 2003;89:909-921.
//========================================================================
/****************************************************************************
Next, we need an element to take the Calcium current calculated by the Ca
channel and convert it to the Ca concentration.  The "Ca_concen" object
solves the equation dC/dt = B*I_Ca - C/tau, and sets Ca = Ca_base + C.  As
it is easy to make mistakes in units when using this Calcium diffusion
equation, the units used here merit some discussion.

With Ca_base = 0, this corresponds to Traub's diffusion equation for
concentration, except that the sign of the current term here is positive, as
GENESIS uses the convention that I_Ca is the current flowing INTO the
compartment through the channel.  In SI units, the concentration is usually
expressed in moles/m^3 (which equals millimoles/liter), and the units of B
are chosen so that B = 1/(ion_charge * Faraday * volume). Current is
expressed in amperes and one Faraday = 96487 coulombs.  However, in this
case, Traub expresses the concentration in arbitrary units, current in
microamps and uses tau = 13.33 msec (50 msec soma, 20 msec dendrites in the
2003 J Neurophys paper).  If we use the same concentration units,
but express current in amperes and tau in seconds, our B constant is then
10^12 times the constant (called "phi") used in the paper.  The actual value
used will typically be determined by the cell reader from the cell
parameter file (will vary inversely with surface area of compartment).  
However, for the prototype channel we will use Traub's
corrected value for the soma.  (An error in the paper gives it as 17,402
rather than 17.402.)  In our units, this will be 17.402e12.

****************************************************************************/
function make_Ca_s9
        if ({exists Ca_s9})
                return
        end
        create Ca_concen Ca_s9
        setfield Ca_s9 \
                tau     0.050   \      // sec (nl .050)
                B       17.402e12 \      // Curr to conc for soma
                Ca_base 0.0
        addfield Ca_s9 addmsg1
        setfield Ca_s9 \
                addmsg1        "../CaH9 . I_Ca Ik"
        addfield Ca_s9 addmsg2
        setfield Ca_s9 \
                addmsg2        "../CaL9 . I_Ca Ik"
end
/*
This Ca_concen element should receive an "I_Ca" message from the calcium
channel, accompanied by the value of the calcium channel current.  As we
will ordinarily use the cell reader to create copies of these prototype
elements in one or more compartments, we need some way to be sure that the
needed messages are established.  Although the cell reader has enough
information to create the messages which link compartments to their channels
and to other adjacent compartments, it must be provided with the information
needed to establish additional messages.  This is done by placing the
message string in a user-defined field of one of the elements which is
involved in the message.  The cell reader recognizes the added field names
"addmsg1", "addmsg2", etc. as indicating that they are to be
evaluated and used to set up messages.  The paths are relative to the
element which contains the message string in its added field.  Thus,
"../Ca_hip_traub91" refers to the sibling element Ca_hip_traub91 and "."
refers to the Ca_hip_conc element itself.
*/

/****************************************************************************/
function make_Ca_d9
        if ({exists Ca_d9})
                return
        end
        create Ca_concen Ca_d9
        setfield Ca_d9 \
                tau     0.010   \      // sec (nl .010)
                B       17.402e12 \      // Curr to conc for soma
                Ca_base 0.0
        addfield Ca_d9 addmsg1
        setfield Ca_d9 \
                addmsg1        "../CaH9 . I_Ca Ik"
        addfield Ca_d9 addmsg2
        setfield Ca_d9 \
                addmsg2        "../CaL9 . I_Ca Ik"
end
/*
This Ca_concen element should receive an "I_Ca" message from the calcium
channel, accompanied by the value of the calcium channel current.  As we
will ordinarily use the cell reader to create copies of these prototype
elements in one or more compartments, we need some way to be sure that the
needed messages are established.  Although the cell reader has enough
information to create the messages which link compartments to their channels
and to other adjacent compartments, it must be provided with the information
needed to establish additional messages.  This is done by placing the
message string in a user-defined field of one of the elements which is
involved in the message.  The cell reader recognizes the added field names
"addmsg1", "addmsg2", etc. as indicating that they are to be
evaluated and used to set up messages.  The paths are relative to the
element which contains the message string in its added field.  Thus,
"../Ca_hip_traub91" refers to the sibling element Ca_hip_traub91 and "."
refers to the Ca_hip_conc element itself.
*/

//===============================================================================
//  Ca-dependent K Channel - K(C) - (vdep_channel with table and tabgate)2005/03
//===============================================================================
/*
The expression for the conductance of the potassium C-current channel has a
typical voltage and time dependent activation gate, where the time dependence
arises from the solution of a differential equation containing the rate
parameters alpha and beta.  It is multiplied by a function of calcium
concentration that is given explicitly rather than being obtained from a
differential equation.  Therefore, we need a way to multiply the activation
by a concentration dependent value which is determined from a lookup table.
This is accomplished by using the Z gate with the new tabchannel "instant"
field, introduced in GENESIS 2.2, to implement an "instantaneous" gate for
the multiplicative Ca-dependent factor in the conductance.
*/

function make_KCs9
    if ({exists KCs9})
            return
    end

    create  tabchannel  KCs9
                setfield        ^       \
                Ek              {EKP5IBd}    \                       //      V
                Gbar            { 100.0 * SOMA_A }      \       //      S
                Ik              0       \                       //      A
                Gk              0                               //      S

// Now make a X-table for the voltage-dependent activation parameter.
        float   xmin = -0.15  // normally -0.1
        float   xmax = 0.10   // normally  0.05
        int     xdivs = 79
        call KCs9 TABCREATE X {xdivs} {xmin} {xmax}
        int i
        float x,dx,alpha,beta
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)
            if (x < -0.010)
                alpha = 53.0*{exp { {90.91*(x + 0.050)} - {37.04*(x + 0.0535)} } }
                beta = 2000.0*{exp {37.04*(-x - 0.0535)}} - alpha
            else
                alpha = 2000.0*{exp {37.04*(-x - 0.0535)}}
                beta = 0.0
            end
            setfield KCs9 X_A->table[{i}] {alpha}
            setfield KCs9 X_B->table[{i}] {alpha+beta}
            x = x + dx
        end

// Expand the tables to 3000 entries to use without interpolation
    setfield KCs9 X_A->calc_mode 0 X_B->calc_mode 0
    setfield KCs9 Xpower 1
    call KCs9 TABFILL X 3000 0

// Create a table for the function of concentration, allowing a
// concentration range of 0 to 1000, with 50 divisions.  This is done
// using the Z gate, which can receive a CONCEN message.  By using
// the "instant" flag, the A and B tables are evaluated as lookup tables,
//  rather than being used in a differential equation.
        float   xmin = 0.0
        float   xmax = 1000.0
        int     xdivs = 50

        call KCs9 TABCREATE Z {xdivs} {xmin} {xmax}
        int i
        float x,dx,y
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)
            if (x < 250.0)
                y = x/250.0
            else
                y = 1.0
            end
            /* activation will be computed as Z_A/Z_B */
            setfield KCs9 Z_A->table[{i}] {y}
            setfield KCs9 Z_B->table[{i}] 1.0
            x = x + dx
        end
        setfield KCs9 Z_A->calc_mode 0 Z_B->calc_mode 0
        setfield KCs9 Zpower 1
// Make it an instantaneous gate (no time constant)
    setfield KCs9 instant {INSTANTZ}
// Expand the table to 3000 entries to use without interpolation.
    call KCs9 TABFILL Z 3000 0

// Now we need to provide for messages that link to external elements.
// The message that sends the Ca concentration to the Z gate tables is stored
// in an added field of the channel, so that it may be found by the cell
// reader.
        addfield KCs9 addmsg1
        setfield KCs9 addmsg1  "../Ca_s9  . CONCEN Ca"
end


function make_KCd9
    if ({exists KCd9})
            return
    end

    create  tabchannel  KCd9
                setfield        ^       \
                Ek              {EKP5IBd}    \                       //      V
                Gbar            { 100.0 * SOMA_A }      \       //      S
                Ik              0       \                       //      A
                Gk              0                               //      S

// Now make a X-table for the voltage-dependent activation parameter.
        float   xmin = -0.15  // normally -0.1
        float   xmax = 0.10   // normally  0.05
        int     xdivs = 79
        call KCd9 TABCREATE X {xdivs} {xmin} {xmax}
        int i
        float x,dx,alpha,beta
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)
            if (x < -0.010)
                alpha = 53.0*{exp { {90.91*(x + 0.050)} - {37.04*(x + 0.0535)} } }
                beta = 2000.0*{exp {37.04*(-x - 0.0535)}} - alpha
            else
                alpha = 2000.0*{exp {37.04*(-x - 0.0535)}}
                beta = 0.0
            end
            setfield KCd9 X_A->table[{i}] {alpha}
            setfield KCd9 X_B->table[{i}] {alpha+beta}
            x = x + dx
        end

// Expand the tables to 3000 entries to use without interpolation
    setfield KCd9 X_A->calc_mode 0 X_B->calc_mode 0
    setfield KCd9 Xpower 1
    call KCd9 TABFILL X 3000 0

// Create a table for the function of concentration, allowing a
// concentration range of 0 to 1000, with 50 divisions.  This is done
// using the Z gate, which can receive a CONCEN message.  By using
// the "instant" flag, the A and B tables are evaluated as lookup tables,
//  rather than being used in a differential equation.
        float   xmin = 0.0
        float   xmax = 1000.0
        int     xdivs = 50

        call KCd9 TABCREATE Z {xdivs} {xmin} {xmax}
        int i
        float x,dx,y
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)
            if (x < 250.0)
                y = x/250.0
            else
                y = 1.0
            end
            /* activation will be computed as Z_A/Z_B */
            setfield KCd9 Z_A->table[{i}] {y}
            setfield KCd9 Z_B->table[{i}] 1.0
            x = x + dx
        end
        setfield KCd9 Z_A->calc_mode 0 Z_B->calc_mode 0
        setfield KCd9 Zpower 1
// Make it an instantaneous gate (no time constant)
    setfield KCd9 instant {INSTANTZ}
// Expand the table to 3000 entries to use without interpolation.
    call KCd9 TABFILL Z 3000 0

// Now we need to provide for messages that link to external elements.
// The message that sends the Ca concentration to the Z gate tables is stored
// in an added field of the channel, so that it may be found by the cell
// reader.
        addfield KCd9 addmsg1
        setfield KCd9 addmsg1  "../Ca_d9  . CONCEN Ca"
end


//========================================================================
//             Tabulated Ca-dependent K AHP Channel,gK(AHP) 2003/05
//========================================================================

/* This is a tabchannel which gets the calcium concentration from Ca_hip_conc
   in order to calculate the activation of its Z gate.  It is set up much
   like the Ca channel, except that the A and B tables have values which are
   functions of concentration, instead of voltage.
*/

function make_KAHPs9
        if ({exists KAHPs9})
                return
        end

        create  tabchannel      KAHPs9
                setfield        ^       \
                Ek              {EKP5IBd}   \               //      V
                Gbar            { 8 * SOMA_A }    \    //      S
                Ik              0       \              //      A
                Gk              0       \              //      S
                Xpower  0       \
                Ypower  0       \
                Zpower  1

// Allocate space in the Z gate A and B tables, covering a concentration
// range from xmin = 0 to xmax = 1000, with 50 divisions
        float   xmin = 0.0
        float   xmax = 1000.0
        int     xdivs = 50

        call KAHPs9 TABCREATE Z {xdivs} {xmin} {xmax}
        int i
        float x,dx,y
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)
            if (x < 100.0)
                y = 0.1*x
            else
                y = 10.0
            end
            setfield KAHPs9 Z_A->table[{i}] {y}
            setfield KAHPs9 Z_B->table[{i}] {y + 10.0}
            x = x + dx
        end
// For speed during execution, set the calculation mode to "no interpolation"
// and use TABFILL to expand the table to 3000 entries.
        setfield KAHPs9 Z_A->calc_mode 0   Z_B->calc_mode 0
        call KAHPs9 TABFILL Z 3000 0
// Use an added field to tell the cell reader to set up the
// CONCEN message from the Ca_concen element
        addfield KAHPs9 addmsg1
        setfield KAHPs9  \
                addmsg1        "../Ca_s9 . CONCEN Ca"
end


function make_KAHPd9
        if ({exists KAHPd9})
                return
        end

        create  tabchannel      KAHPd9
                setfield        ^       \
                Ek              {EKP5IBd}   \               //      V
                Gbar            { 8 * SOMA_A }    \    //      S
                Ik              0       \              //      A
                Gk              0       \              //      S
                Xpower  0       \
                Ypower  0       \
                Zpower  1

// Allocate space in the Z gate A and B tables, covering a concentration
// range from xmin = 0 to xmax = 1000, with 50 divisions
        float   xmin = 0.0
        float   xmax = 1000.0
        int     xdivs = 50

        call KAHPd9 TABCREATE Z {xdivs} {xmin} {xmax}
        int i
        float x,dx,y
        dx = (xmax - xmin)/xdivs
        x = xmin
        for (i = 0 ; i <= {xdivs} ; i = i + 1)
            if (x < 100.0)
                y = 0.1*x
            else
                y = 10.0
            end
            setfield KAHPd9 Z_A->table[{i}] {y}
            setfield KAHPd9 Z_B->table[{i}] {y + 10.0}
            x = x + dx
        end
// For speed during execution, set the calculation mode to "no interpolation"
// and use TABFILL to expand the table to 3000 entries.
        setfield KAHPd9 Z_A->calc_mode 0   Z_B->calc_mode 0
        call KAHPd9 TABFILL Z 3000 0
// Use an added field to tell the cell reader to set up the
// CONCEN message from the Ca_concen element
        addfield KAHPd9 addmsg1
        setfield KAHPd9  \
                addmsg1        "../Ca_d9 . CONCEN Ca"
end




