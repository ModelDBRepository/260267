
//P23RS - P5IBb AMPA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5IBb/{s}

     make_Ex_ch7P23RSAMPA
     setfield /P5IBb/{s}/Ex_ch7P23RSAMPA gmax {CondmaxP23RSAMPA_P5IB}
     addmsg /P5IBb/{s}/Ex_ch7P23RSAMPA /P5IBb/{s} CHANNEL Gk Ek
     addmsg /P5IBb/{s} /P5IBb/{s}/Ex_ch7P23RSAMPA VOLTAGE Vm

     ce /

end

//P23RS - P5IBb NMDA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5IBb/{s}

     make_Ex_ch7P23RSNMDA
     setfield /P5IBb/{s}/Ex_ch7P23RSNMDA gmax {CondmaxP23RSNMDA_P5IB}
     addmsg /P5IBb/{s}/Ex_ch7P23RSNMDA /P5IBb/{s} CHANNEL Gk Ek
     addmsg /P5IBb/{s} /P5IBb/{s}/Ex_ch7P23RSNMDA VOLTAGE Vm

     ce /

end

//P5IB - P5IBb AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBb/{s}

     make_Ex_ch7P5IBAMPA
     setfield /P5IBb/{s}/Ex_ch7P5IBAMPA gmax {CondmaxP5IBAMPA_P5IB}
     addmsg /P5IBb/{s}/Ex_ch7P5IBAMPA /P5IBb/{s} CHANNEL Gk Ek
     addmsg /P5IBb/{s} /P5IBb/{s}/Ex_ch7P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - P5IBb NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBb/{s}

     make_Ex_ch7P5IBNMDA
     setfield /P5IBb/{s}/Ex_ch7P5IBNMDA gmax {CondmaxP5IBNMDA_P5IB}
     addmsg /P5IBb/{s}/Ex_ch7P5IBNMDA /P5IBb/{s} CHANNEL Gk Ek
     addmsg /P5IBb/{s} /P5IBb/{s}/Ex_ch7P5IBNMDA VOLTAGE Vm

     ce /

end

//B5FS - P5IBb GABAa synapses

str s

//Load synapse location array

str locations = "soma apdend1 apdend2 basalLsupera basalLmida basalRsupera basalRmida basaldeepa"

foreach s ({arglist {locations}})

     ce /P5IBb/{s}

     make_Inh_ch7B5FSGABAa
     setfield /P5IBb/{s}/Inh_ch7B5FSGABAa gmax {CondmaxB5FSGABAa_P5IB}
     addmsg /P5IBb/{s}/Inh_ch7B5FSGABAa /P5IBb/{s} CHANNEL Gk Ek
     addmsg /P5IBb/{s} /P5IBb/{s}/Inh_ch7B5FSGABAa VOLTAGE Vm

     ce /

end

//P6RS - P5IBb AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBb/{s}

     make_Ex_ch7P6RSAMPA
     setfield /P5IBb/{s}/Ex_ch7P6RSAMPA gmax {CondmaxP6RSAMPA_P5IB}
     addmsg /P5IBb/{s}/Ex_ch7P6RSAMPA /P5IBb/{s} CHANNEL Gk Ek
     addmsg /P5IBb/{s} /P5IBb/{s}/Ex_ch7P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - P5IBb NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBb/{s}

     make_Ex_ch7P6RSNMDA
     setfield /P5IBb/{s}/Ex_ch7P6RSNMDA gmax {CondmaxP6RSNMDA_P5IB}
     addmsg /P5IBb/{s}/Ex_ch7P6RSNMDA /P5IBb/{s} CHANNEL Gk Ek
     addmsg /P5IBb/{s} /P5IBb/{s}/Ex_ch7P6RSNMDA VOLTAGE Vm

     ce /

end

//C23FS - P5IBb GABAa synapses

ce /P5IBb/axona

make_Inh_ch7C23FSGABAa
setfield /P5IBb/axona/Inh_ch7C23FSGABAa gmax {CondmaxC23FSGABAa_P5IB}
addmsg /P5IBb/axona/Inh_ch7C23FSGABAa /P5IBb/axona CHANNEL Gk Ek
addmsg /P5IBb/axona /P5IBb/axona/Inh_ch7C23FSGABAa VOLTAGE Vm

ce /

//C5FS - P5IBb GABAa synapses

ce /P5IBb/axona

make_Inh_ch7C5FSGABAa
setfield /P5IBb/axona/Inh_ch7C5FSGABAa gmax {CondmaxC5FSGABAa_P5IB}
addmsg /P5IBb/axona/Inh_ch7C5FSGABAa /P5IBb/axona CHANNEL Gk Ek
addmsg /P5IBb/axona /P5IBb/axona/Inh_ch7C5FSGABAa VOLTAGE Vm

ce /

//ST4RS - P5IBb AMPA synapses

str s

//Load synapse location array

str locations = "apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apobdistLa apobmidLa apobproxLa apobdistRa apobmidRa apobproxRa"

foreach s ({arglist {locations}})

     ce /P5IBb/{s}

     make_Ex_ch7ST4RSAMPA
     setfield /P5IBb/{s}/Ex_ch7ST4RSAMPA gmax {CondmaxST4RSAMPA_P5IB}
     addmsg /P5IBb/{s}/Ex_ch7ST4RSAMPA /P5IBb/{s} CHANNEL Gk Ek
     addmsg /P5IBb/{s} /P5IBb/{s}/Ex_ch7ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - P5IBb NMDA synapses

