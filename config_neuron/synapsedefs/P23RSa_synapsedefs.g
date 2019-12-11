
//P23RS - P23RSa AMPA synapses

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc soma"

foreach s ({arglist {locations}})

     ce /P23RSa/{s}

     make_Ex_ch1P23RSAMPA
     setfield /P23RSa/{s}/Ex_ch1P23RSAMPA gmax {CondmaxP23RSAMPA_P23RS}
     addmsg /P23RSa/{s}/Ex_ch1P23RSAMPA /P23RSa/{s} CHANNEL Gk Ek
     addmsg /P23RSa/{s} /P23RSa/{s}/Ex_ch1P23RSAMPA VOLTAGE Vm

     ce /

end

//P23RS - P23RSa NMDA synapses

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc soma"

foreach s ({arglist {locations}})

     ce /P23RSa/{s}

     make_Ex_ch1P23RSNMDA
     setfield /P23RSa/{s}/Ex_ch1P23RSNMDA gmax {CondmaxP23RSNMDA_P23RS}
     addmsg /P23RSa/{s}/Ex_ch1P23RSNMDA /P23RSa/{s} CHANNEL Gk Ek
     addmsg /P23RSa/{s} /P23RSa/{s}/Ex_ch1P23RSNMDA VOLTAGE Vm

     ce /

end

//B23FS - P23RSa GABAa synapses

str s

//Load synapse location array

str locations = "soma basalLsupera basalLmidsupera basalLmiddeepa basalLdeepa basalRsupera basalRmidsupera basalRmiddeepa basalRdeepa apdend1 apdend2"

foreach s ({arglist {locations}})

     ce /P23RSa/{s}

     make_Inh_ch1B23FSGABAa
     setfield /P23RSa/{s}/Inh_ch1B23FSGABAa gmax {CondmaxB23FSGABAa_P23RS}
     addmsg /P23RSa/{s}/Inh_ch1B23FSGABAa /P23RSa/{s} CHANNEL Gk Ek
     addmsg /P23RSa/{s} /P23RSa/{s}/Inh_ch1B23FSGABAa VOLTAGE Vm

     ce /

end

//P5IB - P23RSa AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL "

foreach s ({arglist {locations}})

     ce /P23RSa/{s}

     make_Ex_ch1P5IBAMPA
     setfield /P23RSa/{s}/Ex_ch1P5IBAMPA gmax {CondmaxP5IBAMPA_P23RS}
     addmsg /P23RSa/{s}/Ex_ch1P5IBAMPA /P23RSa/{s} CHANNEL Gk Ek
     addmsg /P23RSa/{s} /P23RSa/{s}/Ex_ch1P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - P23RSa NMDA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL "

foreach s ({arglist {locations}})

     ce /P23RSa/{s}

     make_Ex_ch1P5IBNMDA
     setfield /P23RSa/{s}/Ex_ch1P5IBNMDA gmax {CondmaxP5IBNMDA_P23RS}
     addmsg /P23RSa/{s}/Ex_ch1P5IBNMDA /P23RSa/{s} CHANNEL Gk Ek
     addmsg /P23RSa/{s} /P23RSa/{s}/Ex_ch1P5IBNMDA VOLTAGE Vm

     ce /

end

//P6RS - P23RSa AMPA synapses

str s

//Load synapse location array

str locations = "apdend4aL apdend4bL apdend4aR apdend4bR "

foreach s ({arglist {locations}})

     ce /P23RSa/{s}

     make_Ex_ch1P6RSAMPA
     setfield /P23RSa/{s}/Ex_ch1P6RSAMPA gmax {CondmaxP6RSAMPA_P23RS}
     addmsg /P23RSa/{s}/Ex_ch1P6RSAMPA /P23RSa/{s} CHANNEL Gk Ek
     addmsg /P23RSa/{s} /P23RSa/{s}/Ex_ch1P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - P23RSa NMDA synapses

str s

//Load synapse location array

str locations = "apdend4aL apdend4bL apdend4aR apdend4bR "

