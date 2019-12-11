
//P23RS - C23FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C23FS/{s}

     make_Ex_ch15P23RSAMPA
     setfield /C23FS/{s}/Ex_ch15P23RSAMPA gmax {CondmaxP23RSAMPA_C23FS}
     addmsg /C23FS/{s}/Ex_ch15P23RSAMPA /C23FS/{s} CHANNEL Gk Ek
     addmsg /C23FS/{s} /C23FS/{s}/Ex_ch15P23RSAMPA VOLTAGE Vm

     ce /

end


//P23RS - C23FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C23FS/{s}

     make_Ex_ch15P23RSNMDA
     setfield /C23FS/{s}/Ex_ch15P23RSNMDA gmax {CondmaxP23RSNMDA_C23FS}
     addmsg /C23FS/{s}/Ex_ch15P23RSNMDA /C23FS/{s} CHANNEL Gk Ek
     addmsg /C23FS/{s} /C23FS/{s}/Ex_ch15P23RSNMDA VOLTAGE Vm

     ce /

end

//B23FS - C23FS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C23FS/{s}

     make_Inh_ch15B23FSGABAa
     setfield /C23FS/{s}/Inh_ch15B23FSGABAa gmax {CondmaxB23FSGABAa_C23FS}
     addmsg /C23FS/{s}/Inh_ch15B23FSGABAa /C23FS/{s} CHANNEL Gk Ek
     addmsg /C23FS/{s} /C23FS/{s}/Inh_ch15B23FSGABAa VOLTAGE Vm

     ce /

end

//P5IB - C23FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C23FS/{s}

     make_Ex_ch15P5IBAMPA
     setfield /C23FS/{s}/Ex_ch15P5IBAMPA gmax {CondmaxP5IBAMPA_C23FS}
     addmsg /C23FS/{s}/Ex_ch15P5IBAMPA /C23FS/{s} CHANNEL Gk Ek
     addmsg /C23FS/{s} /C23FS/{s}/Ex_ch15P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - C23FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C23FS/{s}

     make_Ex_ch15P5IBNMDA
     setfield /C23FS/{s}/Ex_ch15P5IBNMDA gmax {CondmaxP5IBNMDA_C23FS}
     addmsg /C23FS/{s}/Ex_ch15P5IBNMDA /C23FS/{s} CHANNEL Gk Ek
     addmsg /C23FS/{s} /C23FS/{s}/Ex_ch15P5IBNMDA VOLTAGE Vm

     ce /

end

//P6RS - C23FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C23FS/{s}

     make_Ex_ch15P6RSAMPA
     setfield /C23FS/{s}/Ex_ch15P6RSAMPA gmax {CondmaxP6RSAMPA_C23FS}
     addmsg /C23FS/{s}/Ex_ch15P6RSAMPA /C23FS/{s} CHANNEL Gk Ek
     addmsg /C23FS/{s} /C23FS/{s}/Ex_ch15P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - C23FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C23FS/{s}

     make_Ex_ch15P6RSNMDA
     setfield /C23FS/{s}/Ex_ch15P6RSNMDA gmax {CondmaxP6RSNMDA_C23FS}
     addmsg /C23FS/{s}/Ex_ch15P6RSNMDA /C23FS/{s} CHANNEL Gk Ek
     addmsg /C23FS/{s} /C23FS/{s}/Ex_ch15P6RSNMDA VOLTAGE Vm

     ce /

end

//ST4RS - C23FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C23FS/{s}

     make_Ex_ch15ST4RSAMPA
     setfield /C23FS/{s}/Ex_ch15ST4RSAMPA gmax {CondmaxST4RSAMPA_C23FS}
     addmsg /C23FS/{s}/Ex_ch15ST4RSAMPA /C23FS/{s} CHANNEL Gk Ek
     addmsg /C23FS/{s} /C23FS/{s}/Ex_ch15ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - C23FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C23FS/{s}

     make_Ex_ch15ST4RSNMDA
     setfield /C23FS/{s}/Ex_ch15ST4RSNMDA gmax {CondmaxST4RSNMDA_C23FS}
     addmsg /C23FS/{s}/Ex_ch15ST4RSNMDA /C23FS/{s} CHANNEL Gk Ek
     addmsg /C23FS/{s} /C23FS/{s}/Ex_ch15ST4RSNMDA VOLTAGE Vm

     ce /

end

