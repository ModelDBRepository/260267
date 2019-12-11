
//P23RS - P23RSd AMPA synapses

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc soma"

foreach s ({arglist {locations}})

     ce /P23RSd/{s}

     make_Ex_ch4P23RSAMPA
     setfield /P23RSd/{s}/Ex_ch4P23RSAMPA gmax {CondmaxP23RSAMPA_P23RS}
     addmsg /P23RSd/{s}/Ex_ch4P23RSAMPA /P23RSd/{s} CHANNEL Gk Ek
     addmsg /P23RSd/{s} /P23RSd/{s}/Ex_ch4P23RSAMPA VOLTAGE Vm

     ce /

end

//P23RS - P23RSd NMDA synapses

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc soma"

foreach s ({arglist {locations}})

     ce /P23RSd/{s}

     make_Ex_ch4P23RSNMDA
     setfield /P23RSd/{s}/Ex_ch4P23RSNMDA gmax {CondmaxP23RSNMDA_P23RS}
     addmsg /P23RSd/{s}/Ex_ch4P23RSNMDA /P23RSd/{s} CHANNEL Gk Ek
     addmsg /P23RSd/{s} /P23RSd/{s}/Ex_ch4P23RSNMDA VOLTAGE Vm

     ce /

end

//B23FS - P23RSd GABAa synapses

str s

//Load synapse location array

str locations = "soma basalLsupera basalLmidsupera basalLmiddeepa basalLdeepa basalRsupera basalRmidsupera basalRmiddeepa basalRdeepa apdend1 apdend2"

foreach s ({arglist {locations}})

     ce /P23RSd/{s}

     make_Inh_ch4B23FSGABAa
     setfield /P23RSd/{s}/Inh_ch4B23FSGABAa gmax {CondmaxB23FSGABAa_P23RS}
     addmsg /P23RSd/{s}/Inh_ch4B23FSGABAa /P23RSd/{s} CHANNEL Gk Ek
     addmsg /P23RSd/{s} /P23RSd/{s}/Inh_ch4B23FSGABAa VOLTAGE Vm

     ce /

end

//P5IB - P23RSd AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL "

foreach s ({arglist {locations}})

     ce /P23RSd/{s}

     make_Ex_ch4P5IBAMPA
     setfield /P23RSd/{s}/Ex_ch4P5IBAMPA gmax {CondmaxP5IBAMPA_P23RS}
     addmsg /P23RSd/{s}/Ex_ch4P5IBAMPA /P23RSd/{s} CHANNEL Gk Ek
     addmsg /P23RSd/{s} /P23RSd/{s}/Ex_ch4P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - P23RSd NMDA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL "

foreach s ({arglist {locations}})

     ce /P23RSd/{s}

     make_Ex_ch4P5IBNMDA
     setfield /P23RSd/{s}/Ex_ch4P5IBNMDA gmax {CondmaxP5IBNMDA_P23RS}
     addmsg /P23RSd/{s}/Ex_ch4P5IBNMDA /P23RSd/{s} CHANNEL Gk Ek
     addmsg /P23RSd/{s} /P23RSd/{s}/Ex_ch4P5IBNMDA VOLTAGE Vm

     ce /

end

//P6RS - P23RSd AMPA synapses

str s

//Load synapse location array

str locations = "apdend4aL apdend4bL apdend4aR apdend4bR "

foreach s ({arglist {locations}})

     ce /P23RSd/{s}

     make_Ex_ch4P6RSAMPA
     setfield /P23RSd/{s}/Ex_ch4P6RSAMPA gmax {CondmaxP6RSAMPA_P23RS}
     addmsg /P23RSd/{s}/Ex_ch4P6RSAMPA /P23RSd/{s} CHANNEL Gk Ek
     addmsg /P23RSd/{s} /P23RSd/{s}/Ex_ch4P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - P23RSd NMDA synapses

str s

//Load synapse location array

str locations = "apdend4aL apdend4bL apdend4aR apdend4bR "

