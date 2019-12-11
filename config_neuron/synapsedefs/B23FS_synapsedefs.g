
//P23RS - B23FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B23FS/{s}

     make_Ex_ch5P23RSAMPA
     setfield /B23FS/{s}/Ex_ch5P23RSAMPA gmax {CondmaxP23RSAMPA_B23FS}
     addmsg /B23FS/{s}/Ex_ch5P23RSAMPA /B23FS/{s} CHANNEL Gk Ek
     addmsg /B23FS/{s} /B23FS/{s}/Ex_ch5P23RSAMPA VOLTAGE Vm

     ce /

end

//P23RS - B23FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B23FS/{s}

     make_Ex_ch5P23RSNMDA
     setfield /B23FS/{s}/Ex_ch5P23RSNMDA gmax {CondmaxP23RSNMDA_B23FS}
     addmsg /B23FS/{s}/Ex_ch5P23RSNMDA /B23FS/{s} CHANNEL Gk Ek
     addmsg /B23FS/{s} /B23FS/{s}/Ex_ch5P23RSNMDA VOLTAGE Vm

     ce /

end

//B23FS - B23FS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B23FS/{s}

     make_Inh_ch5B23FSGABAa
     setfield /B23FS/{s}/Inh_ch5B23FSGABAa gmax {CondmaxB23FSGABAa_B23FS}
     addmsg /B23FS/{s}/Inh_ch5B23FSGABAa /B23FS/{s} CHANNEL Gk Ek
     addmsg /B23FS/{s} /B23FS/{s}/Inh_ch5B23FSGABAa VOLTAGE Vm

     ce /

end

//P5IB - B23FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B23FS/{s}

     make_Ex_ch5P5IBAMPA
     setfield /B23FS/{s}/Ex_ch5P5IBAMPA gmax {CondmaxP5IBAMPA_B23FS}
     addmsg /B23FS/{s}/Ex_ch5P5IBAMPA /B23FS/{s} CHANNEL Gk Ek
     addmsg /B23FS/{s} /B23FS/{s}/Ex_ch5P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - B23FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B23FS/{s}

     make_Ex_ch5P5IBNMDA
     setfield /B23FS/{s}/Ex_ch5P5IBNMDA gmax {CondmaxP5IBNMDA_B23FS}
     addmsg /B23FS/{s}/Ex_ch5P5IBNMDA /B23FS/{s} CHANNEL Gk Ek
     addmsg /B23FS/{s} /B23FS/{s}/Ex_ch5P5IBNMDA VOLTAGE Vm

     ce /

end

//P6RS - B23FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B23FS/{s}

     make_Ex_ch5P6RSAMPA
     setfield /B23FS/{s}/Ex_ch5P6RSAMPA gmax {CondmaxP6RSAMPA_B23FS}
     addmsg /B23FS/{s}/Ex_ch5P6RSAMPA /B23FS/{s} CHANNEL Gk Ek
     addmsg /B23FS/{s} /B23FS/{s}/Ex_ch5P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - B23FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B23FS/{s}

     make_Ex_ch5P6RSNMDA
     setfield /B23FS/{s}/Ex_ch5P6RSNMDA gmax {CondmaxP6RSNMDA_B23FS}
     addmsg /B23FS/{s}/Ex_ch5P6RSNMDA /B23FS/{s} CHANNEL Gk Ek
     addmsg /B23FS/{s} /B23FS/{s}/Ex_ch5P6RSNMDA VOLTAGE Vm

     ce /

end

//ST4RS - B23FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B23FS/{s}

     make_Ex_ch5ST4RSAMPA
     setfield /B23FS/{s}/Ex_ch5ST4RSAMPA gmax {CondmaxST4RSAMPA_B23FS}
     addmsg /B23FS/{s}/Ex_ch5ST4RSAMPA /B23FS/{s} CHANNEL Gk Ek
     addmsg /B23FS/{s} /B23FS/{s}/Ex_ch5ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - B23FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B23FS/{s}

     make_Ex_ch5ST4RSNMDA
     setfield /B23FS/{s}/Ex_ch5ST4RSNMDA gmax {CondmaxST4RSNMDA_B23FS}
     addmsg /B23FS/{s}/Ex_ch5ST4RSNMDA /B23FS/{s} CHANNEL Gk Ek
     addmsg /B23FS/{s} /B23FS/{s}/Ex_ch5ST4RSNMDA VOLTAGE Vm

     ce /

end

