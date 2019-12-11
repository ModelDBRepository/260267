
//P23RS - P6RSc AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSc/{s}

     make_Ex_ch13P23RSAMPA
     setfield /P6RSc/{s}/Ex_ch13P23RSAMPA gmax {CondmaxP23RSAMPA_P6RS}
     addmsg /P6RSc/{s}/Ex_ch13P23RSAMPA /P6RSc/{s} CHANNEL Gk Ek
     addmsg /P6RSc/{s} /P6RSc/{s}/Ex_ch13P23RSAMPA VOLTAGE Vm

     ce /

end

//P23RS - P6RSc NMDA synapses

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSc/{s}

     make_Ex_ch13P23RSNMDA
     setfield /P6RSc/{s}/Ex_ch13P23RSNMDA gmax {CondmaxP23RSNMDA_P6RS}
     addmsg /P6RSc/{s}/Ex_ch13P23RSNMDA /P6RSc/{s} CHANNEL Gk Ek
     addmsg /P6RSc/{s} /P6RSc/{s}/Ex_ch13P23RSNMDA VOLTAGE Vm

     ce /

end

//P5IB - P6RSc AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSc/{s}

     make_Ex_ch13P5IBAMPA
     setfield /P6RSc/{s}/Ex_ch13P5IBAMPA gmax {CondmaxP5IBAMPA_P6RS}
     addmsg /P6RSc/{s}/Ex_ch13P5IBAMPA /P6RSc/{s} CHANNEL Gk Ek
     addmsg /P6RSc/{s} /P6RSc/{s}/Ex_ch13P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - P6RSc NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSc/{s}

     make_Ex_ch13P5IBNMDA
     setfield /P6RSc/{s}/Ex_ch13P5IBNMDA gmax {CondmaxP5IBNMDA_P6RS}
     addmsg /P6RSc/{s}/Ex_ch13P5IBNMDA /P6RSc/{s} CHANNEL Gk Ek
     addmsg /P6RSc/{s} /P6RSc/{s}/Ex_ch13P5IBNMDA VOLTAGE Vm

     ce /

end

//B5FS - P6RSc GABAa synapses

str s

//Load synapse location array

str locations = "soma apdend1 basalLsupera basalLmida basalRsupera basalRmida basaldeepa"

foreach s ({arglist {locations}})

     ce /P6RSc/{s}

     make_Inh_ch13B5FSGABAa
     setfield /P6RSc/{s}/Inh_ch13B5FSGABAa gmax {CondmaxB5FSGABAa_P6RS}
     addmsg /P6RSc/{s}/Inh_ch13B5FSGABAa /P6RSc/{s} CHANNEL Gk Ek
     addmsg /P6RSc/{s} /P6RSc/{s}/Inh_ch13B5FSGABAa VOLTAGE Vm

     ce /

end

//P6RS - P6RSc AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSc/{s}

     make_Ex_ch13P6RSAMPA
     setfield /P6RSc/{s}/Ex_ch13P6RSAMPA gmax {CondmaxP6RSAMPA_P6RS}
     addmsg /P6RSc/{s}/Ex_ch13P6RSAMPA /P6RSc/{s} CHANNEL Gk Ek
     addmsg /P6RSc/{s} /P6RSc/{s}/Ex_ch13P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - P6RSc NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSc/{s}

     make_Ex_ch13P6RSNMDA
     setfield /P6RSc/{s}/Ex_ch13P6RSNMDA gmax {CondmaxP6RSNMDA_P6RS}
     addmsg /P6RSc/{s}/Ex_ch13P6RSNMDA /P6RSc/{s} CHANNEL Gk Ek
     addmsg /P6RSc/{s} /P6RSc/{s}/Ex_ch13P6RSNMDA VOLTAGE Vm

     ce /

end

//C23FS - P6RSc GABAa synapses

ce /P6RSc/axona

make_Inh_ch13C23FSGABAa
setfield /P6RSc/axona/Inh_ch13C23FSGABAa gmax {CondmaxC23FSGABAa_P6RS}
addmsg /P6RSc/axona/Inh_ch13C23FSGABAa /P6RSc/axona CHANNEL Gk Ek
addmsg /P6RSc/axona /P6RSc/axona/Inh_ch13C23FSGABAa VOLTAGE Vm

ce /

//C5FS - P6RSc GABAa synapses

ce /P6RSc/axona

make_Inh_ch13C5FSGABAa
setfield /P6RSc/axona/Inh_ch13C5FSGABAa gmax {CondmaxC5FSGABAa_P6RS}
addmsg /P6RSc/axona/Inh_ch13C5FSGABAa /P6RSc/axona CHANNEL Gk Ek
addmsg /P6RSc/axona /P6RSc/axona/Inh_ch13C5FSGABAa VOLTAGE Vm

ce /

//ST4RS - P6RSc AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7"

