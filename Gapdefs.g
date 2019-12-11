// genesis
//Gapdefs.g

// Create Gap Junctions

     include config_neuron_x_neuron/P23RSa_P23RSa_Gap.g
     include config_neuron_x_neuron/P23RSa_P23RSb_Gap.g
     include config_neuron_x_neuron/P23RSa_P23RSc_Gap.g
     include config_neuron_x_neuron/P23RSa_P23RSd_Gap.g

     include config_neuron_x_neuron/P23RSb_P23RSb_Gap.g
     include config_neuron_x_neuron/P23RSb_P23RSc_Gap.g
     include config_neuron_x_neuron/P23RSb_P23RSd_Gap.g

     include config_neuron_x_neuron/P23RSc_P23RSc_Gap.g
     include config_neuron_x_neuron/P23RSc_P23RSd_Gap.g

     include config_neuron_x_neuron/P23RSd_P23RSd_Gap.g

if ({columntype == 0})

     include config_neuron_x_neuron/B23FS_B23FS_Gap.g

end

if ({columntype == 1})

     include config_neuron_x_neuron/B23FS_B23FS_TraubGap.g

end

     include config_neuron_x_neuron/P5IBa_P5IBa_Gap.g
     include config_neuron_x_neuron/P5IBa_P5IBb_Gap.g
     include config_neuron_x_neuron/P5IBa_P5IBc_Gap.g
     include config_neuron_x_neuron/P5IBa_P5IBd_Gap.g

     include config_neuron_x_neuron/P5IBb_P5IBb_Gap.g
     include config_neuron_x_neuron/P5IBb_P5IBc_Gap.g
     include config_neuron_x_neuron/P5IBb_P5IBd_Gap.g

     include config_neuron_x_neuron/P5IBc_P5IBc_Gap.g
     include config_neuron_x_neuron/P5IBc_P5IBd_Gap.g

     include config_neuron_x_neuron/P5IBd_P5IBd_Gap.g

if ({columntype == 0})

     include config_neuron_x_neuron/B5FS_B5FS_Gap.g

end

if ({columntype == 1})

     include config_neuron_x_neuron/B5FS_B5FS_TraubGap.g

end

if ({columntype == 0})

     include config_neuron_x_neuron/P6RSa_P6RSa_Gap.g
     include config_neuron_x_neuron/P6RSa_P6RSb_Gap.g
     include config_neuron_x_neuron/P6RSa_P6RSc_Gap.g
     include config_neuron_x_neuron/P6RSa_P6RSd_Gap.g

     include config_neuron_x_neuron/P6RSb_P6RSb_Gap.g
     include config_neuron_x_neuron/P6RSb_P6RSc_Gap.g
     include config_neuron_x_neuron/P6RSb_P6RSd_Gap.g

     include config_neuron_x_neuron/P6RSc_P6RSc_Gap.g
     include config_neuron_x_neuron/P6RSc_P6RSd_Gap.g

     include config_neuron_x_neuron/P6RSd_P6RSd_Gap.g

end

if ({columntype == 1})

     include config_neuron_x_neuron/P6RSa_P6RSa_Gap.g
     include config_neuron_x_neuron/P6RSa_P6RSb_Gap.g

     include config_neuron_x_neuron/P6RSb_P6RSb_Gap.g

end

     include config_neuron_x_neuron/ST4RS_ST4RS_Gap.g

if ({columntype == 0})

     include config_neuron_x_neuron/I23LTS_I23LTS_Gap.g

end

if ({columntype == 1})

     include config_neuron_x_neuron/I23LTS_I23LTS_TraubGap.g

end

if ({columntype == 0})

     include config_neuron_x_neuron/I5LTS_I5LTS_Gap.g

end

if ({columntype == 1})

     include config_neuron_x_neuron/I5LTS_I5LTS_TraubGap.g

end

if ({thalamocortical == 1})

     if ({columntype == 0})

          include config_neuron_x_neuron/nRT_nRT_Gap.g

     end

     if ({columntype == 1})

          include config_neuron_x_neuron/nRT_nRT_TraubGap.g

     end

end

    include config_neuron_x_neuron/P5IBa_P5RSa_Gap.g
    include config_neuron_x_neuron/P5IBb_P5RSa_Gap.g
    include config_neuron_x_neuron/P5IBc_P5RSa_Gap.g
    include config_neuron_x_neuron/P5IBd_P5RSa_Gap.g

    include config_neuron_x_neuron/P5RSa_P5RSa_Gap.g

if ({columntype == 1})

          include config_neuron_x_neuron/P23RSa_P23FRBa_TraubGap.g
          include config_neuron_x_neuron/P23RSb_P23FRBa_TraubGap.g
          include config_neuron_x_neuron/P23RSc_P23FRBa_TraubGap.g
          include config_neuron_x_neuron/P23RSd_P23FRBa_TraubGap.g

end

if ({columntype == 0})

          include config_neuron_x_neuron/P23RSa_P23FRBa_Gap.g
          include config_neuron_x_neuron/P23RSb_P23FRBa_Gap.g
          include config_neuron_x_neuron/P23RSc_P23FRBa_Gap.g
          include config_neuron_x_neuron/P23RSd_P23FRBa_Gap.g

end

    include config_neuron_x_neuron/P23FRBa_P23FRBa_Gap.g
