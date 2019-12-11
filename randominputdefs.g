// genesis
// randominputdefs.g

// Create Random Background Inputs

include config_neuron/raninput/P23RSa_raninput.g
include config_neuron/raninput/P23RSb_raninput.g
include config_neuron/raninput/P23RSc_raninput.g
include config_neuron/raninput/P23RSd_raninput.g

include config_neuron/raninput/B23FS_raninput.g

include config_neuron/raninput/P5IBa_raninput.g
include config_neuron/raninput/P5IBb_raninput.g
include config_neuron/raninput/P5IBc_raninput.g
include config_neuron/raninput/P5IBd_raninput.g

include config_neuron/raninput/B5FS_raninput.g

include config_neuron/raninput/P6RSa_raninput.g
include config_neuron/raninput/P6RSb_raninput.g

if ({columntype == 0})

    //include config_neuron/raninput/P6RSc_raninput.g
    //include config_neuron/raninput/P6RSd_raninput.g

end

include config_neuron/raninput/C23FS_raninput.g
include config_neuron/raninput/C5FS_raninput.g

include config_neuron/raninput/ST4RS_raninput.g

include config_neuron/raninput/I23LTS_raninput.g
include config_neuron/raninput/I5LTS_raninput.g

if ({thalamocortical == 1})
 
  //  include config_neuron/raninput/TCR_raninput.g
  //  include config_neuron/raninput/nRT_raninput.g

end

include config_neuron/raninput/P23FRBa_raninput.g
include config_neuron/raninput/P5RSa_raninput.g