foreach s ({arglist {locations}})

     ce /P23RSa/{s}

     make_Ex_ch1P6RSNMDA
     setfield /P23RSa/{s}/Ex_ch1P6RSNMDA gmax {CondmaxP6RSNMDA_P23RS}
     addmsg /P23RSa/{s}/Ex_ch1P6RSNMDA /P23RSa/{s} CHANNEL Gk Ek
     addmsg /P23RSa/{s} /P23RSa/{s}/Ex_ch1P6RSNMDA VOLTAGE Vm

     ce /

end

//C23FS - P23RSa GABAa synapses

ce /P23RSa/axona

make_Inh_ch1C23FSGABAa
setfield /P23RSa/axona/Inh_ch1C23FSGABAa gmax {CondmaxC23FSGABAa_P23RS}
addmsg /P23RSa/axona/Inh_ch1C23FSGABAa /P23RSa/axona CHANNEL Gk Ek
addmsg /P23RSa/axona /P23RSa/axona/Inh_ch1C23FSGABAa VOLTAGE Vm

ce /

//C5FS - P23RSa GABAa synapses

ce /P23RSa/axona

make_Inh_ch1C5FSGABAa
setfield /P23RSa/axona/Inh_ch1C5FSGABAa gmax {CondmaxC5FSGABAa_P23RS}
addmsg /P23RSa/axona/Inh_ch1C5FSGABAa /P23RSa/axona CHANNEL Gk Ek
addmsg /P23RSa/axona /P23RSa/axona/Inh_ch1C5FSGABAa VOLTAGE Vm

ce /

//ST4RS - P23RSa AMPA synapses

str s

//Load synapse location array

str locations = "basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc"

foreach s ({arglist {locations}})

     ce /P23RSa/{s}

     make_Ex_ch1ST4RSAMPA
     setfield /P23RSa/{s}/Ex_ch1ST4RSAMPA gmax {CondmaxST4RSAMPA_P23RS}
     addmsg /P23RSa/{s}/Ex_ch1ST4RSAMPA /P23RSa/{s} CHANNEL Gk Ek
     addmsg /P23RSa/{s} /P23RSa/{s}/Ex_ch1ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - P23RSa NMDA synapses

str s

//Load synapse location array

str locations = "basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc"

foreach s ({arglist {locations}})

     ce /P23RSa/{s}

     make_Ex_ch1ST4RSNMDA
     setfield /P23RSa/{s}/Ex_ch1ST4RSNMDA gmax {CondmaxST4RSNMDA_P23RS}
     addmsg /P23RSa/{s}/Ex_ch1ST4RSNMDA /P23RSa/{s} CHANNEL Gk Ek
     addmsg /P23RSa/{s} /P23RSa/{s}/Ex_ch1ST4RSNMDA VOLTAGE Vm

     ce /

end

//I23LTS - P23RSa GABAa synapses

str s

//Load synapse location array

str locations = "basalLsuperb basalLmidsuperb basalLmiddeepb basalLdeepb basalRsuperb basalRmidsuperb basalRmiddeepb basalRdeepb basalLsuperc basalLmidsuperc basalLmiddeepc basalLdeepc basalRsuperc basalRmidsuperc basalRmiddeepc basalRdeepc apdend3 apdend4aR apdend4bR apdend4aL apdend4bL apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR apobdistRb apobdistRc apobproxRb apobproxRc apobdistLb apobdistLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

     ce /P23RSa/{s}

     make_Inh_ch1I23LTSGABAa
     setfield /P23RSa/{s}/Inh_ch1I23LTSGABAa gmax {CondmaxI23LTSGABAa_P23RS}
     addmsg /P23RSa/{s}/Inh_ch1I23LTSGABAa /P23RSa/{s} CHANNEL Gk Ek
     addmsg /P23RSa/{s} /P23RSa/{s}/Inh_ch1I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - P23RSa GABAa synapses

str s

//Load synapse location array