str s

//Load synapse location array

str locations = "apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apobdistLa apobmidLa apobproxLa apobdistRa apobmidRa apobproxRa"

foreach s ({arglist {locations}})

     ce /P5IBb/{s}

     make_Ex_ch7ST4RSNMDA
     setfield /P5IBb/{s}/Ex_ch7ST4RSNMDA gmax {CondmaxST4RSNMDA_P5IB}
     addmsg /P5IBb/{s}/Ex_ch7ST4RSNMDA /P5IBb/{s} CHANNEL Gk Ek
     addmsg /P5IBb/{s} /P5IBb/{s}/Ex_ch7ST4RSNMDA VOLTAGE Vm

     ce /

end



//I23LTS - P5IBb GABAa synapses

str s

//Load synapse location array

str locations = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

     ce /P5IBb/{s}

     make_Inh_ch7I23LTSGABAa
     setfield /P5IBb/{s}/Inh_ch7I23LTSGABAa gmax {CondmaxI23LTSGABAa_P5IB}
     addmsg /P5IBb/{s}/Inh_ch7I23LTSGABAa /P5IBb/{s} CHANNEL Gk Ek
     addmsg /P5IBb/{s} /P5IBb/{s}/Inh_ch7I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - P5IBb GABAa synapses

str s

//Load synapse location array

str locations = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

     ce /P5IBb/{s}

     make_Inh_ch7I5LTSGABAa
     setfield /P5IBb/{s}/Inh_ch7I5LTSGABAa gmax {CondmaxI5LTSGABAa_P5IB}
     addmsg /P5IBb/{s}/Inh_ch7I5LTSGABAa /P5IBb/{s} CHANNEL Gk Ek
     addmsg /P5IBb/{s} /P5IBb/{s}/Inh_ch7I5LTSGABAa VOLTAGE Vm

     ce /

end

//TCR - P5IBb AMPA synapses

str s

//Load synapse location array

str locations = "apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL"

foreach s ({arglist {locations}})

     ce /P5IBb/{s}

     make_Ex_ch7TCRAMPA
     setfield /P5IBb/{s}/Ex_ch7TCRAMPA gmax {CondmaxTCRAMPA_P5IB}
     addmsg /P5IBb/{s}/Ex_ch7TCRAMPA /P5IBb/{s} CHANNEL Gk Ek
     addmsg /P5IBb/{s} /P5IBb/{s}/Ex_ch7TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - P5IBb NMDA synapses

str s

//Load synapse location array

str locations = "apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL"

foreach s ({arglist {locations}})

     ce /P5IBb/{s}

     make_Ex_ch7TCRNMDA
     setfield /P5IBb/{s}/Ex_ch7TCRNMDA gmax {CondmaxTCRNMDA_P5IB}
     addmsg /P5IBb/{s}/Ex_ch7TCRNMDA /P5IBb/{s} CHANNEL Gk Ek
     addmsg /P5IBb/{s} /P5IBb/{s}/Ex_ch7TCRNMDA VOLTAGE Vm

     ce /

end

//P23FRB - P5IBb AMPA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5IBb/{s}

     make_Ex_ch7P23FRBAMPA
     setfield /P5IBb/{s}/Ex_ch7P23FRBAMPA gmax {CondmaxP23FRBAMPA_P5IB}
     addmsg /P5IBb/{s}/Ex_ch7P23FRBAMPA /P5IBb/{s} CHANNEL Gk Ek
     addmsg /P5IBb/{s} /P5IBb/{s}/Ex_ch7P23FRBAMPA VOLTAGE Vm

     ce /

end

//P23FRB - P5IBb NMDA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5IBb/{s}

     make_Ex_ch7P23FRBNMDA
     setfield /P5IBb/{s}/Ex_ch7P23FRBNMDA gmax {CondmaxP23FRBNMDA_P5IB}
     addmsg /P5IBb/{s}/Ex_ch7P23FRBNMDA /P5IBb/{s} CHANNEL Gk Ek
     addmsg /P5IBb/{s} /P5IBb/{s}/Ex_ch7P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - P5IBb AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBb/{s}

     make_Ex_ch7P5RSAMPA
     setfield /P5IBb/{s}/Ex_ch7P5RSAMPA gmax {CondmaxP5RSAMPA_P5IB}
     addmsg /P5IBb/{s}/Ex_ch7P5RSAMPA /P5IBb/{s} CHANNEL Gk Ek
     addmsg /P5IBb/{s} /P5IBb/{s}/Ex_ch7P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - P5IBb NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5IBb/{s}

     make_Ex_ch7P5RSNMDA
     setfield /P5IBb/{s}/Ex_ch7P5RSNMDA gmax {CondmaxP5RSNMDA_P5IB}
     addmsg /P5IBb/{s}/Ex_ch7P5RSNMDA /P5IBb/{s} CHANNEL Gk Ek
     addmsg /P5IBb/{s} /P5IBb/{s}/Ex_ch7P5RSNMDA VOLTAGE Vm

     ce /

end
