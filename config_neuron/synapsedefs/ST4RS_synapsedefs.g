
//P23RS - ST4RS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /ST4RS/{s}

     make_Ex_ch17P23RSAMPA
     setfield /ST4RS/{s}/Ex_ch17P23RSAMPA gmax {CondmaxP23RSAMPA_ST4RS}
     addmsg /ST4RS/{s}/Ex_ch17P23RSAMPA /ST4RS/{s} CHANNEL Gk Ek
     addmsg /ST4RS/{s} /ST4RS/{s}/Ex_ch17P23RSAMPA VOLTAGE Vm

     ce /

end

//P23RS - ST4RS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /ST4RS/{s}

     make_Ex_ch17P23RSNMDA
     setfield /ST4RS/{s}/Ex_ch17P23RSNMDA gmax {CondmaxP23RSNMDA_ST4RS}
     addmsg /ST4RS/{s}/Ex_ch17P23RSNMDA /ST4RS/{s} CHANNEL Gk Ek
     addmsg /ST4RS/{s} /ST4RS/{s}/Ex_ch17P23RSNMDA VOLTAGE Vm

     ce /

end

//B23FS - ST4RS GABAa synapses

str s

//Load synapse location array

str locations = "soma proxdendN proxdendE proxdendS proxdendW"

foreach s ({arglist {locations}})

     ce /ST4RS/{s}

     make_Inh_ch17B23FSGABAa
     setfield /ST4RS/{s}/Inh_ch17B23FSGABAa gmax {CondmaxB23FSGABAa_ST4RS}
     addmsg /ST4RS/{s}/Inh_ch17B23FSGABAa /ST4RS/{s} CHANNEL Gk Ek
     addmsg /ST4RS/{s} /ST4RS/{s}/Inh_ch17B23FSGABAa VOLTAGE Vm

     ce /

end

//P5IB - ST4RS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /ST4RS/{s}

     make_Ex_ch17P5IBAMPA
     setfield /ST4RS/{s}/Ex_ch17P5IBAMPA gmax {CondmaxP5IBAMPA_ST4RS}
     addmsg /ST4RS/{s}/Ex_ch17P5IBAMPA /ST4RS/{s} CHANNEL Gk Ek
     addmsg /ST4RS/{s} /ST4RS/{s}/Ex_ch17P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - ST4RS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /ST4RS/{s}

     make_Ex_ch17P5IBNMDA
     setfield /ST4RS/{s}/Ex_ch17P5IBNMDA gmax {CondmaxP5IBNMDA_ST4RS}
     addmsg /ST4RS/{s}/Ex_ch17P5IBNMDA /ST4RS/{s} CHANNEL Gk Ek
     addmsg /ST4RS/{s} /ST4RS/{s}/Ex_ch17P5IBNMDA VOLTAGE Vm

     ce /

end

//B5FS - ST4RS GABAa synapses

str s

//Load synapse location array

str locations = "soma proxdendN proxdendE proxdendS proxdendW"

foreach s ({arglist {locations}})

     ce /ST4RS/{s}

     make_Inh_ch17B5FSGABAa
     setfield /ST4RS/{s}/Inh_ch17B5FSGABAa gmax {CondmaxB5FSGABAa_ST4RS}
     addmsg /ST4RS/{s}/Inh_ch17B5FSGABAa /ST4RS/{s} CHANNEL Gk Ek
     addmsg /ST4RS/{s} /ST4RS/{s}/Inh_ch17B5FSGABAa VOLTAGE Vm

     ce /

end

//P6RS - ST4RS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /ST4RS/{s}

     make_Ex_ch17P6RSAMPA
     setfield /ST4RS/{s}/Ex_ch17P6RSAMPA gmax {CondmaxP6RSAMPA_ST4RS}
     addmsg /ST4RS/{s}/Ex_ch17P6RSAMPA /ST4RS/{s} CHANNEL Gk Ek
     addmsg /ST4RS/{s} /ST4RS/{s}/Ex_ch17P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - ST4RS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /ST4RS/{s}

     make_Ex_ch17P6RSNMDA
     setfield /ST4RS/{s}/Ex_ch17P6RSNMDA gmax {CondmaxP6RSNMDA_ST4RS}
     addmsg /ST4RS/{s}/Ex_ch17P6RSNMDA /ST4RS/{s} CHANNEL Gk Ek
     addmsg /ST4RS/{s} /ST4RS/{s}/Ex_ch17P6RSNMDA VOLTAGE Vm

     ce /

