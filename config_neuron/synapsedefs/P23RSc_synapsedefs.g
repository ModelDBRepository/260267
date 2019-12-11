
//P23RS - P23RSc AMPA synapses

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc soma"

foreach s ({arglist {locations}})

     ce /P23RSc/{s}

     make_Ex_ch3P23RSAMPA
     setfield /P23RSc/{s}/Ex_ch3P23RSAMPA gmax {CondmaxP23RSAMPA_P23RS}
     addmsg /P23RSc/{s}/Ex_ch3P23RSAMPA /P23RSc/{s} CHANNEL Gk Ek
     addmsg /P23RSc/{s} /P23RSc/{s}/Ex_ch3P23RSAMPA VOLTAGE Vm

     ce /

end

//P23RS - P23RSc NMDA synapses

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc soma"

foreach s ({arglist {locations}})

     ce /P23RSc/{s}

     make_Ex_ch3P23RSNMDA
     setfield /P23RSc/{s}/Ex_ch3P23RSNMDA gmax {CondmaxP23RSNMDA_P23RS}
     addmsg /P23RSc/{s}/Ex_ch3P23RSNMDA /P23RSc/{s} CHANNEL Gk Ek
     addmsg /P23RSc/{s} /P23RSc/{s}/Ex_ch3P23RSNMDA VOLTAGE Vm

     ce /

end

//B23FS - P23RSc GABAa synapses

str s

//Load synapse location array

str locations = "soma basalLsupera basalLmidsupera basalLmiddeepa basalLdeepa basalRsupera basalRmidsupera basalRmiddeepa basalRdeepa apdend1 apdend2"

foreach s ({arglist {locations}})

     ce /P23RSc/{s}

     make_Inh_ch3B23FSGABAa
     setfield /P23RSc/{s}/Inh_ch3B23FSGABAa gmax {CondmaxB23FSGABAa_P23RS}
     addmsg /P23RSc/{s}/Inh_ch3B23FSGABAa /P23RSc/{s} CHANNEL Gk Ek
     addmsg /P23RSc/{s} /P23RSc/{s}/Inh_ch3B23FSGABAa VOLTAGE Vm

     ce /

end

//P5IB - P23RSc AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL "

foreach s ({arglist {locations}})

     ce /P23RSc/{s}

     make_Ex_ch3P5IBAMPA
     setfield /P23RSc/{s}/Ex_ch3P5IBAMPA gmax {CondmaxP5IBAMPA_P23RS}
     addmsg /P23RSc/{s}/Ex_ch3P5IBAMPA /P23RSc/{s} CHANNEL Gk Ek
     addmsg /P23RSc/{s} /P23RSc/{s}/Ex_ch3P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - P23RSc NMDA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL "

foreach s ({arglist {locations}})

     ce /P23RSc/{s}

     make_Ex_ch3P5IBNMDA
     setfield /P23RSc/{s}/Ex_ch3P5IBNMDA gmax {CondmaxP5IBNMDA_P23RS}
     addmsg /P23RSc/{s}/Ex_ch3P5IBNMDA /P23RSc/{s} CHANNEL Gk Ek
     addmsg /P23RSc/{s} /P23RSc/{s}/Ex_ch3P5IBNMDA VOLTAGE Vm

     ce /

end

//P6RS - P23RSc AMPA synapses

str s

//Load synapse location array

str locations = "apdend4aL apdend4bL apdend4aR apdend4bR "

foreach s ({arglist {locations}})

     ce /P23RSc/{s}

     make_Ex_ch3P6RSAMPA
     setfield /P23RSc/{s}/Ex_ch3P6RSAMPA gmax {CondmaxP6RSAMPA_P23RS}
     addmsg /P23RSc/{s}/Ex_ch3P6RSAMPA /P23RSc/{s} CHANNEL Gk Ek
     addmsg /P23RSc/{s} /P23RSc/{s}/Ex_ch3P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - P23RSc NMDA synapses

str s

//Load synapse location array

str locations = "apdend4aL apdend4bL apdend4aR apdend4bR "

