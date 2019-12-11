
//P23RS - P5RSa AMPA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5RSa/{s}

     make_Ex_ch23P23RSAMPA
     setfield /P5RSa/{s}/Ex_ch23P23RSAMPA gmax {CondmaxP23RSAMPA_P5RS}
     addmsg /P5RSa/{s}/Ex_ch23P23RSAMPA /P5RSa/{s} CHANNEL Gk Ek
     addmsg /P5RSa/{s} /P5RSa/{s}/Ex_ch23P23RSAMPA VOLTAGE Vm

     ce /

end

//P23RS - P5RSa NMDA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5RSa/{s}

     make_Ex_ch23P23RSNMDA
     setfield /P5RSa/{s}/Ex_ch23P23RSNMDA gmax {CondmaxP23RSNMDA_P5RS}
     addmsg /P5RSa/{s}/Ex_ch23P23RSNMDA /P5RSa/{s} CHANNEL Gk Ek
     addmsg /P5RSa/{s} /P5RSa/{s}/Ex_ch23P23RSNMDA VOLTAGE Vm

     ce /

end

//P5IB - P5RSa AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5RSa/{s}

     make_Ex_ch23P5IBAMPA
     setfield /P5RSa/{s}/Ex_ch23P5IBAMPA gmax {CondmaxP5IBAMPA_P5RS}
     addmsg /P5RSa/{s}/Ex_ch23P5IBAMPA /P5RSa/{s} CHANNEL Gk Ek
     addmsg /P5RSa/{s} /P5RSa/{s}/Ex_ch23P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - P5RSa NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5RSa/{s}

     make_Ex_ch23P5IBNMDA
     setfield /P5RSa/{s}/Ex_ch23P5IBNMDA gmax {CondmaxP5IBNMDA_P5RS}
     addmsg /P5RSa/{s}/Ex_ch23P5IBNMDA /P5RSa/{s} CHANNEL Gk Ek
     addmsg /P5RSa/{s} /P5RSa/{s}/Ex_ch23P5IBNMDA VOLTAGE Vm

     ce /

end

//B5FS - P5RSa GABAa synapses

str s

//Load synapse location array

str locations = "soma apdend1 apdend2 basalLsupera basalLmida basalRsupera basalRmida basaldeepa"

foreach s ({arglist {locations}})

     ce /P5RSa/{s}

     make_Inh_ch23B5FSGABAa
     setfield /P5RSa/{s}/Inh_ch23B5FSGABAa gmax {CondmaxB5FSGABAa_P5RS}
     addmsg /P5RSa/{s}/Inh_ch23B5FSGABAa /P5RSa/{s} CHANNEL Gk Ek
     addmsg /P5RSa/{s} /P5RSa/{s}/Inh_ch23B5FSGABAa VOLTAGE Vm

     ce /

end

//P6RS - P5RSa AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5RSa/{s}

     make_Ex_ch23P6RSAMPA
     setfield /P5RSa/{s}/Ex_ch23P6RSAMPA gmax {CondmaxP6RSAMPA_P5RS}
     addmsg /P5RSa/{s}/Ex_ch23P6RSAMPA /P5RSa/{s} CHANNEL Gk Ek
     addmsg /P5RSa/{s} /P5RSa/{s}/Ex_ch23P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - P5RSa NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5RSa/{s}

     make_Ex_ch23P6RSNMDA
     setfield /P5RSa/{s}/Ex_ch23P6RSNMDA gmax {CondmaxP6RSNMDA_P5RS}
     addmsg /P5RSa/{s}/Ex_ch23P6RSNMDA /P5RSa/{s} CHANNEL Gk Ek
     addmsg /P5RSa/{s} /P5RSa/{s}/Ex_ch23P6RSNMDA VOLTAGE Vm

     ce /

end

//C23FS - P5RSa GABAa synapses

ce /P5RSa/axona