//I23LTS - C23FS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNlongd distdendNlonge distdendNlongf distdendNlongg distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendElongd distdendElonge distdendElongf distdendElongg distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSlongd distdendSlonge distdendSlongf distdendSlongg distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWlongd distdendWlonge distdendWlongf distdendWlongg distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C23FS/{s}

     make_Inh_ch15I23LTSGABAa
     setfield /C23FS/{s}/Inh_ch15I23LTSGABAa gmax {CondmaxI23LTSGABAa_C23FS}
     addmsg /C23FS/{s}/Inh_ch15I23LTSGABAa /C23FS/{s} CHANNEL Gk Ek
     addmsg /C23FS/{s} /C23FS/{s}/Inh_ch15I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - C23FS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNlongd distdendNlonge distdendNlongf distdendNlongg distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendElongd distdendElonge distdendElongf distdendElongg distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSlongd distdendSlonge distdendSlongf distdendSlongg distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWlongd distdendWlonge distdendWlongf distdendWlongg distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C23FS/{s}

     make_Inh_ch15I5LTSGABAa
     setfield /C23FS/{s}/Inh_ch15I5LTSGABAa gmax {CondmaxI5LTSGABAa_C23FS}
     addmsg /C23FS/{s}/Inh_ch15I5LTSGABAa /C23FS/{s} CHANNEL Gk Ek
     addmsg /C23FS/{s} /C23FS/{s}/Inh_ch15I5LTSGABAa VOLTAGE Vm

     ce /

end

//TCR - C23FS AMPA synapses

str s

//Load synapse location array

str locations = "proxdendN distdendNmida distdendNlonga proxdendE distdendEmida distdendElonga proxdendS distdendSmida distdendSlonga proxdendW distdendWmida distdendWlonga"

foreach s ({arglist {locations}})

     ce /C23FS/{s}

     make_Ex_ch15TCRAMPA
     setfield /C23FS/{s}/Ex_ch15TCRAMPA gmax {CondmaxTCRAMPA_C23FS}
     addmsg /C23FS/{s}/Ex_ch15TCRAMPA /C23FS/{s} CHANNEL Gk Ek
     addmsg /C23FS/{s} /C23FS/{s}/Ex_ch15TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - C23FS NMDA synapses

str s

//Load synapse location array

str locations = "proxdendN distdendNmida distdendNlonga proxdendE distdendEmida distdendElonga proxdendS distdendSmida distdendSlonga proxdendW distdendWmida distdendWlonga"

foreach s ({arglist {locations}})

     ce /C23FS/{s}

     make_Ex_ch15TCRNMDA
     setfield /C23FS/{s}/Ex_ch15TCRNMDA gmax {CondmaxTCRNMDA_C23FS}
     addmsg /C23FS/{s}/Ex_ch15TCRNMDA /C23FS/{s} CHANNEL Gk Ek
     addmsg /C23FS/{s} /C23FS/{s}/Ex_ch15TCRNMDA VOLTAGE Vm

     ce /

end

//P23FRB - C23FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C23FS/{s}

     make_Ex_ch15P23FRBAMPA
     setfield /C23FS/{s}/Ex_ch15P23FRBAMPA gmax {CondmaxP23FRBAMPA_C23FS}
     addmsg /C23FS/{s}/Ex_ch15P23FRBAMPA /C23FS/{s} CHANNEL Gk Ek
     addmsg /C23FS/{s} /C23FS/{s}/Ex_ch15P23FRBAMPA VOLTAGE Vm

     ce /

end


//P23FRB - C23FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C23FS/{s}

     make_Ex_ch15P23FRBNMDA
     setfield /C23FS/{s}/Ex_ch15P23FRBNMDA gmax {CondmaxP23FRBNMDA_C23FS}
     addmsg /C23FS/{s}/Ex_ch15P23FRBNMDA /C23FS/{s} CHANNEL Gk Ek
     addmsg /C23FS/{s} /C23FS/{s}/Ex_ch15P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - C23FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C23FS/{s}

     make_Ex_ch15P5RSAMPA
     setfield /C23FS/{s}/Ex_ch15P5RSAMPA gmax {CondmaxP5RSAMPA_C23FS}
     addmsg /C23FS/{s}/Ex_ch15P5RSAMPA /C23FS/{s} CHANNEL Gk Ek
     addmsg /C23FS/{s} /C23FS/{s}/Ex_ch15P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - C23FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C23FS/{s}

     make_Ex_ch15P5RSNMDA
     setfield /C23FS/{s}/Ex_ch15P5RSNMDA gmax {CondmaxP5RSNMDA_C23FS}
     addmsg /C23FS/{s}/Ex_ch15P5RSNMDA /C23FS/{s} CHANNEL Gk Ek
     addmsg /C23FS/{s} /C23FS/{s}/Ex_ch15P5RSNMDA VOLTAGE Vm

     ce /

end
