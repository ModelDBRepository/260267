// protodefs.g - Definition of prototype elements for Tutorial #5

/* file for standard compartments */
include compartments.g

// include the definitions for the functions to create H-H channels

include config_neuron/chan/P6RSdchan.g

/* hhchan.g assigns values to the global variables EREST_ACT, ENA, EK, and
   SOMA_A.  The first three will be superseded by values defined below.  The
   value of SOMA_A is not relevant, as the cell reader calculates the
   compartment area.  */

EREST_ACT = -0.07	// resting membrane potential (volts)
ENAP6RSd   = 0.050           // sodium equilibrium potential
EKP6RSd    = -0.095          // potassium equilibrium potential
ECAP6RSd   = 0.125           // calcium equilibrium potential
EARP6RSd   = -0.035          // anomalous rectifier reversal

/* file for synaptic channels */
include config_neuron/synchans/synchansP6RSd.g

/* file which makes a spike generator */
include config_neuron/protospike/protospikeP6RSd.g
include config_neuron/protospike/protospikeP6RSd_longrange.g

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
make_NaF14

// Create the Traub Na(P) persistent noninactivating sodium channel
make_NaP14

// Create the Traub K(DR) delayed rectifier potassium channel
make_KDR14

// Create the Traub K(A) transient potassium channel
make_KA14

// Create the Traub K2 slow activating/inactivating  potassium channel
make_K214

// Create the Traub M muscarinic receptor supressed potassium channel
make_KM14

// Create the Traub low threshold transient Ca channel
make_CaL14

// Create the Traub high threshold transient Ca channel
make_CaH14

// Create a Ca_concen element using the above Ca currents
make_Ca_s14
make_Ca_d14

// Create the Traub calcium dependent K channel
make_KCs14
make_KCd14

// Create the Traub calcium dependent K-AHP channel
make_KAHPs14
make_KAHPd14

// Create the Traub anomalous rectifier channel
make_AR14

//make_spk14      /* Make a spike generator element "spike"*/

pope
