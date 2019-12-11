
//P23RS - P5IBd AMPA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5IBd/{s}

     make_Ex_ch9P23RSAMPA
     setfield /P5IBd/{s}/Ex_ch9P23RSAMPA gmax {CondmaxP23RSAMPA_P5IB}
     addmsg /P5IBd/{s}/Ex_ch9P23RSAMPA /P5IBd/{s} CHANNEL Gk Ek
     addmsg /P5IBd/{s} /P5IBd/{s}/Ex_ch9P23RSAMPA VOLTAGE Vm

     ce /

end

//P23RS - P5IBd NMDA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5IBd/{s}

     make_Ex_ch9P23RSNMDA
     setfield /P5IBd/{s}/Ex_ch9P23RSNMDA gmax {CondmaxP23RSNMDA_P5IB}
     addmsg /P5IBd/{s}/Ex_ch9P23RSNMDA /P5IBd/{s} CHANNEL Gk Ek
     addmsg /P5IBd/{s} /P5IBd/{s}/Ex_ch9P23RSNMDA VOLTAGE Vm

     ce /

end

//P5IB - P5IBd AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBd/{s}

     make_Ex_ch9P5IBAMPA
     setfield /P5IBd/{s}/Ex_ch9P5IBAMPA gmax {CondmaxP5IBAMPA_P5IB}
     addmsg /P5IBd/{s}/Ex_ch9P5IBAMPA /P5IBd/{s} CHANNEL Gk Ek
     addmsg /P5IBd/{s} /P5IBd/{s}/Ex_ch9P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - P5IBd NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBd/{s}

     make_Ex_ch9P5IBNMDA
     setfield /P5IBd/{s}/Ex_ch9P5IBNMDA gmax {CondmaxP5IBNMDA_P5IB}
     addmsg /P5IBd/{s}/Ex_ch9P5IBNMDA /P5IBd/{s} CHANNEL Gk Ek
     addmsg /P5IBd/{s} /P5IBd/{s}/Ex_ch9P5IBNMDA VOLTAGE Vm

     ce /

end

//B5FS - P5IBd GABAa synapses

str s

//Load synapse location array

str locations = "soma apdend1 apdend2 basalLsupera basalLmida basalRsupera basalRmida basaldeepa"

foreach s ({arglist {locations}})

     ce /P5IBd/{s}

     make_Inh_ch9B5FSGABAa
     setfield /P5IBd/{s}/Inh_ch9B5FSGABAa gmax {CondmaxB5FSGABAa_P5IB}
     addmsg /P5IBd/{s}/Inh_ch9B5FSGABAa /P5IBd/{s} CHANNEL Gk Ek
     addmsg /P5IBd/{s} /P5IBd/{s}/Inh_ch9B5FSGABAa VOLTAGE Vm

     ce /

end

//P6RS - P5IBd AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBd/{s}

     make_Ex_ch9P6RSAMPA
     setfield /P5IBd/{s}/Ex_ch9P6RSAMPA gmax {CondmaxP6RSAMPA_P5IB}
     addmsg /P5IBd/{s}/Ex_ch9P6RSAMPA /P5IBd/{s} CHANNEL Gk Ek
     addmsg /P5IBd/{s} /P5IBd/{s}/Ex_ch9P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - P5IBd NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBd/{s}

     make_Ex_ch9P6RSNMDA
     setfield /P5IBd/{s}/Ex_ch9P6RSNMDA gmax {CondmaxP6RSNMDA_P5IB}
     addmsg /P5IBd/{s}/Ex_ch9P6RSNMDA /P5IBd/{s} CHANNEL Gk Ek
     addmsg /P5IBd/{s} /P5IBd/{s}/Ex_ch9P6RSNMDA VOLTAGE Vm

     ce /

end

//C23FS - P5IBd GABAa synapses

ce /P5IBd/axona

make_Inh_ch9C23FSGABAa
setfield /P5IBd/axona/Inh_ch9C23FSGABAa gmax {CondmaxC23FSGABAa_P5IB}
addmsg /P5IBd/axona/Inh_ch9C23FSGABAa /P5IBd/axona CHANNEL Gk Ek
addmsg /P5IBd/axona /P5IBd/axona/Inh_ch9C23FSGABAa VOLTAGE Vm

ce /

//C5FS - P5IBd GABAa synapses

ce /P5IBd/axona

make_Inh_ch9C5FSGABAa
setfield /P5IBd/axona/Inh_ch9C5FSGABAa gmax {CondmaxC5FSGABAa_P5IB}
addmsg /P5IBd/axona/Inh_ch9C5FSGABAa /P5IBd/axona CHANNEL Gk Ek
addmsg /P5IBd/axona /P5IBd/axona/Inh_ch9C5FSGABAa VOLTAGE Vm

ce /

//ST4RS - P5IBd AMPA synapses

str s

//Load synapse location array

str locations = "apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apobdistLa apobmidLa apobproxLa apobdistRa apobmidRa apobproxRa"

foreach s ({arglist {locations}})

     ce /P5IBd/{s}

     make_Ex_ch9ST4RSAMPA
     setfield /P5IBd/{s}/Ex_ch9ST4RSAMPA gmax {CondmaxST4RSAMPA_P5IB}
     addmsg /P5IBd/{s}/Ex_ch9ST4RSAMPA /P5IBd/{s} CHANNEL Gk Ek
     addmsg /P5IBd/{s} /P5IBd/{s}/Ex_ch9ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - P5IBd NMDA synapses