foreach s ({arglist {locations}})

     ce /P23RSc/{s}

     make_Ex_ch3P6RSNMDA
     setfield /P23RSc/{s}/Ex_ch3P6RSNMDA gmax {CondmaxP6RSNMDA_P23RS}
     addmsg /P23RSc/{s}/Ex_ch3P6RSNMDA /P23RSc/{s} CHANNEL Gk Ek
     addmsg /P23RSc/{s} /P23RSc/{s}/Ex_ch3P6RSNMDA VOLTAGE Vm

     ce /

end

//C23FS - P23RSc GABAa synapses

ce /P23RSc/axona

make_Inh_ch3C23FSGABAa
setfield /P23RSc/axona/Inh_ch3C23FSGABAa gmax {CondmaxC23FSGABAa_P23RS}
addmsg /P23RSc/axona/Inh_ch3C23FSGABAa /P23RSc/axona CHANNEL Gk Ek
addmsg /P23RSc/axona /P23RSc/axona/Inh_ch3C23FSGABAa VOLTAGE Vm

ce /

//C5FS - P23RSc GABAa synapses

ce /P23RSc/axona

make_Inh_ch3C5FSGABAa
setfield /P23RSc/axona/Inh_ch3C5FSGABAa gmax {CondmaxC5FSGABAa_P23RS}
addmsg /P23RSc/axona/Inh_ch3C5FSGABAa /P23RSc/axona CHANNEL Gk Ek
addmsg /P23RSc/axona /P23RSc/axona/Inh_ch3C5FSGABAa VOLTAGE Vm

ce /

//ST4RS - P23RSc AMPA synapses

str s

//Load synapse location array

str locations = "basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc"

foreach s ({arglist {locations}})

     ce /P23RSc/{s}

     make_Ex_ch3ST4RSAMPA
     setfield /P23RSc/{s}/Ex_ch3ST4RSAMPA gmax {CondmaxST4RSAMPA_P23RS}
     addmsg /P23RSc/{s}/Ex_ch3ST4RSAMPA /P23RSc/{s} CHANNEL Gk Ek
     addmsg /P23RSc/{s} /P23RSc/{s}/Ex_ch3ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - P23RSc NMDA synapses

str s

//Load synapse location array

str locations = "basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc"

foreach s ({arglist {locations}})

     ce /P23RSc/{s}

     make_Ex_ch3ST4RSNMDA
     setfield /P23RSc/{s}/Ex_ch3ST4RSNMDA gmax {CondmaxST4RSNMDA_P23RS}
     addmsg /P23RSc/{s}/Ex_ch3ST4RSNMDA /P23RSc/{s} CHANNEL Gk Ek
     addmsg /P23RSc/{s} /P23RSc/{s}/Ex_ch3ST4RSNMDA VOLTAGE Vm

     ce /

end

//I23LTS - P23RSc GABAa synapses

str s

//Load synapse location array

str locations = "basalLsuperb basalLmidsuperb basalLmiddeepb basalLdeepb basalRsuperb basalRmidsuperb basalRmiddeepb basalRdeepb basalLsuperc basalLmidsuperc basalLmiddeepc basalLdeepc basalRsuperc basalRmidsuperc basalRmiddeepc basalRdeepc apdend3 apdend4aR apdend4bR apdend4aL apdend4bL apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR apobdistRb apobdistRc apobproxRb apobproxRc apobdistLb apobdistLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

     ce /P23RSc/{s}

     make_Inh_ch3I23LTSGABAa
     setfield /P23RSc/{s}/Inh_ch3I23LTSGABAa gmax {CondmaxI23LTSGABAa_P23RS}
     addmsg /P23RSc/{s}/Inh_ch3I23LTSGABAa /P23RSc/{s} CHANNEL Gk Ek
     addmsg /P23RSc/{s} /P23RSc/{s}/Inh_ch3I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - P23RSc GABAa synapses

str s

//Load synapse location array

