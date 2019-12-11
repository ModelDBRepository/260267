
//P23RS - P23FRBa AMPA synapses

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc soma"

foreach s ({arglist {locations}})

     ce /P23FRBa/{s}

     make_Ex_ch22P23RSAMPA
     setfield /P23FRBa/{s}/Ex_ch22P23RSAMPA gmax {CondmaxP23RSAMPA_P23FRB}
     addmsg /P23FRBa/{s}/Ex_ch22P23RSAMPA /P23FRBa/{s} CHANNEL Gk Ek
     addmsg /P23FRBa/{s} /P23FRBa/{s}/Ex_ch22P23RSAMPA VOLTAGE Vm

     ce /

end

//P23RS - P23FRBa NMDA synapses

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc soma"

foreach s ({arglist {locations}})

     ce /P23FRBa/{s}

     make_Ex_ch22P23RSNMDA
     setfield /P23FRBa/{s}/Ex_ch22P23RSNMDA gmax {CondmaxP23RSNMDA_P23FRB}
     addmsg /P23FRBa/{s}/Ex_ch22P23RSNMDA /P23FRBa/{s} CHANNEL Gk Ek
     addmsg /P23FRBa/{s} /P23FRBa/{s}/Ex_ch22P23RSNMDA VOLTAGE Vm

     ce /

end

//B23FS - P23FRBa GABAa synapses

str s

//Load synapse location array

str locations = "soma basalLsupera basalLmidsupera basalLmiddeepa basalLdeepa basalRsupera basalRmidsupera basalRmiddeepa basalRdeepa apdend1 apdend2"

foreach s ({arglist {locations}})

     ce /P23FRBa/{s}

     make_Inh_ch22B23FSGABAa
     setfield /P23FRBa/{s}/Inh_ch22B23FSGABAa gmax {CondmaxB23FSGABAa_P23FRB}
     addmsg /P23FRBa/{s}/Inh_ch22B23FSGABAa /P23FRBa/{s} CHANNEL Gk Ek
     addmsg /P23FRBa/{s} /P23FRBa/{s}/Inh_ch22B23FSGABAa VOLTAGE Vm

     ce /

end

//P5IB - P23FRBa AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL "

foreach s ({arglist {locations}})

     ce /P23FRBa/{s}

     make_Ex_ch22P5IBAMPA
     setfield /P23FRBa/{s}/Ex_ch22P5IBAMPA gmax {CondmaxP5IBAMPA_P23FRB}
     addmsg /P23FRBa/{s}/Ex_ch22P5IBAMPA /P23FRBa/{s} CHANNEL Gk Ek
     addmsg /P23FRBa/{s} /P23FRBa/{s}/Ex_ch22P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - P23FRBa NMDA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL "

foreach s ({arglist {locations}})

     ce /P23FRBa/{s}

     make_Ex_ch22P5IBNMDA
     setfield /P23FRBa/{s}/Ex_ch22P5IBNMDA gmax {CondmaxP5IBNMDA_P23FRB}
     addmsg /P23FRBa/{s}/Ex_ch22P5IBNMDA /P23FRBa/{s} CHANNEL Gk Ek
     addmsg /P23FRBa/{s} /P23FRBa/{s}/Ex_ch22P5IBNMDA VOLTAGE Vm

     ce /

end

//P6RS - P23FRBa AMPA synapses

str s

//Load synapse location array

str locations = "apdend4aL apdend4bL apdend4aR apdend4bR "

foreach s ({arglist {locations}})

     ce /P23FRBa/{s}

     make_Ex_ch22P6RSAMPA
     setfield /P23FRBa/{s}/Ex_ch22P6RSAMPA gmax {CondmaxP6RSAMPA_P23FRB}
     addmsg /P23FRBa/{s}/Ex_ch22P6RSAMPA /P23FRBa/{s} CHANNEL Gk Ek
     addmsg /P23FRBa/{s} /P23FRBa/{s}/Ex_ch22P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - P23FRBa NMDA synapses

str s

//Load synapse location array

str locations = "apdend4aL apdend4bL apdend4aR apdend4bR "

foreach s ({arglist {locations}})

     ce /P23FRBa/{s}

     make_Ex_ch22P6RSNMDA
     setfield /P23FRBa/{s}/Ex_ch22P6RSNMDA gmax {CondmaxP6RSNMDA_P23FRB}
     addmsg /P23FRBa/{s}/Ex_ch22P6RSNMDA /P23FRBa/{s} CHANNEL Gk Ek
     addmsg /P23FRBa/{s} /P23FRBa/{s}/Ex_ch22P6RSNMDA VOLTAGE Vm

     ce /

end

//C23FS - P23FRBa GABAa synapses

ce /P23FRBa/axona