str s

//Load synapse location array

str locations = "apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apobdistLa apobmidLa apobproxLa apobdistRa apobmidRa apobproxRa"

foreach s ({arglist {locations}})

     ce /P5IBd/{s}

     make_Ex_ch9ST4RSNMDA
     setfield /P5IBd/{s}/Ex_ch9ST4RSNMDA gmax {CondmaxST4RSNMDA_P5IB}
     addmsg /P5IBd/{s}/Ex_ch9ST4RSNMDA /P5IBd/{s} CHANNEL Gk Ek
     addmsg /P5IBd/{s} /P5IBd/{s}/Ex_ch9ST4RSNMDA VOLTAGE Vm

     ce /

end



//I23LTS - P5IBd GABAa synapses

str s

//Load synapse location array

str locations = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

     ce /P5IBd/{s}

     make_Inh_ch9I23LTSGABAa
     setfield /P5IBd/{s}/Inh_ch9I23LTSGABAa gmax {CondmaxI23LTSGABAa_P5IB}
     addmsg /P5IBd/{s}/Inh_ch9I23LTSGABAa /P5IBd/{s} CHANNEL Gk Ek
     addmsg /P5IBd/{s} /P5IBd/{s}/Inh_ch9I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - P5IBd GABAa synapses

str s

//Load synapse location array

str locations = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

     ce /P5IBd/{s}

     make_Inh_ch9I5LTSGABAa
     setfield /P5IBd/{s}/Inh_ch9I5LTSGABAa gmax {CondmaxI5LTSGABAa_P5IB}
     addmsg /P5IBd/{s}/Inh_ch9I5LTSGABAa /P5IBd/{s} CHANNEL Gk Ek
     addmsg /P5IBd/{s} /P5IBd/{s}/Inh_ch9I5LTSGABAa VOLTAGE Vm

     ce /

end

//TCR - P5IBd AMPA synapses

str s

//Load synapse location array

str locations = "apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL"

foreach s ({arglist {locations}})

     ce /P5IBd/{s}

     make_Ex_ch9TCRAMPA
     setfield /P5IBd/{s}/Ex_ch9TCRAMPA gmax {CondmaxTCRAMPA_P5IB}
     addmsg /P5IBd/{s}/Ex_ch9TCRAMPA /P5IBd/{s} CHANNEL Gk Ek
     addmsg /P5IBd/{s} /P5IBd/{s}/Ex_ch9TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - P5IBd NMDA synapses

str s

//Load synapse location array

str locations = "apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL"

foreach s ({arglist {locations}})

     ce /P5IBd/{s}

     make_Ex_ch9TCRNMDA
     setfield /P5IBd/{s}/Ex_ch9TCRNMDA gmax {CondmaxTCRNMDA_P5IB}
     addmsg /P5IBd/{s}/Ex_ch9TCRNMDA /P5IBd/{s} CHANNEL Gk Ek
     addmsg /P5IBd/{s} /P5IBd/{s}/Ex_ch9TCRNMDA VOLTAGE Vm

     ce /

end

//P23FRB - P5IBd AMPA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5IBd/{s}

     make_Ex_ch9P23FRBAMPA
     setfield /P5IBd/{s}/Ex_ch9P23FRBAMPA gmax {CondmaxP23FRBAMPA_P5IB}
     addmsg /P5IBd/{s}/Ex_ch9P23FRBAMPA /P5IBd/{s} CHANNEL Gk Ek
     addmsg /P5IBd/{s} /P5IBd/{s}/Ex_ch9P23FRBAMPA VOLTAGE Vm

     ce /

end

//P23FRB - P5IBd NMDA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5IBd/{s}

     make_Ex_ch9P23FRBNMDA
     setfield /P5IBd/{s}/Ex_ch9P23FRBNMDA gmax {CondmaxP23FRBNMDA_P5IB}
     addmsg /P5IBd/{s}/Ex_ch9P23FRBNMDA /P5IBd/{s} CHANNEL Gk Ek
     addmsg /P5IBd/{s} /P5IBd/{s}/Ex_ch9P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - P5IBd AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBd/{s}

     make_Ex_ch9P5RSAMPA
     setfield /P5IBd/{s}/Ex_ch9P5RSAMPA gmax {CondmaxP5RSAMPA_P5IB}
     addmsg /P5IBd/{s}/Ex_ch9P5RSAMPA /P5IBd/{s} CHANNEL Gk Ek
     addmsg /P5IBd/{s} /P5IBd/{s}/Ex_ch9P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - P5IBd NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBd/{s}

     make_Ex_ch9P5RSNMDA
     setfield /P5IBd/{s}/Ex_ch9P5RSNMDA gmax {CondmaxP5RSNMDA_P5IB}
     addmsg /P5IBd/{s}/Ex_ch9P5RSNMDA /P5IBd/{s} CHANNEL Gk Ek
     addmsg /P5IBd/{s} /P5IBd/{s}/Ex_ch9P5RSNMDA VOLTAGE Vm

     ce /

end
