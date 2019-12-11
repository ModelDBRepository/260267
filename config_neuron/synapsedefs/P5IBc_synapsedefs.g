
//P23RS - P5IBc AMPA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5IBc/{s}

     make_Ex_ch8P23RSAMPA

     setfield /P5IBc/{s}/Ex_ch8P23RSAMPA gmax {CondmaxP23RSAMPA_P5IB}
     addmsg /P5IBc/{s}/Ex_ch8P23RSAMPA /P5IBc/{s} CHANNEL Gk Ek
     addmsg /P5IBc/{s} /P5IBc/{s}/Ex_ch8P23RSAMPA VOLTAGE Vm

     ce /

end

//P23RS - P5IBc NMDA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5IBc/{s}

     make_Ex_ch8P23RSNMDA

     setfield /P5IBc/{s}/Ex_ch8P23RSNMDA gmax {CondmaxP23RSNMDA_P5IB}
     addmsg /P5IBc/{s}/Ex_ch8P23RSNMDA /P5IBc/{s} CHANNEL Gk Ek
     addmsg /P5IBc/{s} /P5IBc/{s}/Ex_ch8P23RSNMDA VOLTAGE Vm

     ce /

end

//P5IB - P5IBc AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBc/{s}

     make_Ex_ch8P5IBAMPA

     setfield /P5IBc/{s}/Ex_ch8P5IBAMPA gmax {CondmaxP5IBAMPA_P5IB}
     addmsg /P5IBc/{s}/Ex_ch8P5IBAMPA /P5IBc/{s} CHANNEL Gk Ek
     addmsg /P5IBc/{s} /P5IBc/{s}/Ex_ch8P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - P5IBc NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBc/{s}

     make_Ex_ch8P5IBNMDA

     setfield /P5IBc/{s}/Ex_ch8P5IBNMDA gmax {CondmaxP5IBNMDA_P5IB}
     addmsg /P5IBc/{s}/Ex_ch8P5IBNMDA /P5IBc/{s} CHANNEL Gk Ek
     addmsg /P5IBc/{s} /P5IBc/{s}/Ex_ch8P5IBNMDA VOLTAGE Vm

     ce /

end

//B5FS - P5IBc GABAa synapses

str s

//Load synapse location array

str locations = "soma apdend1 apdend2 basalLsupera basalLmida basalRsupera basalRmida basaldeepa"

foreach s ({arglist {locations}})

     ce /P5IBc/{s}

     make_Inh_ch8B5FSGABAa

     setfield /P5IBc/{s}/Inh_ch8B5FSGABAa gmax {CondmaxB5FSGABAa_P5IB}
     addmsg /P5IBc/{s}/Inh_ch8B5FSGABAa /P5IBc/{s} CHANNEL Gk Ek
     addmsg /P5IBc/{s} /P5IBc/{s}/Inh_ch8B5FSGABAa VOLTAGE Vm

     ce /

end

//P6RS - P5IBc AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBc/{s}

     make_Ex_ch8P6RSAMPA

     setfield /P5IBc/{s}/Ex_ch8P6RSAMPA gmax {CondmaxP6RSAMPA_P5IB}
     addmsg /P5IBc/{s}/Ex_ch8P6RSAMPA /P5IBc/{s} CHANNEL Gk Ek
     addmsg /P5IBc/{s} /P5IBc/{s}/Ex_ch8P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - P5IBc NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBc/{s}

     make_Ex_ch8P6RSNMDA

     setfield /P5IBc/{s}/Ex_ch8P6RSNMDA gmax {CondmaxP6RSNMDA_P5IB}
     addmsg /P5IBc/{s}/Ex_ch8P6RSNMDA /P5IBc/{s} CHANNEL Gk Ek
     addmsg /P5IBc/{s} /P5IBc/{s}/Ex_ch8P6RSNMDA VOLTAGE Vm

     ce /

end

//C23FS - P5IBc GABAa synapses

ce /P5IBc/axona

make_Inh_ch8C23FSGABAa

setfield /P5IBc/axona/Inh_ch8C23FSGABAa gmax {CondmaxC23FSGABAa_P5IB}
addmsg /P5IBc/axona/Inh_ch8C23FSGABAa /P5IBc/axona CHANNEL Gk Ek
addmsg /P5IBc/axona /P5IBc/axona/Inh_ch8C23FSGABAa VOLTAGE Vm

ce /

//C5FS - P5IBc GABAa synapses

ce /P5IBc/axona

make_Inh_ch8C5FSGABAa

setfield /P5IBc/axona/Inh_ch8C5FSGABAa gmax {CondmaxC5FSGABAa_P5IB}
addmsg /P5IBc/axona/Inh_ch8C5FSGABAa /P5IBc/axona CHANNEL Gk Ek
addmsg /P5IBc/axona /P5IBc/axona/Inh_ch8C5FSGABAa VOLTAGE Vm

ce /

//ST4RS - P5IBc AMPA synapses

str s

//Load synapse location array

str locations = "apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apobdistLa apobmidLa apobproxLa apobdistRa apobmidRa apobproxRa"

