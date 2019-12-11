
//P23RS - P5IBa AMPA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5IBa/{s}

     make_Ex_ch6P23RSAMPA
     setfield /P5IBa/{s}/Ex_ch6P23RSAMPA gmax {CondmaxP23RSAMPA_P5IB}
     addmsg /P5IBa/{s}/Ex_ch6P23RSAMPA /P5IBa/{s} CHANNEL Gk Ek
     addmsg /P5IBa/{s} /P5IBa/{s}/Ex_ch6P23RSAMPA VOLTAGE Vm

     ce /

end

//P23RS - P5IBa NMDA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5IBa/{s}

     make_Ex_ch6P23RSNMDA
     setfield /P5IBa/{s}/Ex_ch6P23RSNMDA gmax {CondmaxP23RSNMDA_P5IB}
     addmsg /P5IBa/{s}/Ex_ch6P23RSNMDA /P5IBa/{s} CHANNEL Gk Ek
     addmsg /P5IBa/{s} /P5IBa/{s}/Ex_ch6P23RSNMDA VOLTAGE Vm

     ce /

end

//P5IB - P5IBa AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBa/{s}

     make_Ex_ch6P5IBAMPA
     setfield /P5IBa/{s}/Ex_ch6P5IBAMPA gmax {CondmaxP5IBAMPA_P5IB}
     addmsg /P5IBa/{s}/Ex_ch6P5IBAMPA /P5IBa/{s} CHANNEL Gk Ek
     addmsg /P5IBa/{s} /P5IBa/{s}/Ex_ch6P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - P5IBa NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBa/{s}

     make_Ex_ch6P5IBNMDA
     setfield /P5IBa/{s}/Ex_ch6P5IBNMDA gmax {CondmaxP5IBNMDA_P5IB}
     addmsg /P5IBa/{s}/Ex_ch6P5IBNMDA /P5IBa/{s} CHANNEL Gk Ek
     addmsg /P5IBa/{s} /P5IBa/{s}/Ex_ch6P5IBNMDA VOLTAGE Vm

     ce /

end

//B5FS - P5IBa GABAa synapses

str s

//Load synapse location array

str locations = "soma apdend1 apdend2 basalLsupera basalLmida basalRsupera basalRmida basaldeepa"

foreach s ({arglist {locations}})

     ce /P5IBa/{s}

     make_Inh_ch6B5FSGABAa
     setfield /P5IBa/{s}/Inh_ch6B5FSGABAa gmax {CondmaxB5FSGABAa_P5IB}
     addmsg /P5IBa/{s}/Inh_ch6B5FSGABAa /P5IBa/{s} CHANNEL Gk Ek
     addmsg /P5IBa/{s} /P5IBa/{s}/Inh_ch6B5FSGABAa VOLTAGE Vm

     ce /

end

//P6RS - P5IBa AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBa/{s}

     make_Ex_ch6P6RSAMPA
     setfield /P5IBa/{s}/Ex_ch6P6RSAMPA gmax {CondmaxP6RSAMPA_P5IB}
     addmsg /P5IBa/{s}/Ex_ch6P6RSAMPA /P5IBa/{s} CHANNEL Gk Ek
     addmsg /P5IBa/{s} /P5IBa/{s}/Ex_ch6P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - P5IBa NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBa/{s}

     make_Ex_ch6P6RSNMDA
     setfield /P5IBa/{s}/Ex_ch6P6RSNMDA gmax {CondmaxP6RSNMDA_P5IB}
     addmsg /P5IBa/{s}/Ex_ch6P6RSNMDA /P5IBa/{s} CHANNEL Gk Ek
     addmsg /P5IBa/{s} /P5IBa/{s}/Ex_ch6P6RSNMDA VOLTAGE Vm

     ce /

end

//C23FS - P5IBa GABAa synapses

ce /P5IBa/axona

make_Inh_ch6C23FSGABAa
setfield /P5IBa/axona/Inh_ch6C23FSGABAa gmax {CondmaxC23FSGABAa_P5IB}
addmsg /P5IBa/axona/Inh_ch6C23FSGABAa /P5IBa/axona CHANNEL Gk Ek
addmsg /P5IBa/axona /P5IBa/axona/Inh_ch6C23FSGABAa VOLTAGE Vm

ce /

//C5FS - P5IBa GABAa synapses

ce /P5IBa/axona

make_Inh_ch6C5FSGABAa
setfield /P5IBa/axona/Inh_ch6C5FSGABAa gmax {CondmaxC5FSGABAa_P5IB}
addmsg /P5IBa/axona/Inh_ch6C5FSGABAa /P5IBa/axona CHANNEL Gk Ek
addmsg /P5IBa/axona /P5IBa/axona/Inh_ch6C5FSGABAa VOLTAGE Vm

ce /

//ST4RS - P5IBa AMPA synapses

str s

//Load synapse location array

str locations = "apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apobdistLa apobmidLa apobproxLa apobdistRa apobmidRa apobproxRa"

foreach s ({arglist {locations}})

     ce /P5IBa/{s}

     make_Ex_ch6ST4RSAMPA
     setfield /P5IBa/{s}/Ex_ch6ST4RSAMPA gmax {CondmaxST4RSAMPA_P5IB}
     addmsg /P5IBa/{s}/Ex_ch6ST4RSAMPA /P5IBa/{s} CHANNEL Gk Ek
     addmsg /P5IBa/{s} /P5IBa/{s}/Ex_ch6ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - P5IBa NMDA synapses

