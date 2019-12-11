
//P23RS - P6RSa AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSa/{s}

     make_Ex_ch11P23RSAMPA
     setfield /P6RSa/{s}/Ex_ch11P23RSAMPA gmax {CondmaxP23RSAMPA_P6RS}
     addmsg /P6RSa/{s}/Ex_ch11P23RSAMPA /P6RSa/{s} CHANNEL Gk Ek
     addmsg /P6RSa/{s} /P6RSa/{s}/Ex_ch11P23RSAMPA VOLTAGE Vm

     ce /

end

//P23RS - P6RSa NMDA synapses

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSa/{s}

     make_Ex_ch11P23RSNMDA
     setfield /P6RSa/{s}/Ex_ch11P23RSNMDA gmax {CondmaxP23RSNMDA_P6RS}
     addmsg /P6RSa/{s}/Ex_ch11P23RSNMDA /P6RSa/{s} CHANNEL Gk Ek
     addmsg /P6RSa/{s} /P6RSa/{s}/Ex_ch11P23RSNMDA VOLTAGE Vm

     ce /

end

//P5IB - P6RSa AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSa/{s}

     make_Ex_ch11P5IBAMPA
     setfield /P6RSa/{s}/Ex_ch11P5IBAMPA gmax {CondmaxP5IBAMPA_P6RS}
     addmsg /P6RSa/{s}/Ex_ch11P5IBAMPA /P6RSa/{s} CHANNEL Gk Ek
     addmsg /P6RSa/{s} /P6RSa/{s}/Ex_ch11P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - P6RSa NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSa/{s}

     make_Ex_ch11P5IBNMDA
     setfield /P6RSa/{s}/Ex_ch11P5IBNMDA gmax {CondmaxP5IBNMDA_P6RS}
     addmsg /P6RSa/{s}/Ex_ch11P5IBNMDA /P6RSa/{s} CHANNEL Gk Ek
     addmsg /P6RSa/{s} /P6RSa/{s}/Ex_ch11P5IBNMDA VOLTAGE Vm

     ce /

end

//B5FS - P6RSa GABAa synapses

str s

//Load synapse location array

str locations = "soma apdend1 basalLsupera basalLmida basalRsupera basalRmida basaldeepa"

foreach s ({arglist {locations}})

     ce /P6RSa/{s}

     make_Inh_ch11B5FSGABAa
     setfield /P6RSa/{s}/Inh_ch11B5FSGABAa gmax {CondmaxB5FSGABAa_P6RS}
     addmsg /P6RSa/{s}/Inh_ch11B5FSGABAa /P6RSa/{s} CHANNEL Gk Ek
     addmsg /P6RSa/{s} /P6RSa/{s}/Inh_ch11B5FSGABAa VOLTAGE Vm

     ce /

end

//P6RS - P6RSa AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSa/{s}

     make_Ex_ch11P6RSAMPA
     setfield /P6RSa/{s}/Ex_ch11P6RSAMPA gmax {CondmaxP6RSAMPA_P6RS}
     addmsg /P6RSa/{s}/Ex_ch11P6RSAMPA /P6RSa/{s} CHANNEL Gk Ek
     addmsg /P6RSa/{s} /P6RSa/{s}/Ex_ch11P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - P6RSa NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSa/{s}

     make_Ex_ch11P6RSNMDA
     setfield /P6RSa/{s}/Ex_ch11P6RSNMDA gmax {CondmaxP6RSNMDA_P6RS}
     addmsg /P6RSa/{s}/Ex_ch11P6RSNMDA /P6RSa/{s} CHANNEL Gk Ek
     addmsg /P6RSa/{s} /P6RSa/{s}/Ex_ch11P6RSNMDA VOLTAGE Vm

     ce /

end

//C23FS - P6RSa GABAa synapses

ce /P6RSa/axona

make_Inh_ch11C23FSGABAa
setfield /P6RSa/axona/Inh_ch11C23FSGABAa gmax {CondmaxC23FSGABAa_P6RS}
addmsg /P6RSa/axona/Inh_ch11C23FSGABAa /P6RSa/axona CHANNEL Gk Ek
addmsg /P6RSa/axona /P6RSa/axona/Inh_ch11C23FSGABAa VOLTAGE Vm

ce /

//C5FS - P6RSa GABAa synapses

ce /P6RSa/axona

make_Inh_ch11C5FSGABAa
setfield /P6RSa/axona/Inh_ch11C5FSGABAa gmax {CondmaxC5FSGABAa_P6RS}
addmsg /P6RSa/axona/Inh_ch11C5FSGABAa /P6RSa/axona CHANNEL Gk Ek
addmsg /P6RSa/axona /P6RSa/axona/Inh_ch11C5FSGABAa VOLTAGE Vm

ce /

//ST4RS - P6RSa AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7"