make_Inh_ch22C23FSGABAa
setfield /P23FRBa/axona/Inh_ch22C23FSGABAa gmax {CondmaxC23FSGABAa_P23FRB}
addmsg /P23FRBa/axona/Inh_ch22C23FSGABAa /P23FRBa/axona CHANNEL Gk Ek
addmsg /P23FRBa/axona /P23FRBa/axona/Inh_ch22C23FSGABAa VOLTAGE Vm

ce /

//C5FS - P23FRBa GABAa synapses

ce /P23FRBa/axona

make_Inh_ch22C5FSGABAa
setfield /P23FRBa/axona/Inh_ch22C5FSGABAa gmax {CondmaxC5FSGABAa_P23FRB}
addmsg /P23FRBa/axona/Inh_ch22C5FSGABAa /P23FRBa/axona CHANNEL Gk Ek
addmsg /P23FRBa/axona /P23FRBa/axona/Inh_ch22C5FSGABAa VOLTAGE Vm

ce /

//ST4RS - P23FRBa AMPA synapses

str s

//Load synapse location array

str locations = "basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc"

foreach s ({arglist {locations}})

     ce /P23FRBa/{s}

     make_Ex_ch22ST4RSAMPA
     setfield /P23FRBa/{s}/Ex_ch22ST4RSAMPA gmax {CondmaxST4RSAMPA_P23FRB}
     addmsg /P23FRBa/{s}/Ex_ch22ST4RSAMPA /P23FRBa/{s} CHANNEL Gk Ek
     addmsg /P23FRBa/{s} /P23FRBa/{s}/Ex_ch22ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - P23FRBa NMDA synapses

str s

//Load synapse location array

str locations = "basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc"

foreach s ({arglist {locations}})

     ce /P23FRBa/{s}

     make_Ex_ch22ST4RSNMDA
     setfield /P23FRBa/{s}/Ex_ch22ST4RSNMDA gmax {CondmaxST4RSNMDA_P23FRB}
     addmsg /P23FRBa/{s}/Ex_ch22ST4RSNMDA /P23FRBa/{s} CHANNEL Gk Ek
     addmsg /P23FRBa/{s} /P23FRBa/{s}/Ex_ch22ST4RSNMDA VOLTAGE Vm

     ce /

end

//I23LTS - P23FRBa GABAa synapses

str s

//Load synapse location array

str locations = "basalLsuperb basalLmidsuperb basalLmiddeepb basalLdeepb basalRsuperb basalRmidsuperb basalRmiddeepb basalRdeepb basalLsuperc basalLmidsuperc basalLmiddeepc basalLdeepc basalRsuperc basalRmidsuperc basalRmiddeepc basalRdeepc apdend3 apdend4aR apdend4bR apdend4aL apdend4bL apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR apobdistRb apobdistRc apobproxRb apobproxRc apobdistLb apobdistLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

     ce /P23FRBa/{s}

     make_Inh_ch22I23LTSGABAa
     setfield /P23FRBa/{s}/Inh_ch22I23LTSGABAa gmax {CondmaxI23LTSGABAa_P23FRB}
     addmsg /P23FRBa/{s}/Inh_ch22I23LTSGABAa /P23FRBa/{s} CHANNEL Gk Ek
     addmsg /P23FRBa/{s} /P23FRBa/{s}/Inh_ch22I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - P23FRBa GABAa synapses

str s

//Load synapse location array

str locations = "basalLsuperb basalLmidsuperb basalLmiddeepb basalLdeepb basalRsuperb basalRmidsuperb basalRmiddeepb basalRdeepb basalLsuperc basalLmidsuperc basalLmiddeepc basalLdeepc basalRsuperc basalRmidsuperc basalRmiddeepc basalRdeepc apdend3 apdend4aR apdend4bR apdend4aL apdend4bL apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR apobdistRb apobdistRc apobproxRb apobproxRc apobdistLb apobdistLc apobproxLb apobproxLc"

foreach s ({arglist {locations}})

     ce /P23FRBa/{s}

     make_Inh_ch22I5LTSGABAa
     setfield /P23FRBa/{s}/Inh_ch22I5LTSGABAa gmax {CondmaxI5LTSGABAa_P23FRB}
     addmsg /P23FRBa/{s}/Inh_ch22I5LTSGABAa /P23FRBa/{s} CHANNEL Gk Ek
     addmsg /P23FRBa/{s} /P23FRBa/{s}/Inh_ch22I5LTSGABAa VOLTAGE Vm

     ce /

end

//TCR - P23FRBa AMPA synapses

str s

//Load synapse location array

str locations = "apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR"