str s

//Load synapse location array

str locations = "apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apobdistLa apobmidLa apobproxLa apobdistRa apobmidRa apobproxRa"

foreach s ({arglist {locations}})

     ce /P5IBa/{s}

     make_Ex_ch6ST4RSNMDA
     setfield /P5IBa/{s}/Ex_ch6ST4RSNMDA gmax {CondmaxST4RSNMDA_P5IB}
     addmsg /P5IBa/{s}/Ex_ch6ST4RSNMDA /P5IBa/{s} CHANNEL Gk Ek
     addmsg /P5IBa/{s} /P5IBa/{s}/Ex_ch6ST4RSNMDA VOLTAGE Vm

     ce /

end



//I23LTS - P5IBa GABAa synapses

str s

//Load synapse location array

str locations = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

     ce /P5IBa/{s}

     make_Inh_ch6I23LTSGABAa
     setfield /P5IBa/{s}/Inh_ch6I23LTSGABAa gmax {CondmaxI23LTSGABAa_P5IB}
     addmsg /P5IBa/{s}/Inh_ch6I23LTSGABAa /P5IBa/{s} CHANNEL Gk Ek
     addmsg /P5IBa/{s} /P5IBa/{s}/Inh_ch6I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - P5IBa GABAa synapses

str s

//Load synapse location array

str locations = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

     ce /P5IBa/{s}

     make_Inh_ch6I5LTSGABAa
     setfield /P5IBa/{s}/Inh_ch6I5LTSGABAa gmax {CondmaxI5LTSGABAa_P5IB}
     addmsg /P5IBa/{s}/Inh_ch6I5LTSGABAa /P5IBa/{s} CHANNEL Gk Ek
     addmsg /P5IBa/{s} /P5IBa/{s}/Inh_ch6I5LTSGABAa VOLTAGE Vm

     ce /

end

//TCR - P5IBa AMPA synapses

str s

//Load synapse location array

str locations = "apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL"

foreach s ({arglist {locations}})

     ce /P5IBa/{s}

     make_Ex_ch6TCRAMPA
     setfield /P5IBa/{s}/Ex_ch6TCRAMPA gmax {CondmaxTCRAMPA_P5IB}
     addmsg /P5IBa/{s}/Ex_ch6TCRAMPA /P5IBa/{s} CHANNEL Gk Ek
     addmsg /P5IBa/{s} /P5IBa/{s}/Ex_ch6TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - P5IBa NMDA synapses

str s

//Load synapse location array

str locations = "apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL"

foreach s ({arglist {locations}})

     ce /P5IBa/{s}

     make_Ex_ch6TCRNMDA
     setfield /P5IBa/{s}/Ex_ch6TCRNMDA gmax {CondmaxTCRNMDA_P5IB}
     addmsg /P5IBa/{s}/Ex_ch6TCRNMDA /P5IBa/{s} CHANNEL Gk Ek
     addmsg /P5IBa/{s} /P5IBa/{s}/Ex_ch6TCRNMDA VOLTAGE Vm

     ce /

end

//P23FRB - P5IBa AMPA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5IBa/{s}

     make_Ex_ch6P23FRBAMPA
     setfield /P5IBa/{s}/Ex_ch6P23FRBAMPA gmax {CondmaxP23FRBAMPA_P5IB}
     addmsg /P5IBa/{s}/Ex_ch6P23FRBAMPA /P5IBa/{s} CHANNEL Gk Ek
     addmsg /P5IBa/{s} /P5IBa/{s}/Ex_ch6P23FRBAMPA VOLTAGE Vm

     ce /

end

//P23FRB - P5IBa NMDA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5IBa/{s}

     make_Ex_ch6P23FRBNMDA
     setfield /P5IBa/{s}/Ex_ch6P23FRBNMDA gmax {CondmaxP23FRBNMDA_P5IB}
     addmsg /P5IBa/{s}/Ex_ch6P23FRBNMDA /P5IBa/{s} CHANNEL Gk Ek
     addmsg /P5IBa/{s} /P5IBa/{s}/Ex_ch6P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - P5IBa AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBa/{s}

     make_Ex_ch6P5RSAMPA
     setfield /P5IBa/{s}/Ex_ch6P5RSAMPA gmax {CondmaxP5RSAMPA_P5IB}
     addmsg /P5IBa/{s}/Ex_ch6P5RSAMPA /P5IBa/{s} CHANNEL Gk Ek
     addmsg /P5IBa/{s} /P5IBa/{s}/Ex_ch6P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - P5IBa NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBa/{s}

     make_Ex_ch6P5RSNMDA
     setfield /P5IBa/{s}/Ex_ch6P5RSNMDA gmax {CondmaxP5RSNMDA_P5IB}
     addmsg /P5IBa/{s}/Ex_ch6P5RSNMDA /P5IBa/{s} CHANNEL Gk Ek
     addmsg /P5IBa/{s} /P5IBa/{s}/Ex_ch6P5RSNMDA VOLTAGE Vm

     ce /

end