foreach s ({arglist {locations}})

     ce /P6RSa/{s}

     make_Ex_ch11ST4RSAMPA
     setfield /P6RSa/{s}/Ex_ch11ST4RSAMPA gmax {CondmaxST4RSAMPA_P6RS}
     addmsg /P6RSa/{s}/Ex_ch11ST4RSAMPA /P6RSa/{s} CHANNEL Gk Ek
     addmsg /P6RSa/{s} /P6RSa/{s}/Ex_ch11ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - P6RSa NMDA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7"

foreach s ({arglist {locations}})

     ce /P6RSa/{s}

     make_Ex_ch11ST4RSNMDA
     setfield /P6RSa/{s}/Ex_ch11ST4RSNMDA gmax {CondmaxST4RSNMDA_P6RS}
     addmsg /P6RSa/{s}/Ex_ch11ST4RSNMDA /P6RSa/{s} CHANNEL Gk Ek
     addmsg /P6RSa/{s} /P6RSa/{s}/Ex_ch11ST4RSNMDA VOLTAGE Vm

     ce /

end

//I23LTS - P6RSa GABAa synapses

str s

//Load synapse location array

str locations = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSa/{s}

     make_Inh_ch11I23LTSGABAa
     setfield /P6RSa/{s}/Inh_ch11I23LTSGABAa gmax {CondmaxI23LTSGABAa_P6RS}
     addmsg /P6RSa/{s}/Inh_ch11I23LTSGABAa /P6RSa/{s} CHANNEL Gk Ek
     addmsg /P6RSa/{s} /P6RSa/{s}/Inh_ch11I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - P6RSa GABAa synapses

str s

//Load synapse location array

str locations = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSa/{s}

     make_Inh_ch11I5LTSGABAa
     setfield /P6RSa/{s}/Inh_ch11I5LTSGABAa gmax {CondmaxI5LTSGABAa_P6RS}
     addmsg /P6RSa/{s}/Inh_ch11I5LTSGABAa /P6RSa/{s} CHANNEL Gk Ek
     addmsg /P6RSa/{s} /P6RSa/{s}/Inh_ch11I5LTSGABAa VOLTAGE Vm

     ce /

end

//TCR - P6RSa AMPA synapses

str s

//Load synapse location array

str locations = "apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSa/{s}

     make_Ex_ch11TCRAMPA
     setfield /P6RSa/{s}/Ex_ch11TCRAMPA gmax {CondmaxTCRAMPA_P6RS}
     addmsg /P6RSa/{s}/Ex_ch11TCRAMPA /P6RSa/{s} CHANNEL Gk Ek
     addmsg /P6RSa/{s} /P6RSa/{s}/Ex_ch11TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - P6RSa NMDA synapses

str s

//Load synapse location array

str locations = "apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSa/{s}

     make_Ex_ch11TCRNMDA
     setfield /P6RSa/{s}/Ex_ch11TCRNMDA gmax {CondmaxTCRNMDA_P6RS}
     addmsg /P6RSa/{s}/Ex_ch11TCRNMDA /P6RSa/{s} CHANNEL Gk Ek
     addmsg /P6RSa/{s} /P6RSa/{s}/Ex_ch11TCRNMDA VOLTAGE Vm

     ce /

end

//P23FRB - P6RSa AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSa/{s}

     make_Ex_ch11P23FRBAMPA
     setfield /P6RSa/{s}/Ex_ch11P23FRBAMPA gmax {CondmaxP23FRBAMPA_P6RS}
     addmsg /P6RSa/{s}/Ex_ch11P23FRBAMPA /P6RSa/{s} CHANNEL Gk Ek
     addmsg /P6RSa/{s} /P6RSa/{s}/Ex_ch11P23FRBAMPA VOLTAGE Vm

     ce /

end

//P23FRB - P6RSa NMDA synapses

str locations = "apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10"

foreach s ({arglist {locations}})

     ce /P6RSa/{s}

     make_Ex_ch11P23FRBNMDA
     setfield /P6RSa/{s}/Ex_ch11P23FRBNMDA gmax {CondmaxP23FRBNMDA_P6RS}
     addmsg /P6RSa/{s}/Ex_ch11P23FRBNMDA /P6RSa/{s} CHANNEL Gk Ek
     addmsg /P6RSa/{s} /P6RSa/{s}/Ex_ch11P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - P6RSa AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSa/{s}

     make_Ex_ch11P5RSAMPA
     setfield /P6RSa/{s}/Ex_ch11P5RSAMPA gmax {CondmaxP5RSAMPA_P6RS}
     addmsg /P6RSa/{s}/Ex_ch11P5RSAMPA /P6RSa/{s} CHANNEL Gk Ek
     addmsg /P6RSa/{s} /P6RSa/{s}/Ex_ch11P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - P6RSa NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P6RSa/{s}

     make_Ex_ch11P5RSNMDA
     setfield /P6RSa/{s}/Ex_ch11P5RSNMDA gmax {CondmaxP5RSNMDA_P6RS}
     addmsg /P6RSa/{s}/Ex_ch11P5RSNMDA /P6RSa/{s} CHANNEL Gk Ek
     addmsg /P6RSa/{s} /P6RSa/{s}/Ex_ch11P5RSNMDA VOLTAGE Vm

     ce /

end