foreach s ({arglist {locations}})

     ce /P23FRBa/{s}

     make_Ex_ch22TCRAMPA
     setfield /P23FRBa/{s}/Ex_ch22TCRAMPA gmax {CondmaxTCRAMPA_P23FRB}
     addmsg /P23FRBa/{s}/Ex_ch22TCRAMPA /P23FRBa/{s} CHANNEL Gk Ek
     addmsg /P23FRBa/{s} /P23FRBa/{s}/Ex_ch22TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - P23FRBa NMDA synapses

str s

//Load synapse location array

str locations = "apdend5aLLL apdend5bLLL apdend5cLLL apdend5aLL apdend5bLL apdend5cLL apdend5aLR apdend5bLR apdend5cLR apdend5aLRR apdend5bLRR apdend5cLRR apdend5aRLL apdend5bRLL apdend5cRLL apdend5aRL apdend5bRL apdend5cRL apdend5aRR apdend5bRR apdend5cRR apdend5aRRR apdend5bRRR apdend5cRRR"

foreach s ({arglist {locations}})

     ce /P23FRBa/{s}

     make_Ex_ch22TCRNMDA
     setfield /P23FRBa/{s}/Ex_ch22TCRNMDA gmax {CondmaxTCRNMDA_P23FRB}
     addmsg /P23FRBa/{s}/Ex_ch22TCRNMDA /P23FRBa/{s} CHANNEL Gk Ek
     addmsg /P23FRBa/{s} /P23FRBa/{s}/Ex_ch22TCRNMDA VOLTAGE Vm

     ce /

end

//P23FRB - P23FRBa AMPA synapses

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc soma"

foreach s ({arglist {locations}})

     ce /P23FRBa/{s}

     make_Ex_ch22P23FRBAMPA
     setfield /P23FRBa/{s}/Ex_ch22P23FRBAMPA gmax {CondmaxP23FRBAMPA_P23FRB}
     addmsg /P23FRBa/{s}/Ex_ch22P23FRBAMPA /P23FRBa/{s} CHANNEL Gk Ek
     addmsg /P23FRBa/{s} /P23FRBa/{s}/Ex_ch22P23FRBAMPA VOLTAGE Vm

     ce /

end

//P23FRB - P23FRBa NMDA synapses

str s

//Load synapse location array

str locations = "apobproxLa apobproxLb apobproxLc apobdistLa apobdistLb apobdistLc apobproxRa apobproxRb apobproxRc apobdistRa apobdistRb apobdistRc basalLsupera basalLsuperb basalLsuperc basalLmidsupera basalLmidsuperb basalLmidsuperc basalLmiddeepa basalLmiddeepb basalLmiddeepc basalLdeepa basalLdeepb basalLdeepc basalRsupera basalRsuperb basalRsuperc basalRmidsupera basalRmidsuperb basalRmidsuperc basalRmiddeepa basalRmiddeepb basalRmiddeepc basalRdeepa basalRdeepb basalRdeepc soma"

foreach s ({arglist {locations}})

     ce /P23FRBa/{s}

     make_Ex_ch22P23FRBNMDA
     setfield /P23FRBa/{s}/Ex_ch22P23FRBNMDA gmax {CondmaxP23FRBNMDA_P23FRB}
     addmsg /P23FRBa/{s}/Ex_ch22P23FRBNMDA /P23FRBa/{s} CHANNEL Gk Ek
     addmsg /P23FRBa/{s} /P23FRBa/{s}/Ex_ch22P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - P23FRBa AMPA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL "

foreach s ({arglist {locations}})

     ce /P23FRBa/{s}

     make_Ex_ch22P5RSAMPA
     setfield /P23FRBa/{s}/Ex_ch22P5RSAMPA gmax {CondmaxP5RSAMPA_P23FRB}
     addmsg /P23FRBa/{s}/Ex_ch22P5RSAMPA /P23FRBa/{s} CHANNEL Gk Ek
     addmsg /P23FRBa/{s} /P23FRBa/{s}/Ex_ch22P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - P23FRBa NMDA synapses

str s

//Load synapse location array

str locations = "apdend3 apdend4aL apdend4bL apdend4aR apdend4bR apdend5aLLL apdend5aLL apdend5aLR apdend5aLRR apdend5aRRR apdend5aRR apdend5aRL apdend5aRLL "

foreach s ({arglist {locations}})

     ce /P23FRBa/{s}

     make_Ex_ch22P5RSNMDA
     setfield /P23FRBa/{s}/Ex_ch22P5RSNMDA gmax {CondmaxP5RSNMDA_P23FRB}
     addmsg /P23FRBa/{s}/Ex_ch22P5RSNMDA /P23FRBa/{s} CHANNEL Gk Ek
     addmsg /P23FRBa/{s} /P23FRBa/{s}/Ex_ch22P5RSNMDA VOLTAGE Vm

     ce /

end