foreach s ({arglist {locations}})

     ce /P23RSd/{s}

     make_Ex_ch4P6RSNMDA
     setfield /P23RSd/{s}/Ex_ch4P6RSNMDA gmax {CondmaxP6RSNMDA_P23RS}
     addmsg /P23RSd/{s}/Ex_ch4P6RSNMDA /P23RSd/{s} CHANNEL Gk Ek
     addmsg /P23RSd/{s} /P23RSd/{s}/Ex_ch4P6RSNMDA VOLTAGE Vm

     ce /

end

//C23FS - P23RSd GABAa synapses

ce /P23RSd/axona

make_Inh_ch4C23FSGABAa
setfield /P23RSd/axona/Inh_ch4C23FSGABAa gmax {CondmaxC23FSGABAa_P23RS}
addmsg /P23RSd/axona/Inh_ch4C23FSGABAa /P23RSd/axona CHANNEL Gk Ek
addmsg /P23RSd/axona /P23RSd/axona/Inh_ch4C23FSGABAa VOLTAGE Vm

ce /

//C5FS - P23RSd GABAa synapses

ce /P23RSd/axona

make_Inh_ch4C5FSGABAa
setfield /P23RSd/axona/Inh_ch4C5FSGABAa gmax {CondmaxC5FSGABAa_P23RS}
addmsg /P23RSd/axona/Inh_ch4C5FSGABAa /P23RSd/axona CHANNEL Gk Ek
addmsg /P23RSd/axona /P23RSd/axona/Inh_ch4C5FSGABAa VOLTAGE Vm

ce /

//ST4RS - P23RSd AMPA synapses

str s

//Load synapse location array

str locations = "basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc"

foreach s ({arglist {locations}})

     ce /P23RSd/{s}

     make_Ex_ch4ST4RSAMPA
     setfield /P23RSd/{s}/Ex_ch4ST4RSAMPA gmax {CondmaxST4RSAMPA_P23RS}
     addmsg /P23RSd/{s}/Ex_ch4ST4RSAMPA /P23RSd/{s} CHANNEL Gk Ek
     addmsg /P23RSd/{s} /P23RSd/{s}/Ex_ch4ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - P23RSd NMDA synapses

str s

//Load synapse location array

str locations = "basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc"

foreach s ({arglist {locations}})

     ce /P23RSd/{s}

     make_Ex_ch4ST4RSNMDA
     setfield /P23RSd/{s}/Ex_ch4ST4RSNMDA gmax {CondmaxST4RSNMDA_P23RS}
     addmsg /P23RSd/{s}/Ex_ch4ST4RSNMDA /P23RSd/{s} CHANNEL Gk Ek
     addmsg /P23RSd/{s} /P23RSd/{s}/Ex_ch4ST4RSNMDA VOLTAGE Vm

     ce /

end

//I23LTS - P23RSd GABAa synapses

str s

//Load synapse location array

str locations = "basalLsuperb basalLmidsuperb basalLmiddeepb basalLdeepb basalRsuperb basalRmidsuperb basalRmiddeepb basalRdeepb basalLsuperc basalLmidsuperc basalLmiddeepc basalLdeepc basalRsuperc basalRmidsuperc basalRmiddeepc basalRdeepc apdend3 apdend4aR apdend4bR apdend4aL apdend4bL apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR apobdistRb apobdistRc apobproxRb apobproxRc apobdistLb apobdistLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

     ce /P23RSd/{s}

     make_Inh_ch4I23LTSGABAa
     setfield /P23RSd/{s}/Inh_ch4I23LTSGABAa gmax {CondmaxI23LTSGABAa_P23RS}
     addmsg /P23RSd/{s}/Inh_ch4I23LTSGABAa /P23RSd/{s} CHANNEL Gk Ek
     addmsg /P23RSd/{s} /P23RSd/{s}/Inh_ch4I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - P23RSd GABAa synapses

str s

//Load synapse location array

