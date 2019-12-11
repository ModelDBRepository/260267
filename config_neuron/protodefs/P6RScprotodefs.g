// protodefs.g - Definition of prototype elements for Tutorial #5

/* file for standard compartments */
include compartments.g

// include the definitions for the functions to create H-H channels

include config_neuron/chan/P6RScchan.g

/* hhchan.g assigns values to the global variables EREST_ACT, ENA, EK, and
   SOMA_A.  The first three will be superseded by values defined below.  The
   value of SOMA_A is not relevant, as the cell reader calculates the
   compartment area.  */

EREST_ACT = -0.07	// resting membrane potential (volts)
ENAP6RSc   = 0.050           // sodium equilibrium potential
EKP6RSc    = -0.095          // potassium equilibrium potential
ECAP6RSc   = 0.125           // calcium equilibrium potential
EARP6RSc   = -0.035          // anomalous rectifier reversal

/* file for synaptic channels */
include config_neuron/synchans/synchansP6RSc.g

/* file which makes a spike generator */
include config_neuron/protospike/protospikeP6RSc.g
include config_neuron/protospike/protospikeP6RSc_longrange.g

// Make a "library element" to hold the prototypes which will be used
// by the cell reader to add compartments and channels to the cell.
create neutral /library

// We don't want the library to try to calculate anything, so we disable it
disable /library

// To ensure that all subsequent elements are made in the library
pushe /library

// Make a prototype compartment.  The internal fields will be set by
// the cell reader, so they do not need to be set here.
make_cylind_compartment         /* makes "compartment" */

// Create the Traub Na(F) fast transient sodium channel
make_NaF13

// Create the Traub Na(P) persistent noninactivating sodium channel
make_NaP13

// Create the Traub K(DR) delayed rectifier potassium channel
make_KDR13

// Create the Traub K(A) transient potassium channel
make_KA13

// Create the Traub K2 slow activating/inactivating  potassium channel
make_K213

// Create the Traub M muscarinic receptor supressed potassium channel
make_KM13

// Create the Traub low threshold transient Ca channel
make_CaL13

// Create the Traub high threshold transient Ca channel
make_CaH13

// Create a Ca_concen element using the above Ca currents
make_Ca_s13
make_Ca_d13

// Create the Traub calcium dependent K channel
make_KCs13
make_KCd13

// Create the Traub calcium dependent K-AHP channel
make_KAHPs13
make_KAHPd13

// Create the Traub anomalous rectifier channel
make_AR13

//make_spk13      /* Make a spike generator element "spike"*/

pope