str locations = "basalLsuperb basalLmidsuperb basalLmiddeepb basalLdeepb basalRsuperb basalRmidsuperb basalRmiddeepb basalRdeepb basalLsuperc basalLmidsuperc basalLmiddeepc basalLdeepc basalRsuperc basalRmidsuperc basalRmiddeepc basalRdeepc apdend3 apdend4aR apdend4bR apdend4aL apdend4bL apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR apobdistRb apobdistRc apobproxRb apobproxRc apobdistLb apobdistLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

     ce /P23RSc/{s}

     make_Inh_ch3I5LTSGABAa
     setfield /P23RSc/{s}/Inh_ch3I5LTSGABAa gmax {CondmaxI5LTSGABAa_P23RS}
     addmsg /P23RSc/{s}/Inh_ch3I5LTSGABAa /P23RSc/{s} CHANNEL Gk Ek
     addmsg /P23RSc/{s} /P23RSc/{s}/Inh_ch3I5LTSGABAa VOLTAGE Vm

     ce /

end

//TCR - P23RSc AMPA synapses

str s

//Load synapse location array

str locations = "apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR"

foreach s ({arglist {locations}})

     ce /P23RSc/{s}

     make_Ex_ch3TCRAMPA
     setfield /P23RSc/{s}/Ex_ch3TCRAMPA gmax {CondmaxTCRAMPA_P23RS}
     addmsg /P23RSc/{s}/Ex_ch3TCRAMPA /P23RSc/{s} CHANNEL Gk Ek
     addmsg /P23RSc/{s} /P23RSc/{s}/Ex_ch3TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - P23RSc NMDA synapses

str s

//Load synapse location array

str locations = "apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR"

foreach s ({arglist {locations}})

     ce /P23RSc/{s}

     make_Ex_ch3TCRNMDA
     setfield /P23RSc/{s}/Ex_ch3TCRNMDA gmax {CondmaxTCRNMDA_P23RS}
     addmsg /P23RSc/{s}/Ex_ch3TCRNMDA /P23RSc/{s} CHANNEL Gk Ek
     addmsg /P23RSc/{s} /P23RSc/{s}/Ex_ch3TCRNMDA VOLTAGE Vm

     ce /

end

//P23FRB - P23RSc AMPA synapses

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc soma"

foreach s ({arglist {locations}})

     ce /P23RSc/{s}

     make_Ex_ch3P23FRBAMPA
     setfield /P23RSc/{s}/Ex_ch3P23FRBAMPA gmax {CondmaxP23FRBAMPA_P23RS}
     addmsg /P23RSc/{s}/Ex_ch3P23FRBAMPA /P23RSc/{s} CHANNEL Gk Ek
     addmsg /P23RSc/{s} /P23RSc/{s}/Ex_ch3P23FRBAMPA VOLTAGE Vm

     ce /

end

//P23FRB - P23RSc NMDA synapses

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc soma"

foreach s ({arglist {locations}})

     ce /P23RSc/{s}

     make_Ex_ch3P23FRBNMDA
     setfield /P23RSc/{s}/Ex_ch3P23FRBNMDA gmax {CondmaxP23FRBNMDA_P23RS}
     addmsg /P23RSc/{s}/Ex_ch3P23FRBNMDA /P23RSc/{s} CHANNEL Gk Ek
     addmsg /P23RSc/{s} /P23RSc/{s}/Ex_ch3P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - P23RSc AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL "

foreach s ({arglist {locations}})

     ce /P23RSc/{s}

     make_Ex_ch3P5RSAMPA
     setfield /P23RSc/{s}/Ex_ch3P5RSAMPA gmax {CondmaxP5RSAMPA_P23RS}
     addmsg /P23RSc/{s}/Ex_ch3P5RSAMPA /P23RSc/{s} CHANNEL Gk Ek
     addmsg /P23RSc/{s} /P23RSc/{s}/Ex_ch3P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - P23RSc NMDA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL "

foreach s ({arglist {locations}})

     ce /P23RSc/{s}

     make_Ex_ch3P5RSNMDA
     setfield /P23RSc/{s}/Ex_ch3P5RSNMDA gmax {CondmaxP5RSNMDA_P23RS}
     addmsg /P23RSc/{s}/Ex_ch3P5RSNMDA /P23RSc/{s} CHANNEL Gk Ek
     addmsg /P23RSc/{s} /P23RSc/{s}/Ex_ch3P5RSNMDA VOLTAGE Vm

     ce /

end