str locations = "basalLsuperb basalLmidsuperb basalLmiddeepb basalLdeepb basalRsuperb basalRmidsuperb basalRmiddeepb basalRdeepb basalLsuperc basalLmidsuperc basalLmiddeepc basalLdeepc basalRsuperc basalRmidsuperc basalRmiddeepc basalRdeepc apdend3 apdend4aR apdend4bR apdend4aL apdend4bL apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR apobdistRb apobdistRc apobproxRb apobproxRc apobdistLb apobdistLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

     ce /P23RSd/{s}

     make_Inh_ch4I5LTSGABAa
     setfield /P23RSd/{s}/Inh_ch4I5LTSGABAa gmax {CondmaxI5LTSGABAa_P23RS}
     addmsg /P23RSd/{s}/Inh_ch4I5LTSGABAa /P23RSd/{s} CHANNEL Gk Ek
     addmsg /P23RSd/{s} /P23RSd/{s}/Inh_ch4I5LTSGABAa VOLTAGE Vm

     ce /

end

//TCR - P23RSd AMPA synapses

str s

//Load synapse location array

str locations = "apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR"

foreach s ({arglist {locations}})

     ce /P23RSd/{s}

     make_Ex_ch4TCRAMPA
     setfield /P23RSd/{s}/Ex_ch4TCRAMPA gmax {CondmaxTCRAMPA_P23RS}
     addmsg /P23RSd/{s}/Ex_ch4TCRAMPA /P23RSd/{s} CHANNEL Gk Ek
     addmsg /P23RSd/{s} /P23RSd/{s}/Ex_ch4TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - P23RSd NMDA synapses

str s

//Load synapse location array

str locations = "apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR"

foreach s ({arglist {locations}})

     ce /P23RSd/{s}

     make_Ex_ch4TCRNMDA
     setfield /P23RSd/{s}/Ex_ch4TCRNMDA gmax {CondmaxTCRNMDA_P23RS}
     addmsg /P23RSd/{s}/Ex_ch4TCRNMDA /P23RSd/{s} CHANNEL Gk Ek
     addmsg /P23RSd/{s} /P23RSd/{s}/Ex_ch4TCRNMDA VOLTAGE Vm

     ce /

end

//P23FRB - P23RSd AMPA synapses

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc soma"

foreach s ({arglist {locations}})

     ce /P23RSd/{s}

     make_Ex_ch4P23FRBAMPA
     setfield /P23RSd/{s}/Ex_ch4P23FRBAMPA gmax {CondmaxP23FRBAMPA_P23RS}
     addmsg /P23RSd/{s}/Ex_ch4P23FRBAMPA /P23RSd/{s} CHANNEL Gk Ek
     addmsg /P23RSd/{s} /P23RSd/{s}/Ex_ch4P23FRBAMPA VOLTAGE Vm

     ce /

end

//P23FRB - P23RSd NMDA synapses

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc soma"

foreach s ({arglist {locations}})

     ce /P23RSd/{s}

     make_Ex_ch4P23FRBNMDA
     setfield /P23RSd/{s}/Ex_ch4P23FRBNMDA gmax {CondmaxP23FRBNMDA_P23RS}
     addmsg /P23RSd/{s}/Ex_ch4P23FRBNMDA /P23RSd/{s} CHANNEL Gk Ek
     addmsg /P23RSd/{s} /P23RSd/{s}/Ex_ch4P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - P23RSd AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL "

foreach s ({arglist {locations}})

     ce /P23RSd/{s}

     make_Ex_ch4P5RSAMPA
     setfield /P23RSd/{s}/Ex_ch4P5RSAMPA gmax {CondmaxP5RSAMPA_P23RS}
     addmsg /P23RSd/{s}/Ex_ch4P5RSAMPA /P23RSd/{s} CHANNEL Gk Ek
     addmsg /P23RSd/{s} /P23RSd/{s}/Ex_ch4P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - P23RSd NMDA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL "

foreach s ({arglist {locations}})

     ce /P23RSd/{s}

     make_Ex_ch4P5RSNMDA
     setfield /P23RSd/{s}/Ex_ch4P5RSNMDA gmax {CondmaxP5RSNMDA_P23RS}
     addmsg /P23RSd/{s}/Ex_ch4P5RSNMDA /P23RSd/{s} CHANNEL Gk Ek
     addmsg /P23RSd/{s} /P23RSd/{s}/Ex_ch4P5RSNMDA VOLTAGE Vm

     ce /

end