//I23LTS - B23FS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNlongd distdendNlonge distdendNlongf distdendNlongg distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendElongd distdendElonge distdendElongf distdendElongg distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSlongd distdendSlonge distdendSlongf distdendSlongg distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWlongd distdendWlonge distdendWlongf distdendWlongg distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B23FS/{s}

     make_Inh_ch5I23LTSGABAa
     setfield /B23FS/{s}/Inh_ch5I23LTSGABAa gmax {CondmaxI23LTSGABAa_B23FS}
     addmsg /B23FS/{s}/Inh_ch5I23LTSGABAa /B23FS/{s} CHANNEL Gk Ek
     addmsg /B23FS/{s} /B23FS/{s}/Inh_ch5I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - B23FS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNlongd distdendNlonge distdendNlongf distdendNlongg distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendElongd distdendElonge distdendElongf distdendElongg distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSlongd distdendSlonge distdendSlongf distdendSlongg distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWlongd distdendWlonge distdendWlongf distdendWlongg distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B23FS/{s}

     make_Inh_ch5I5LTSGABAa
     setfield /B23FS/{s}/Inh_ch5I5LTSGABAa gmax {CondmaxI5LTSGABAa_B23FS}
     addmsg /B23FS/{s}/Inh_ch5I5LTSGABAa /B23FS/{s} CHANNEL Gk Ek
     addmsg /B23FS/{s} /B23FS/{s}/Inh_ch5I5LTSGABAa VOLTAGE Vm

     ce /

end

//TCR - B23FS AMPA synapses

str s

//Load synapse location array

str locations = "proxdendN distdendNmida distdendNlonga proxdendE distdendElonga distdendEmida proxdendS distdendSlonga distdendSmida proxdendW distdendWlonga distdendWmida"

foreach s ({arglist {locations}})

     ce /B23FS/{s}

     make_Ex_ch5TCRAMPA
     setfield /B23FS/{s}/Ex_ch5TCRAMPA gmax {CondmaxTCRAMPA_B23FS}
     addmsg /B23FS/{s}/Ex_ch5TCRAMPA /B23FS/{s} CHANNEL Gk Ek
     addmsg /B23FS/{s} /B23FS/{s}/Ex_ch5TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - B23FS NMDA synapses

str s

//Load synapse location array

str locations = "proxdendN distdendNmida distdendNlonga proxdendE distdendElonga distdendEmida proxdendS distdendSlonga distdendSmida proxdendW distdendWlonga distdendWmida"

foreach s ({arglist {locations}})

     ce /B23FS/{s}

     make_Ex_ch5TCRNMDA
     setfield /B23FS/{s}/Ex_ch5TCRNMDA gmax {CondmaxTCRNMDA_B23FS}
     addmsg /B23FS/{s}/Ex_ch5TCRNMDA /B23FS/{s} CHANNEL Gk Ek
     addmsg /B23FS/{s} /B23FS/{s}/Ex_ch5TCRNMDA VOLTAGE Vm

     ce /

end

//P23FRB - B23FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B23FS/{s}

     make_Ex_ch5P23FRBAMPA
     setfield /B23FS/{s}/Ex_ch5P23FRBAMPA gmax {CondmaxP23FRBAMPA_B23FS}
     addmsg /B23FS/{s}/Ex_ch5P23FRBAMPA /B23FS/{s} CHANNEL Gk Ek
     addmsg /B23FS/{s} /B23FS/{s}/Ex_ch5P23FRBAMPA VOLTAGE Vm

     ce /

end

//P23FRB - B23FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B23FS/{s}

     make_Ex_ch5P23FRBNMDA
     setfield /B23FS/{s}/Ex_ch5P23FRBNMDA gmax {CondmaxP23FRBNMDA_B23FS}
     addmsg /B23FS/{s}/Ex_ch5P23FRBNMDA /B23FS/{s} CHANNEL Gk Ek
     addmsg /B23FS/{s} /B23FS/{s}/Ex_ch5P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - B23FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B23FS/{s}

     make_Ex_ch5P5RSAMPA
     setfield /B23FS/{s}/Ex_ch5P5RSAMPA gmax {CondmaxP5RSAMPA_B23FS}
     addmsg /B23FS/{s}/Ex_ch5P5RSAMPA /B23FS/{s} CHANNEL Gk Ek
     addmsg /B23FS/{s} /B23FS/{s}/Ex_ch5P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - B23FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B23FS/{s}

     make_Ex_ch5P5RSNMDA
     setfield /B23FS/{s}/Ex_ch5P5RSNMDA gmax {CondmaxP5RSNMDA_B23FS}
     addmsg /B23FS/{s}/Ex_ch5P5RSNMDA /B23FS/{s} CHANNEL Gk Ek
     addmsg /B23FS/{s} /B23FS/{s}/Ex_ch5P5RSNMDA VOLTAGE Vm

     ce /

end