str locations = "basalLsuperb basalLmidsuperb basalLmiddeepb basalLdeepb basalRsuperb basalRmidsuperb basalRmiddeepb basalRdeepb basalLsuperc basalLmidsuperc basalLmiddeepc basalLdeepc basalRsuperc basalRmidsuperc basalRmiddeepc basalRdeepc apdend3 apdend4aR apdend4bR apdend4aL apdend4bL apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR apobdistRb apobdistRc apobproxRb apobproxRc apobdistLb apobdistLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

     ce /P23RSa/{s}

     make_Inh_ch1I5LTSGABAa
     setfield /P23RSa/{s}/Inh_ch1I5LTSGABAa gmax {CondmaxI5LTSGABAa_P23RS}
     addmsg /P23RSa/{s}/Inh_ch1I5LTSGABAa /P23RSa/{s} CHANNEL Gk Ek
     addmsg /P23RSa/{s} /P23RSa/{s}/Inh_ch1I5LTSGABAa VOLTAGE Vm

     ce /

end

//TCR - P23RSa AMPA synapses

str s

//Load synapse location array

str locations = "apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR"

foreach s ({arglist {locations}})

     ce /P23RSa/{s}

     make_Ex_ch1TCRAMPA
     setfield /P23RSa/{s}/Ex_ch1TCRAMPA gmax {CondmaxTCRAMPA_P23RS}
     addmsg /P23RSa/{s}/Ex_ch1TCRAMPA /P23RSa/{s} CHANNEL Gk Ek
     addmsg /P23RSa/{s} /P23RSa/{s}/Ex_ch1TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - P23RSa NMDA synapses

str s

//Load synapse location array

str locations = "apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR"

foreach s ({arglist {locations}})

     ce /P23RSa/{s}

     make_Ex_ch1TCRNMDA
     setfield /P23RSa/{s}/Ex_ch1TCRNMDA gmax {CondmaxTCRNMDA_P23RS}
     addmsg /P23RSa/{s}/Ex_ch1TCRNMDA /P23RSa/{s} CHANNEL Gk Ek
     addmsg /P23RSa/{s} /P23RSa/{s}/Ex_ch1TCRNMDA VOLTAGE Vm

     ce /

end

//P23FRB - P23RSa AMPA synapses

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc soma"

foreach s ({arglist {locations}})

     ce /P23RSa/{s}

     make_Ex_ch1P23FRBAMPA
     setfield /P23RSa/{s}/Ex_ch1P23FRBAMPA gmax {CondmaxP23FRBAMPA_P23RS}
     addmsg /P23RSa/{s}/Ex_ch1P23FRBAMPA /P23RSa/{s} CHANNEL Gk Ek
     addmsg /P23RSa/{s} /P23RSa/{s}/Ex_ch1P23FRBAMPA VOLTAGE Vm

     ce /

end

//P23FRB - P23RSa NMDA synapses

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc soma"

foreach s ({arglist {locations}})

     ce /P23RSa/{s}

     make_Ex_ch1P23FRBNMDA
     setfield /P23RSa/{s}/Ex_ch1P23FRBNMDA gmax {CondmaxP23FRBNMDA_P23RS}
     addmsg /P23RSa/{s}/Ex_ch1P23FRBNMDA /P23RSa/{s} CHANNEL Gk Ek
     addmsg /P23RSa/{s} /P23RSa/{s}/Ex_ch1P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - P23RSa AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL "

foreach s ({arglist {locations}})

     ce /P23RSa/{s}

     make_Ex_ch1P5RSAMPA
     setfield /P23RSa/{s}/Ex_ch1P5RSAMPA gmax {CondmaxP5RSAMPA_P23RS}
     addmsg /P23RSa/{s}/Ex_ch1P5RSAMPA /P23RSa/{s} CHANNEL Gk Ek
     addmsg /P23RSa/{s} /P23RSa/{s}/Ex_ch1P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - P23RSa NMDA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL "

foreach s ({arglist {locations}})

     ce /P23RSa/{s}

     make_Ex_ch1P5RSNMDA
     setfield /P23RSa/{s}/Ex_ch1P5RSNMDA gmax {CondmaxP5RSNMDA_P23RS}
     addmsg /P23RSa/{s}/Ex_ch1P5RSNMDA /P23RSa/{s} CHANNEL Gk Ek
     addmsg /P23RSa/{s} /P23RSa/{s}/Ex_ch1P5RSNMDA VOLTAGE Vm

     ce /

end