foreach s ({arglist {locations}})

     ce /P5IBc/{s}

     make_Ex_ch8ST4RSAMPA

     setfield /P5IBc/{s}/Ex_ch8ST4RSAMPA gmax {CondmaxST4RSAMPA_P5IB}
     addmsg /P5IBc/{s}/Ex_ch8ST4RSAMPA /P5IBc/{s} CHANNEL Gk Ek
     addmsg /P5IBc/{s} /P5IBc/{s}/Ex_ch8ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - P5IBc NMDA synapses

str s

//Load synapse location array

str locations = "apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apobdistLa apobmidLa apobproxLa apobdistRa apobmidRa apobproxRa"

foreach s ({arglist {locations}})

     ce /P5IBc/{s}

     make_Ex_ch8ST4RSNMDA

     setfield /P5IBc/{s}/Ex_ch8ST4RSNMDA gmax {CondmaxST4RSNMDA_P5IB}
     addmsg /P5IBc/{s}/Ex_ch8ST4RSNMDA /P5IBc/{s} CHANNEL Gk Ek
     addmsg /P5IBc/{s} /P5IBc/{s}/Ex_ch8ST4RSNMDA VOLTAGE Vm

     ce /

end



//I23LTS - P5IBc GABAa synapses

str s

//Load synapse location array

str locations = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

     ce /P5IBc/{s}

     make_Inh_ch8I23LTSGABAa

     setfield /P5IBc/{s}/Inh_ch8I23LTSGABAa gmax {CondmaxI23LTSGABAa_P5IB}
     addmsg /P5IBc/{s}/Inh_ch8I23LTSGABAa /P5IBc/{s} CHANNEL Gk Ek
     addmsg /P5IBc/{s} /P5IBc/{s}/Inh_ch8I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - P5IBc GABAa synapses

str s

//Load synapse location array

str locations = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

     ce /P5IBc/{s}

     make_Inh_ch8I5LTSGABAa

     setfield /P5IBc/{s}/Inh_ch8I5LTSGABAa gmax {CondmaxI5LTSGABAa_P5IB}
     addmsg /P5IBc/{s}/Inh_ch8I5LTSGABAa /P5IBc/{s} CHANNEL Gk Ek
     addmsg /P5IBc/{s} /P5IBc/{s}/Inh_ch8I5LTSGABAa VOLTAGE Vm

     ce /

end

//TCR - P5IBc AMPA synapses

str s

//Load synapse location array

str locations = "apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL"

foreach s ({arglist {locations}})

     ce /P5IBc/{s}

     make_Ex_ch8TCRAMPA

     setfield /P5IBc/{s}/Ex_ch8TCRAMPA gmax {CondmaxTCRAMPA_P5IB}
     addmsg /P5IBc/{s}/Ex_ch8TCRAMPA /P5IBc/{s} CHANNEL Gk Ek
     addmsg /P5IBc/{s} /P5IBc/{s}/Ex_ch8TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - P5IBc NMDA synapses

str s

//Load synapse location array

str locations = "apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL"

foreach s ({arglist {locations}})

     ce /P5IBc/{s}

     make_Ex_ch8TCRNMDA

     setfield /P5IBc/{s}/Ex_ch8TCRNMDA gmax {CondmaxTCRNMDA_P5IB}
     addmsg /P5IBc/{s}/Ex_ch8TCRNMDA /P5IBc/{s} CHANNEL Gk Ek
     addmsg /P5IBc/{s} /P5IBc/{s}/Ex_ch8TCRNMDA VOLTAGE Vm

     ce /

end

//P23FRB - P5IBc AMPA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5IBc/{s}

     make_Ex_ch8P23FRBAMPA

     setfield /P5IBc/{s}/Ex_ch8P23FRBAMPA gmax {CondmaxP23FRBAMPA_P5IB}
     addmsg /P5IBc/{s}/Ex_ch8P23FRBAMPA /P5IBc/{s} CHANNEL Gk Ek
     addmsg /P5IBc/{s} /P5IBc/{s}/Ex_ch8P23FRBAMPA VOLTAGE Vm

     ce /

end

//P23FRB - P5IBc NMDA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5IBc/{s}

     make_Ex_ch8P23FRBNMDA

     setfield /P5IBc/{s}/Ex_ch8P23FRBNMDA gmax {CondmaxP23FRBNMDA_P5IB}
     addmsg /P5IBc/{s}/Ex_ch8P23FRBNMDA /P5IBc/{s} CHANNEL Gk Ek
     addmsg /P5IBc/{s} /P5IBc/{s}/Ex_ch8P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - P5IBc AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBc/{s}

     make_Ex_ch8P5RSAMPA

     setfield /P5IBc/{s}/Ex_ch8P5RSAMPA gmax {CondmaxP5RSAMPA_P5IB}
     addmsg /P5IBc/{s}/Ex_ch8P5RSAMPA /P5IBc/{s} CHANNEL Gk Ek
     addmsg /P5IBc/{s} /P5IBc/{s}/Ex_ch8P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - P5IBc NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBc/{s}

     make_Ex_ch8P5RSNMDA

     setfield /P5IBc/{s}/Ex_ch8P5RSNMDA gmax {CondmaxP5RSNMDA_P5IB}
     addmsg /P5IBc/{s}/Ex_ch8P5RSNMDA /P5IBc/{s} CHANNEL Gk Ek
     addmsg /P5IBc/{s} /P5IBc/{s}/Ex_ch8P5RSNMDA VOLTAGE Vm

     ce /

end
