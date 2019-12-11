
//P23RS - P6RSd AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSd/{s}

     make_Ex_ch14P23RSAMPA
     setfield /P6RSd/{s}/Ex_ch14P23RSAMPA gmax {CondmaxP23RSAMPA_P6RS}
     addmsg /P6RSd/{s}/Ex_ch14P23RSAMPA /P6RSd/{s} CHANNEL Gk Ek
     addmsg /P6RSd/{s} /P6RSd/{s}/Ex_ch14P23RSAMPA VOLTAGE Vm

     ce /

end

//P23RS - P6RSd NMDA synapses

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSd/{s}

     make_Ex_ch14P23RSNMDA
     setfield /P6RSd/{s}/Ex_ch14P23RSNMDA gmax {CondmaxP23RSNMDA_P6RS}
     addmsg /P6RSd/{s}/Ex_ch14P23RSNMDA /P6RSd/{s} CHANNEL Gk Ek
     addmsg /P6RSd/{s} /P6RSd/{s}/Ex_ch14P23RSNMDA VOLTAGE Vm

     ce /

end

//P5IB - P6RSd AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSd/{s}

     make_Ex_ch14P5IBAMPA
     setfield /P6RSd/{s}/Ex_ch14P5IBAMPA gmax {CondmaxP5IBAMPA_P6RS}
     addmsg /P6RSd/{s}/Ex_ch14P5IBAMPA /P6RSd/{s} CHANNEL Gk Ek
     addmsg /P6RSd/{s} /P6RSd/{s}/Ex_ch14P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - P6RSd NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSd/{s}

     make_Ex_ch14P5IBNMDA
     setfield /P6RSd/{s}/Ex_ch14P5IBNMDA gmax {CondmaxP5IBNMDA_P6RS}
     addmsg /P6RSd/{s}/Ex_ch14P5IBNMDA /P6RSd/{s} CHANNEL Gk Ek
     addmsg /P6RSd/{s} /P6RSd/{s}/Ex_ch14P5IBNMDA VOLTAGE Vm

     ce /

end

//B5FS - P6RSd GABAa synapses

str s

//Load synapse location array

str locations = "soma apdend1 basalLsupera basalLmida basalRsupera basalRmida basaldeepa"

foreach s ({arglist {locations}})

     ce /P6RSd/{s}

     make_Inh_ch14B5FSGABAa
     setfield /P6RSd/{s}/Inh_ch14B5FSGABAa gmax {CondmaxB5FSGABAa_P6RS}
     addmsg /P6RSd/{s}/Inh_ch14B5FSGABAa /P6RSd/{s} CHANNEL Gk Ek
     addmsg /P6RSd/{s} /P6RSd/{s}/Inh_ch14B5FSGABAa VOLTAGE Vm

     ce /

end

//P6RS - P6RSd AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSd/{s}

     make_Ex_ch14P6RSAMPA
     setfield /P6RSd/{s}/Ex_ch14P6RSAMPA gmax {CondmaxP6RSAMPA_P6RS}
     addmsg /P6RSd/{s}/Ex_ch14P6RSAMPA /P6RSd/{s} CHANNEL Gk Ek
     addmsg /P6RSd/{s} /P6RSd/{s}/Ex_ch14P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - P6RSd NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSd/{s}

     make_Ex_ch14P6RSNMDA
     setfield /P6RSd/{s}/Ex_ch14P6RSNMDA gmax {CondmaxP6RSNMDA_P6RS}
     addmsg /P6RSd/{s}/Ex_ch14P6RSNMDA /P6RSd/{s} CHANNEL Gk Ek
     addmsg /P6RSd/{s} /P6RSd/{s}/Ex_ch14P6RSNMDA VOLTAGE Vm

     ce /

end

//C23FS - P6RSd GABAa synapses

ce /P6RSd/axona

make_Inh_ch14C23FSGABAa
setfield /P6RSd/axona/Inh_ch14C23FSGABAa gmax {CondmaxC23FSGABAa_P6RS}
addmsg /P6RSd/axona/Inh_ch14C23FSGABAa /P6RSd/axona CHANNEL Gk Ek
addmsg /P6RSd/axona /P6RSd/axona/Inh_ch14C23FSGABAa VOLTAGE Vm

ce /

//C5FS - P6RSd GABAa synapses

ce /P6RSd/axona

make_Inh_ch14C5FSGABAa
setfield /P6RSd/axona/Inh_ch14C5FSGABAa gmax {CondmaxC5FSGABAa_P6RS}
addmsg /P6RSd/axona/Inh_ch14C5FSGABAa /P6RSd/axona CHANNEL Gk Ek
addmsg /P6RSd/axona /P6RSd/axona/Inh_ch14C5FSGABAa VOLTAGE Vm

ce /

//ST4RS - P6RSd AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7"

