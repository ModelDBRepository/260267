
//P23RS - P6RSb AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSb/{s}

     make_Ex_ch12P23RSAMPA
     setfield /P6RSb/{s}/Ex_ch12P23RSAMPA gmax {CondmaxP23RSAMPA_P6RS}
     addmsg /P6RSb/{s}/Ex_ch12P23RSAMPA /P6RSb/{s} CHANNEL Gk Ek
     addmsg /P6RSb/{s} /P6RSb/{s}/Ex_ch12P23RSAMPA VOLTAGE Vm

     ce /

end

//P23RS - P6RSb NMDA synapses

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSb/{s}

     make_Ex_ch12P23RSNMDA
     setfield /P6RSb/{s}/Ex_ch12P23RSNMDA gmax {CondmaxP23RSNMDA_P6RS}
     addmsg /P6RSb/{s}/Ex_ch12P23RSNMDA /P6RSb/{s} CHANNEL Gk Ek
     addmsg /P6RSb/{s} /P6RSb/{s}/Ex_ch12P23RSNMDA VOLTAGE Vm

     ce /

end

//P5IB - P6RSb AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSb/{s}

     make_Ex_ch12P5IBAMPA
     setfield /P6RSb/{s}/Ex_ch12P5IBAMPA gmax {CondmaxP5IBAMPA_P6RS}
     addmsg /P6RSb/{s}/Ex_ch12P5IBAMPA /P6RSb/{s} CHANNEL Gk Ek
     addmsg /P6RSb/{s} /P6RSb/{s}/Ex_ch12P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - P6RSb NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSb/{s}

     make_Ex_ch12P5IBNMDA
     setfield /P6RSb/{s}/Ex_ch12P5IBNMDA gmax {CondmaxP5IBNMDA_P6RS}
     addmsg /P6RSb/{s}/Ex_ch12P5IBNMDA /P6RSb/{s} CHANNEL Gk Ek
     addmsg /P6RSb/{s} /P6RSb/{s}/Ex_ch12P5IBNMDA VOLTAGE Vm

     ce /

end

//B5FS - P6RSb GABAa synapses

str s

//Load synapse location array

str locations = "soma apdend1 basalLsupera basalLmida basalRsupera basalRmida basaldeepa"

foreach s ({arglist {locations}})

     ce /P6RSb/{s}

     make_Inh_ch12B5FSGABAa
     setfield /P6RSb/{s}/Inh_ch12B5FSGABAa gmax {CondmaxB5FSGABAa_P6RS}
     addmsg /P6RSb/{s}/Inh_ch12B5FSGABAa /P6RSb/{s} CHANNEL Gk Ek
     addmsg /P6RSb/{s} /P6RSb/{s}/Inh_ch12B5FSGABAa VOLTAGE Vm

     ce /

end

//P6RS - P6RSb AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSb/{s}

     make_Ex_ch12P6RSAMPA
     setfield /P6RSb/{s}/Ex_ch12P6RSAMPA gmax {CondmaxP6RSAMPA_P6RS}
     addmsg /P6RSb/{s}/Ex_ch12P6RSAMPA /P6RSb/{s} CHANNEL Gk Ek
     addmsg /P6RSb/{s} /P6RSb/{s}/Ex_ch12P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - P6RSb NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSb/{s}

     make_Ex_ch12P6RSNMDA
     setfield /P6RSb/{s}/Ex_ch12P6RSNMDA gmax {CondmaxP6RSNMDA_P6RS}
     addmsg /P6RSb/{s}/Ex_ch12P6RSNMDA /P6RSb/{s} CHANNEL Gk Ek
     addmsg /P6RSb/{s} /P6RSb/{s}/Ex_ch12P6RSNMDA VOLTAGE Vm

     ce /

end

//C23FS - P6RSb GABAa synapses

ce /P6RSb/axona

make_Inh_ch12C23FSGABAa
setfield /P6RSb/axona/Inh_ch12C23FSGABAa gmax {CondmaxC23FSGABAa_P6RS}
addmsg /P6RSb/axona/Inh_ch12C23FSGABAa /P6RSb/axona CHANNEL Gk Ek
addmsg /P6RSb/axona /P6RSb/axona/Inh_ch12C23FSGABAa VOLTAGE Vm

ce /

//C5FS - P6RSb GABAa synapses

ce /P6RSb/axona

make_Inh_ch12C5FSGABAa
setfield /P6RSb/axona/Inh_ch12C5FSGABAa gmax {CondmaxC5FSGABAa_P6RS}
addmsg /P6RSb/axona/Inh_ch12C5FSGABAa /P6RSb/axona CHANNEL Gk Ek
addmsg /P6RSb/axona /P6RSb/axona/Inh_ch12C5FSGABAa VOLTAGE Vm

ce /

//ST4RS - P6RSb AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7"