make_Inh_ch23C23FSGABAa
setfield /P5RSa/axona/Inh_ch23C23FSGABAa gmax {CondmaxC23FSGABAa_P5RS}
addmsg /P5RSa/axona/Inh_ch23C23FSGABAa /P5RSa/axona CHANNEL Gk Ek
addmsg /P5RSa/axona /P5RSa/axona/Inh_ch23C23FSGABAa VOLTAGE Vm

ce /

//C5FS - P5RSa GABAa synapses

ce /P5RSa/axona

make_Inh_ch23C5FSGABAa
setfield /P5RSa/axona/Inh_ch23C5FSGABAa gmax {CondmaxC5FSGABAa_P5RS}
addmsg /P5RSa/axona/Inh_ch23C5FSGABAa /P5RSa/axona CHANNEL Gk Ek
addmsg /P5RSa/axona /P5RSa/axona/Inh_ch23C5FSGABAa VOLTAGE Vm

ce /

//ST4RS - P5RSa AMPA synapses

str s

//Load synapse location array

str locations = "apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apobdistLa apobmidLa apobproxLa apobdistRa apobmidRa apobproxRa"

foreach s ({arglist {locations}})

     ce /P5RSa/{s}

     make_Ex_ch23ST4RSAMPA
     setfield /P5RSa/{s}/Ex_ch23ST4RSAMPA gmax {CondmaxST4RSAMPA_P5RS}
     addmsg /P5RSa/{s}/Ex_ch23ST4RSAMPA /P5RSa/{s} CHANNEL Gk Ek
     addmsg /P5RSa/{s} /P5RSa/{s}/Ex_ch23ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - P5RSa NMDA synapses

str s

//Load synapse location array

str locations = "apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apobdistLa apobmidLa apobproxLa apobdistRa apobmidRa apobproxRa"

foreach s ({arglist {locations}})

     ce /P5RSa/{s}

     make_Ex_ch23ST4RSNMDA
     setfield /P5RSa/{s}/Ex_ch23ST4RSNMDA gmax {CondmaxST4RSNMDA_P5RS}
     addmsg /P5RSa/{s}/Ex_ch23ST4RSNMDA /P5RSa/{s} CHANNEL Gk Ek
     addmsg /P5RSa/{s} /P5RSa/{s}/Ex_ch23ST4RSNMDA VOLTAGE Vm

     ce /

end



//I23LTS - P5RSa GABAa synapses

str s

//Load synapse location array

str locations = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

     ce /P5RSa/{s}

     make_Inh_ch23I23LTSGABAa
     setfield /P5RSa/{s}/Inh_ch23I23LTSGABAa gmax {CondmaxI23LTSGABAa_P5RS}
     addmsg /P5RSa/{s}/Inh_ch23I23LTSGABAa /P5RSa/{s} CHANNEL Gk Ek
     addmsg /P5RSa/{s} /P5RSa/{s}/Inh_ch23I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - P5RSa GABAa synapses

str s

//Load synapse location array

str locations = "apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL basalLsuperb basalLsuperc basalLmidb basalLmidc basalRsuperb basalRsuperc basalRmidb basalRmidc basaldeepb basaldeepc apobdistRb apobdistRc apobmidRb apobmidRc apobproxRb apobproxRc apobdistLb apobdistLc apobmidLb apobmidLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

     ce /P5RSa/{s}

     make_Inh_ch23I5LTSGABAa
     setfield /P5RSa/{s}/Inh_ch23I5LTSGABAa gmax {CondmaxI5LTSGABAa_P5RS}
     addmsg /P5RSa/{s}/Inh_ch23I5LTSGABAa /P5RSa/{s} CHANNEL Gk Ek
     addmsg /P5RSa/{s} /P5RSa/{s}/Inh_ch23I5LTSGABAa VOLTAGE Vm

     ce /

end

//TCR - P5RSa AMPA synapses

str s

//Load synapse location array

str locations = "apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL"

