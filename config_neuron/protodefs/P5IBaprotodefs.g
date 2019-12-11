// protodefs.g - Definition of prototype elements for Tutorial #5

/* file for standard compartments */
include compartments.g

// include the definitions for the functions to create H-H channels

//include traub91_03chan
include config_neuron/chan/P5IBachan.g

/* hhchan.g assigns values to the global variables EREST_ACT, ENA, EK, and
   SOMA_A.  The first three will be superseded by values defined below.  The
   value of SOMA_A is not relevant, as the cell reader calculates the
   compartment area.  */

EREST_ACT = -0.07	// resting membrane potential (volts)
ENAP5IBa   = 0.050           // sodium equilibrium potential
EKP5IBa    = -0.095          // potassium equilibrium potential
ECAP5IBa   = 0.125           // calcium equilibrium potential (0.125)
EARP5IBa   = -0.035          // anomalous rectifier reversal

/* file for synaptic channels */
include config_neuron/synchans/synchansP5IBa.g

/* file which makes a spike generator */
include config_neuron/protospike/protospikeP5IBa.g
include config_neuron/protospike/protospikeP5IBa_longrange.g

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

// Create the prototype H-H channels "Na_squid_hh" and "K_squid_hh"
//make_Na_squid_hh
//make_K_squid_hh

// Create the Traub Na(F) fast transient sodium channel
make_NaF6

// Create the Traub Na(P) persistent noninactivating sodium channel
make_NaP6

// Create the Traub K(DR) delayed rectifier potassium channel
make_KDR6

// Create the Traub K(A) transient potassium channel
make_KA6

// Create the Traub K2 slow activating/inactivating  potassium channel
make_K26

// Create the Traub M muscarinic receptor supressed potassium channel
make_KM6

// Create the Traub low threshold transient Ca channel
make_CaL6

// Create the Traub high threshold transient Ca channel
make_CaH6

// Create a Ca_concen element using the above Ca currents
make_Ca_s6
make_Ca_d6

// Create the Traub calcium dependent K channel
make_KCs6
make_KCd6

// Create the Traub calcium dependent K-AHP channel
make_KAHPs6
make_KAHPd6

// Create the Traub anomalous rectifier channel
make_AR6

pope