end

//C23FS - ST4RS GABAa synapses

ce /ST4RS/axona

make_Inh_ch17C23FSGABAa

setfield /ST4RS/axona/Inh_ch17C23FSGABAa gmax {CondmaxC23FSGABAa_ST4RS}
addmsg /ST4RS/axona/Inh_ch17C23FSGABAa /ST4RS/axona CHANNEL Gk Ek
addmsg /ST4RS/axona /ST4RS/axona/Inh_ch17C23FSGABAa VOLTAGE Vm

ce /

//C5FS - ST4RS GABAa synapses

ce /ST4RS/axona

make_Inh_ch17C5FSGABAa

setfield /ST4RS/axona/Inh_ch17C5FSGABAa gmax {CondmaxC5FSGABAa_ST4RS}
addmsg /ST4RS/axona/Inh_ch17C5FSGABAa /ST4RS/axona CHANNEL Gk Ek
addmsg /ST4RS/axona /ST4RS/axona/Inh_ch17C5FSGABAa VOLTAGE Vm

ce /

//ST4RS - ST4RS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /ST4RS/{s}

     make_Ex_ch17ST4RSAMPA
     setfield /ST4RS/{s}/Ex_ch17ST4RSAMPA gmax {CondmaxST4RSAMPA_ST4RS}
     addmsg /ST4RS/{s}/Ex_ch17ST4RSAMPA /ST4RS/{s} CHANNEL Gk Ek
     addmsg /ST4RS/{s} /ST4RS/{s}/Ex_ch17ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - ST4RS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /ST4RS/{s}

     make_Ex_ch17ST4RSNMDA
     setfield /ST4RS/{s}/Ex_ch17ST4RSNMDA gmax {CondmaxST4RSNMDA_ST4RS}
     addmsg /ST4RS/{s}/Ex_ch17ST4RSNMDA /ST4RS/{s} CHANNEL Gk Ek
     addmsg /ST4RS/{s} /ST4RS/{s}/Ex_ch17ST4RSNMDA VOLTAGE Vm

     ce /

end

//I23LTS - ST4RS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNlongd distdendNlonge distdendNlongf distdendNlongg distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendElongd distdendElonge distdendElongf distdendElongg distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSlongd distdendSlonge distdendSlongf distdendSlongg distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWlongd distdendWlonge distdendWlongf distdendWlongg distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /ST4RS/{s}

     make_Inh_ch17I23LTSGABAa
     setfield /ST4RS/{s}/Inh_ch17I23LTSGABAa gmax {CondmaxI23LTSGABAa_ST4RS}
     addmsg /ST4RS/{s}/Inh_ch17I23LTSGABAa /ST4RS/{s} CHANNEL Gk Ek
     addmsg /ST4RS/{s} /ST4RS/{s}/Inh_ch17I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - ST4RS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNlongd distdendNlonge distdendNlongf distdendNlongg distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendElongd distdendElonge distdendElongf distdendElongg distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSlongd distdendSlonge distdendSlongf distdendSlongg distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWlongd distdendWlonge distdendWlongf distdendWlongg distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /ST4RS/{s}

     make_Inh_ch17I5LTSGABAa
     setfield /ST4RS/{s}/Inh_ch17I5LTSGABAa gmax {CondmaxI5LTSGABAa_ST4RS}
     addmsg /ST4RS/{s}/Inh_ch17I5LTSGABAa /ST4RS/{s} CHANNEL Gk Ek
     addmsg /ST4RS/{s} /ST4RS/{s}/Inh_ch17I5LTSGABAa VOLTAGE Vm

     ce /

end

//TCR - ST4RS AMPA synapses

str s

//Load synapse location array

