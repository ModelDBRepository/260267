// genesis
// Neocortex - celldefs.g

// Define P23RSa cells

include config_neuron/protodefs/P23RSaprotodefs.g

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/P23RSacell3D.p /P23RSa -hsolve

include config_neuron/synapsedefs/P23RSa_synapsedefs.g

setfield /P23RSa/apdend3 inject 0.0

delete /library

// Define P23RSb cells

include config_neuron/protodefs/P23RSbprotodefs.g

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/P23RSbcell3D.p /P23RSb -hsolve

include config_neuron/synapsedefs/P23RSb_synapsedefs.g

delete /library

// Define P23RSc cells

include config_neuron/protodefs/P23RScprotodefs.g 

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/P23RSccell3D.p /P23RSc -hsolve

include config_neuron/synapsedefs/P23RSc_synapsedefs.g

delete /library

// Define P23RSd cells

include config_neuron/protodefs/P23RSdprotodefs.g

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/P23RSdcell3D.p /P23RSd -hsolve

include config_neuron/synapsedefs/P23RSd_synapsedefs.g

delete /library

// Define B23FS cells

include config_neuron/protodefs/B23FSprotodefs.g

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/B23FScell3D.p /B23FS -hsolve

include config_neuron/synapsedefs/B23FS_synapsedefs.g

delete /library

// Define P5IBa cells

include config_neuron/protodefs/P5IBaprotodefs.g

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/P5IBacell3D.p /P5IBa -hsolve

include config_neuron/synapsedefs/P5IBa_synapsedefs.g

delete /library

// Define P5IBb cells

include config_neuron/protodefs/P5IBbprotodefs.g

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/P5IBbcell3D.p /P5IBb -hsolve

include config_neuron/synapsedefs/P5IBb_synapsedefs.g

delete /library

// Define P5IBc cells
    
include config_neuron/protodefs/P5IBcprotodefs

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/P5IBccell3D.p /P5IBc -hsolve

include config_neuron/synapsedefs/P5IBc_synapsedefs.g

delete /library 

// Define P5IBd cells

include config_neuron/protodefs/P5IBdprotodefs.g

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/P5IBdcell3D.p /P5IBd -hsolve

include config_neuron/synapsedefs/P5IBd_synapsedefs.g

delete /library

// Define B5FS cells

include config_neuron/protodefs/B5FSprotodefs.g

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/B5FScell3D.p /B5FS -hsolve

include config_neuron/synapsedefs/B5FS_synapsedefs.g

delete /library

// Define P6RSa cells

include config_neuron/protodefs/P6RSaprotodefs.g

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/P6RSacell3D.p /P6RSa -hsolve

include config_neuron/synapsedefs/P6RSa_synapsedefs.g

delete /library

// Define P6RSb cells

include config_neuron/protodefs/P6RSbprotodefs.g

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/P6RSbcell3D.p /P6RSb -hsolve

include config_neuron/synapsedefs/P6RSb_synapsedefs.g

delete /library

if ({columntype == 0})

     // Define P6RSc cells

     include config_neuron/protodefs/P6RScprotodefs.g

     // Build the cell from a parameter file using the cell reader
     readcell config_neuron/parameters/P6RSccell3D.p /P6RSc -hsolve

     include config_neuron/synapsedefs/P6RSc_synapsedefs.g

     delete /library

     // Define P6RSd cells

     include config_neuron/protodefs/P6RSdprotodefs.g

     // Build the cell from a parameter file using the cell reader
     readcell config_neuron/parameters/P6RSdcell3D.p /P6RSd -hsolve

     include config_neuron/synapsedefs/P6RSd_synapsedefs.g

     delete /library

end

// Define C23FS cells

include config_neuron/protodefs/C23FSprotodefs.g

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/C23FScell3D.p /C23FS -hsolve

include config_neuron/synapsedefs/C23FS_synapsedefs.g

delete /library

// Define C5FS cells

include config_neuron/protodefs/C5FSprotodefs.g

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/C5FScell3D.p /C5FS -hsolve

include config_neuron/synapsedefs/C5FS_synapsedefs.g

delete /library

// Define ST4RS cells

include config_neuron/protodefs/ST4RSprotodefs.g

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/ST4RScell3D.p /ST4RS -hsolve

include config_neuron/synapsedefs/ST4RS_synapsedefs.g

delete /library

// Define I23LTS cells

include config_neuron/protodefs/I23LTSprotodefs.g

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/I23LTScell3D.p /I23LTS -hsolve

include config_neuron/synapsedefs/I23LTS_synapsedefs.g

delete /library

// Define I5LTS cells

include config_neuron/protodefs/I5LTSprotodefs.g

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/I5LTScell3D.p /I5LTS -hsolve

include config_neuron/synapsedefs/I5LTS_synapsedefs.g

delete /library

// Define TCR cells

if ({thalamocortical == 1})

     include config_neuron/protodefs/TCRprotodefs.g

// Build the cell from a parameter file using the cell reader

     readcell config_neuron/parameters/TCRcell.p /TCR -hsolve

     include config_neuron/synapsedefs/TCR_synapsedefs.g

     delete /library

     include config_neuron/protodefs/nRTprotodefs.g

// Build the cell from a parameter file using the cell reader

     readcell config_neuron/parameters/nRTcell.p /nRT -hsolve

     include config_neuron/synapsedefs/nRT_synapsedefs.g

     delete /library

end

// Define P23FRBa cells

include config_neuron/protodefs/P23FRBaprotodefs.g

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/P23FRBacell3D.p /P23FRBa -hsolve

include config_neuron/synapsedefs/P23FRBa_synapsedefs.g

delete /library

// Define P5RSa cells

include config_neuron/protodefs/P5RSaprotodefs.g

// Build the cell from a parameter file using the cell reader
readcell config_neuron/parameters/P5RSacell3D.p /P5RSa -hsolve

include config_neuron/synapsedefs/P5RSa_synapsedefs.g

delete /library