foreach s ({arglist {locations}})

     ce /P6RSd/{s}

     make_Ex_ch14ST4RSAMPA
     setfield /P6RSd/{s}/Ex_ch14ST4RSAMPA gmax {CondmaxST4RSAMPA_P6RS}
     addmsg /P6RSd/{s}/Ex_ch14ST4RSAMPA /P6RSd/{s} CHANNEL Gk Ek
     addmsg /P6RSd/{s} /P6RSd/{s}/Ex_ch14ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - P6RSd NMDA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7"

foreach s ({arglist {locations}})

     ce /P6RSd/{s}

     make_Ex_ch14ST4RSNMDA
     setfield /P6RSd/{s}/Ex_ch14ST4RSNMDA gmax {CondmaxST4RSNMDA_P6RS}
     addmsg /P6RSd/{s}/Ex_ch14ST4RSNMDA /P6RSd/{s} CHANNEL Gk Ek
     addmsg /P6RSd/{s} /P6RSd/{s}/Ex_ch14ST4RSNMDA VOLTAGE Vm

     ce /

end

//I23LTS - P6RSd GABAa synapses

str s

//Load synapse location array

str locations = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSd/{s}

     make_Inh_ch14I23LTSGABAa
     setfield /P6RSd/{s}/Inh_ch14I23LTSGABAa gmax {CondmaxI23LTSGABAa_P6RS}
     addmsg /P6RSd/{s}/Inh_ch14I23LTSGABAa /P6RSd/{s} CHANNEL Gk Ek
     addmsg /P6RSd/{s} /P6RSd/{s}/Inh_ch14I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - P6RSd GABAa synapses

str s

//Load synapse location array

str locations = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSd/{s}

     make_Inh_ch14I5LTSGABAa
     setfield /P6RSd/{s}/Inh_ch14I5LTSGABAa gmax {CondmaxI5LTSGABAa_P6RS}
     addmsg /P6RSd/{s}/Inh_ch14I5LTSGABAa /P6RSd/{s} CHANNEL Gk Ek
     addmsg /P6RSd/{s} /P6RSd/{s}/Inh_ch14I5LTSGABAa VOLTAGE Vm

     ce /

end

//TCR - P6RSd AMPA synapses

str s

//Load synapse location array

str locations = "apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSd/{s}

     make_Ex_ch14TCRAMPA
     setfield /P6RSd/{s}/Ex_ch14TCRAMPA gmax {CondmaxTCRAMPA_P6RS}
     addmsg /P6RSd/{s}/Ex_ch14TCRAMPA /P6RSd/{s} CHANNEL Gk Ek
     addmsg /P6RSd/{s} /P6RSd/{s}/Ex_ch14TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - P6RSd NMDA synapses

str s

//Load synapse location array

str locations = "apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSd/{s}

     make_Ex_ch14TCRNMDA
     setfield /P6RSd/{s}/Ex_ch14TCRNMDA gmax {CondmaxTCRNMDA_P6RS}
     addmsg /P6RSd/{s}/Ex_ch14TCRNMDA /P6RSd/{s} CHANNEL Gk Ek
     addmsg /P6RSd/{s} /P6RSd/{s}/Ex_ch14TCRNMDA VOLTAGE Vm

     ce /

end

//P23FRB - P6RSd AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSd/{s}

     make_Ex_ch14P23FRBAMPA
     setfield /P6RSd/{s}/Ex_ch14P23FRBAMPA gmax {CondmaxP23FRBAMPA_P6RS}
     addmsg /P6RSd/{s}/Ex_ch14P23FRBAMPA /P6RSd/{s} CHANNEL Gk Ek
     addmsg /P6RSd/{s} /P6RSd/{s}/Ex_ch14P23FRBAMPA VOLTAGE Vm

     ce /

end

//P23FRB - P6RSd NMDA synapses

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSd/{s}

     make_Ex_ch14P23FRBNMDA
     setfield /P6RSd/{s}/Ex_ch14P23FRBNMDA gmax {CondmaxP23FRBNMDA_P6RS}
     addmsg /P6RSd/{s}/Ex_ch14P23FRBNMDA /P6RSd/{s} CHANNEL Gk Ek
     addmsg /P6RSd/{s} /P6RSd/{s}/Ex_ch14P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - P6RSd AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSd/{s}

     make_Ex_ch14P5RSAMPA
     setfield /P6RSd/{s}/Ex_ch14P5RSAMPA gmax {CondmaxP5RSAMPA_P6RS}
     addmsg /P6RSd/{s}/Ex_ch14P5RSAMPA /P6RSd/{s} CHANNEL Gk Ek
     addmsg /P6RSd/{s} /P6RSd/{s}/Ex_ch14P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - P6RSd NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSd/{s}

     make_Ex_ch14P5RSNMDA
     setfield /P6RSd/{s}/Ex_ch14P5RSNMDA gmax {CondmaxP5RSNMDA_P6RS}
     addmsg /P6RSd/{s}/Ex_ch14P5RSNMDA /P6RSd/{s} CHANNEL Gk Ek
     addmsg /P6RSd/{s} /P6RSd/{s}/Ex_ch14P5RSNMDA VOLTAGE Vm

     ce /

end