foreach s ({arglist {locations}})

     ce /P5RSa/{s}

     make_Ex_ch23TCRAMPA
     setfield /P5RSa/{s}/Ex_ch23TCRAMPA gmax {CondmaxTCRAMPA_P5RS}
     addmsg /P5RSa/{s}/Ex_ch23TCRAMPA /P5RSa/{s} CHANNEL Gk Ek
     addmsg /P5RSa/{s} /P5RSa/{s}/Ex_ch23TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - P5RSa NMDA synapses

str s

//Load synapse location array

str locations = "apdend13 apdend14aR apdend14bR apdend14cR apdend14dR apdend14aL apdend14bL apdend14cL apdend14dL"

foreach s ({arglist {locations}})

     ce /P5RSa/{s}

     make_Ex_ch23TCRNMDA
     setfield /P5RSa/{s}/Ex_ch23TCRNMDA gmax {CondmaxTCRNMDA_P5RS}
     addmsg /P5RSa/{s}/Ex_ch23TCRNMDA /P5RSa/{s} CHANNEL Gk Ek
     addmsg /P5RSa/{s} /P5RSa/{s}/Ex_ch23TCRNMDA VOLTAGE Vm

     ce /

end

//P23FRB - P5RSa AMPA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5RSa/{s}

     make_Ex_ch23P23FRBAMPA
     setfield /P5RSa/{s}/Ex_ch23P23FRBAMPA gmax {CondmaxP23FRBAMPA_P5RS}
     addmsg /P5RSa/{s}/Ex_ch23P23FRBAMPA /P5RSa/{s} CHANNEL Gk Ek
     addmsg /P5RSa/{s} /P5RSa/{s}/Ex_ch23P23FRBAMPA VOLTAGE Vm

     ce /

end

//P23FRB - P5RSa NMDA synapses

str s

//Load synapse location array

str locations = "apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12"

foreach s ({arglist {locations}})

     ce /P5RSa/{s}

     make_Ex_ch23P23FRBNMDA
     setfield /P5RSa/{s}/Ex_ch23P23FRBNMDA gmax {CondmaxP23FRBNMDA_P5RS}
     addmsg /P5RSa/{s}/Ex_ch23P23FRBNMDA /P5RSa/{s} CHANNEL Gk Ek
     addmsg /P5RSa/{s} /P5RSa/{s}/Ex_ch23P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - P5RSa AMPA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5RSa/{s}

     make_Ex_ch23P5RSAMPA
     setfield /P5RSa/{s}/Ex_ch23P5RSAMPA gmax {CondmaxP5RSAMPA_P5RS}
     addmsg /P5RSa/{s}/Ex_ch23P5RSAMPA /P5RSa/{s} CHANNEL Gk Ek
     addmsg /P5RSa/{s} /P5RSa/{s}/Ex_ch23P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - P5RSa NMDA synapses

str s

//Load synapse location array

str locations = "apdend1 apdend2 apdend3 apdend4 apdend5 apdend6 apdend7 apdend8 apdend9 apdend10 apdend11 apdend12 apdend13 apobdistLa apobdistLb apobdistLc apobmidLa apobmidLb apobmidLc apobproxLa apobproxLb apobproxLc apobdistRa apobdistRb apobdistRc apobmidRa apobmidRb apobmidRc apobproxRa apobproxRb apobproxRc basalLsupera basalLsuperb basalLsuperc basalLmida basalLmidb basalLmidc basalRsupera basalRsuperb basalRsuperc basalRmida basalRmidb basalRmidc basaldeepa basaldeepb basaldeepc"

foreach s ({arglist {locations}})

     ce /P5RSa/{s}

     make_Ex_ch23P5RSNMDA
     setfield /P5RSa/{s}/Ex_ch23P5RSNMDA gmax {CondmaxP5RSNMDA_P5RS}
     addmsg /P5RSa/{s}/Ex_ch23P5RSNMDA /P5RSa/{s} CHANNEL Gk Ek
     addmsg /P5RSa/{s} /P5RSa/{s}/Ex_ch23P5RSNMDA VOLTAGE Vm

     ce /

end