foreach s ({arglist {locations}})

     ce /P6RSb/{s}

     make_Ex_ch12ST4RSAMPA
     setfield /P6RSb/{s}/Ex_ch12ST4RSAMPA gmax {CondmaxST4RSAMPA_P6RS}
     addmsg /P6RSb/{s}/Ex_ch12ST4RSAMPA /P6RSb/{s} CHANNEL Gk Ek
     addmsg /P6RSb/{s} /P6RSb/{s}/Ex_ch12ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - P6RSb NMDA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7"

foreach s ({arglist {locations}})

     ce /P6RSb/{s}

     make_Ex_ch12ST4RSNMDA
     setfield /P6RSb/{s}/Ex_ch12ST4RSNMDA gmax {CondmaxST4RSNMDA_P6RS}
     addmsg /P6RSb/{s}/Ex_ch12ST4RSNMDA /P6RSb/{s} CHANNEL Gk Ek
     addmsg /P6RSb/{s} /P6RSb/{s}/Ex_ch12ST4RSNMDA VOLTAGE Vm

     ce /

end

//I23LTS - P6RSb GABAa synapses

str s

//Load synapse location array

str locations = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSb/{s}

     make_Inh_ch12I23LTSGABAa
     setfield /P6RSb/{s}/Inh_ch12I23LTSGABAa gmax {CondmaxI23LTSGABAa_P6RS}
     addmsg /P6RSb/{s}/Inh_ch12I23LTSGABAa /P6RSb/{s} CHANNEL Gk Ek
     addmsg /P6RSb/{s} /P6RSb/{s}/Inh_ch12I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - P6RSb GABAa synapses

str s

//Load synapse location array

str locations = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSb/{s}

     make_Inh_ch12I5LTSGABAa
     setfield /P6RSb/{s}/Inh_ch12I5LTSGABAa gmax {CondmaxI5LTSGABAa_P6RS}
     addmsg /P6RSb/{s}/Inh_ch12I5LTSGABAa /P6RSb/{s} CHANNEL Gk Ek
     addmsg /P6RSb/{s} /P6RSb/{s}/Inh_ch12I5LTSGABAa VOLTAGE Vm

     ce /

end

//TCR - P6RSb AMPA synapses

str s

//Load synapse location array

str locations = "apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSb/{s}

     make_Ex_ch12TCRAMPA
     setfield /P6RSb/{s}/Ex_ch12TCRAMPA gmax {CondmaxTCRAMPA_P6RS}
     addmsg /P6RSb/{s}/Ex_ch12TCRAMPA /P6RSb/{s} CHANNEL Gk Ek
     addmsg /P6RSb/{s} /P6RSb/{s}/Ex_ch12TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - P6RSb NMDA synapses

str s

//Load synapse location array

str locations = "apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSb/{s}

     make_Ex_ch12TCRNMDA
     setfield /P6RSb/{s}/Ex_ch12TCRNMDA gmax {CondmaxTCRNMDA_P6RS}
     addmsg /P6RSb/{s}/Ex_ch12TCRNMDA /P6RSb/{s} CHANNEL Gk Ek
     addmsg /P6RSb/{s} /P6RSb/{s}/Ex_ch12TCRNMDA VOLTAGE Vm

     ce /

end

//P23FRB - P6RSb AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSb/{s}

     make_Ex_ch12P23FRBAMPA
     setfield /P6RSb/{s}/Ex_ch12P23FRBAMPA gmax {CondmaxP23FRBAMPA_P6RS}
     addmsg /P6RSb/{s}/Ex_ch12P23FRBAMPA /P6RSb/{s} CHANNEL Gk Ek
     addmsg /P6RSb/{s} /P6RSb/{s}/Ex_ch12P23FRBAMPA VOLTAGE Vm

     ce /

end

//P23FRB - P6RSb NMDA synapses

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSb/{s}

     make_Ex_ch12P23FRBNMDA
     setfield /P6RSb/{s}/Ex_ch12P23FRBNMDA gmax {CondmaxP23FRBNMDA_P6RS}
     addmsg /P6RSb/{s}/Ex_ch12P23FRBNMDA /P6RSb/{s} CHANNEL Gk Ek
     addmsg /P6RSb/{s} /P6RSb/{s}/Ex_ch12P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - P6RSb AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSb/{s}

     make_Ex_ch12P5RSAMPA
     setfield /P6RSb/{s}/Ex_ch12P5RSAMPA gmax {CondmaxP5RSAMPA_P6RS}
     addmsg /P6RSb/{s}/Ex_ch12P5RSAMPA /P6RSb/{s} CHANNEL Gk Ek
     addmsg /P6RSb/{s} /P6RSb/{s}/Ex_ch12P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - P6RSb NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSb/{s}

     make_Ex_ch12P5RSNMDA
     setfield /P6RSb/{s}/Ex_ch12P5RSNMDA gmax {CondmaxP5RSNMDA_P6RS}
     addmsg /P6RSb/{s}/Ex_ch12P5RSNMDA /P6RSb/{s} CHANNEL Gk Ek
     addmsg /P6RSb/{s} /P6RSb/{s}/Ex_ch12P5RSNMDA VOLTAGE Vm

     ce /

end