foreach s ({arglist {locations}})

     ce /P6RSc/{s}

     make_Ex_ch13ST4RSAMPA
     setfield /P6RSc/{s}/Ex_ch13ST4RSAMPA gmax {CondmaxST4RSAMPA_P6RS}
     addmsg /P6RSc/{s}/Ex_ch13ST4RSAMPA /P6RSc/{s} CHANNEL Gk Ek
     addmsg /P6RSc/{s} /P6RSc/{s}/Ex_ch13ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - P6RSc NMDA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7"

foreach s ({arglist {locations}})

     ce /P6RSc/{s}

     make_Ex_ch13ST4RSNMDA
     setfield /P6RSc/{s}/Ex_ch13ST4RSNMDA gmax {CondmaxST4RSNMDA_P6RS}
     addmsg /P6RSc/{s}/Ex_ch13ST4RSNMDA /P6RSc/{s} CHANNEL Gk Ek
     addmsg /P6RSc/{s} /P6RSc/{s}/Ex_ch13ST4RSNMDA VOLTAGE Vm

     ce /

end

//I23LTS - P6RSc GABAa synapses

str s

//Load synapse location array

str locations = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSc/{s}

     make_Inh_ch13I23LTSGABAa
     setfield /P6RSc/{s}/Inh_ch13I23LTSGABAa gmax {CondmaxI23LTSGABAa_P6RS}
     addmsg /P6RSc/{s}/Inh_ch13I23LTSGABAa /P6RSc/{s} CHANNEL Gk Ek
     addmsg /P6RSc/{s} /P6RSc/{s}/Inh_ch13I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - P6RSc GABAa synapses

str s

//Load synapse location array

str locations = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSc/{s}

     make_Inh_ch13I5LTSGABAa
     setfield /P6RSc/{s}/Inh_ch13I5LTSGABAa gmax {CondmaxI5LTSGABAa_P6RS}
     addmsg /P6RSc/{s}/Inh_ch13I5LTSGABAa /P6RSc/{s} CHANNEL Gk Ek
     addmsg /P6RSc/{s} /P6RSc/{s}/Inh_ch13I5LTSGABAa VOLTAGE Vm

     ce /

end

//TCR - P6RSc AMPA synapses

str s

//Load synapse location array

str locations = "apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSc/{s}

     make_Ex_ch13TCRAMPA
     setfield /P6RSc/{s}/Ex_ch13TCRAMPA gmax {CondmaxTCRAMPA_P6RS}
     addmsg /P6RSc/{s}/Ex_ch13TCRAMPA /P6RSc/{s} CHANNEL Gk Ek
     addmsg /P6RSc/{s} /P6RSc/{s}/Ex_ch13TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - P6RSc NMDA synapses

str s

//Load synapse location array

str locations = "apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSc/{s}

     make_Ex_ch13TCRNMDA
     setfield /P6RSc/{s}/Ex_ch13TCRNMDA gmax {CondmaxTCRNMDA_P6RS}
     addmsg /P6RSc/{s}/Ex_ch13TCRNMDA /P6RSc/{s} CHANNEL Gk Ek
     addmsg /P6RSc/{s} /P6RSc/{s}/Ex_ch13TCRNMDA VOLTAGE Vm

     ce /

end

//P23FRB - P6RSc AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSc/{s}

     make_Ex_ch13P23FRBAMPA
     setfield /P6RSc/{s}/Ex_ch13P23FRBAMPA gmax {CondmaxP23FRBAMPA_P6RS}
     addmsg /P6RSc/{s}/Ex_ch13P23FRBAMPA /P6RSc/{s} CHANNEL Gk Ek
     addmsg /P6RSc/{s} /P6RSc/{s}/Ex_ch13P23FRBAMPA VOLTAGE Vm

     ce /

end

//P23FRB - P6RSc NMDA synapses

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSc/{s}

     make_Ex_ch13P23FRBNMDA
     setfield /P6RSc/{s}/Ex_ch13P23FRBNMDA gmax {CondmaxP23FRBNMDA_P6RS}
     addmsg /P6RSc/{s}/Ex_ch13P23FRBNMDA /P6RSc/{s} CHANNEL Gk Ek
     addmsg /P6RSc/{s} /P6RSc/{s}/Ex_ch13P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - P6RSc AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSc/{s}

     make_Ex_ch13P5RSAMPA
     setfield /P6RSc/{s}/Ex_ch13P5RSAMPA gmax {CondmaxP5RSAMPA_P6RS}
     addmsg /P6RSc/{s}/Ex_ch13P5RSAMPA /P6RSc/{s} CHANNEL Gk Ek
     addmsg /P6RSc/{s} /P6RSc/{s}/Ex_ch13P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - P6RSc NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSc/{s}

     make_Ex_ch13P5RSNMDA
     setfield /P6RSc/{s}/Ex_ch13P5RSNMDA gmax {CondmaxP5RSNMDA_P6RS}
     addmsg /P6RSc/{s}/Ex_ch13P5RSNMDA /P6RSc/{s} CHANNEL Gk Ek
     addmsg /P6RSc/{s} /P6RSc/{s}/Ex_ch13P5RSNMDA VOLTAGE Vm

     ce /

end