str locations = "proxdendN distdendNlonga distdendNlongb distdendNlongc distdendNlongd distdendNlonge distdendNlongf distdendNlongg distdendNmida distdendNmidb distdendNmidc distdendNshorta distdendNshortb proxdendE distdendElonga distdendElongb distdendElongc distdendElongd distdendElonge distdendElongf distdendElongg distdendEmida distdendEmidb distdendEmidc distdendEshorta distdendEshortb proxdendS distdendSlonga distdendSlongb distdendSlongc distdendSlongd distdendSlonge distdendSlongf distdendSlongg distdendSmida distdendSmidb distdendSmidc distdendSshorta distdendSshortb proxdendW distdendWlonga distdendWlongb distdendWlongc distdendWlongd distdendWlonge distdendWlongf distdendWlongg distdendWmida distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /ST4RS/{s}

     make_Ex_ch17TCRAMPA
     setfield /ST4RS/{s}/Ex_ch17TCRAMPA gmax {CondmaxTCRAMPA_ST4RS}
     addmsg /ST4RS/{s}/Ex_ch17TCRAMPA /ST4RS/{s} CHANNEL Gk Ek
     addmsg /ST4RS/{s} /ST4RS/{s}/Ex_ch17TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - ST4RS NMDA synapses

str s

//Load synapse location array

str locations = "proxdendN distdendNlonga distdendNlongb distdendNlongc distdendNlongd distdendNlonge distdendNlongf distdendNlongg distdendNmida distdendNmidb distdendNmidc distdendNshorta distdendNshortb proxdendE distdendElonga distdendElongb distdendElongc distdendElongd distdendElonge distdendElongf distdendElongg distdendEmida distdendEmidb distdendEmidc distdendEshorta distdendEshortb proxdendS distdendSlonga distdendSlongb distdendSlongc distdendSlongd distdendSlonge distdendSlongf distdendSlongg distdendSmida distdendSmidb distdendSmidc distdendSshorta distdendSshortb proxdendW distdendWlonga distdendWlongb distdendWlongc distdendWlongd distdendWlonge distdendWlongf distdendWlongg distdendWmida distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /ST4RS/{s}

     make_Ex_ch17TCRNMDA
     setfield /ST4RS/{s}/Ex_ch17TCRNMDA gmax {CondmaxTCRNMDA_ST4RS}
     addmsg /ST4RS/{s}/Ex_ch17TCRNMDA /ST4RS/{s} CHANNEL Gk Ek
     addmsg /ST4RS/{s} /ST4RS/{s}/Ex_ch17TCRNMDA VOLTAGE Vm

     ce /

end

//P23FRB - ST4RS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /ST4RS/{s}

     make_Ex_ch17P23FRBAMPA
     setfield /ST4RS/{s}/Ex_ch17P23FRBAMPA gmax {CondmaxP23FRBAMPA_ST4RS}
     addmsg /ST4RS/{s}/Ex_ch17P23FRBAMPA /ST4RS/{s} CHANNEL Gk Ek
     addmsg /ST4RS/{s} /ST4RS/{s}/Ex_ch17P23FRBAMPA VOLTAGE Vm

     ce /

end

//P23FRB - ST4RS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /ST4RS/{s}

     make_Ex_ch17P23FRBNMDA
     setfield /ST4RS/{s}/Ex_ch17P23FRBNMDA gmax {CondmaxP23FRBNMDA_ST4RS}
     addmsg /ST4RS/{s}/Ex_ch17P23FRBNMDA /ST4RS/{s} CHANNEL Gk Ek
     addmsg /ST4RS/{s} /ST4RS/{s}/Ex_ch17P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - ST4RS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /ST4RS/{s}

     make_Ex_ch17P5RSAMPA
     setfield /ST4RS/{s}/Ex_ch17P5RSAMPA gmax {CondmaxP5RSAMPA_ST4RS}
     addmsg /ST4RS/{s}/Ex_ch17P5RSAMPA /ST4RS/{s} CHANNEL Gk Ek
     addmsg /ST4RS/{s} /ST4RS/{s}/Ex_ch17P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - ST4RS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /ST4RS/{s}

     make_Ex_ch17P5RSNMDA
     setfield /ST4RS/{s}/Ex_ch17P5RSNMDA gmax {CondmaxP5RSNMDA_ST4RS}
     addmsg /ST4RS/{s}/Ex_ch17P5RSNMDA /ST4RS/{s} CHANNEL Gk Ek
     addmsg /ST4RS/{s} /ST4RS/{s}/Ex_ch17P5RSNMDA VOLTAGE Vm

     ce /

end
