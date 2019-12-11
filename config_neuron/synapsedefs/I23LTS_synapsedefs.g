
//P23RS - I23LTS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I23LTS/{s}

     make_Ex_ch18P23RSAMPA
     setfield /I23LTS/{s}/Ex_ch18P23RSAMPA gmax {CondmaxP23RSAMPA_I23LTS}
     addmsg /I23LTS/{s}/Ex_ch18P23RSAMPA /I23LTS/{s} CHANNEL Gk Ek
     addmsg /I23LTS/{s} /I23LTS/{s}/Ex_ch18P23RSAMPA VOLTAGE Vm

     ce /

end

//P23RS - I23LTS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I23LTS/{s}

     make_Ex_ch18P23RSNMDA
     setfield /I23LTS/{s}/Ex_ch18P23RSNMDA gmax {CondmaxP23RSNMDA_I23LTS}
     addmsg /I23LTS/{s}/Ex_ch18P23RSNMDA /I23LTS/{s} CHANNEL Gk Ek
     addmsg /I23LTS/{s} /I23LTS/{s}/Ex_ch18P23RSNMDA VOLTAGE Vm

     ce /

end

//B23FS - I23LTS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I23LTS/{s}

     make_Inh_ch18B23FSGABAa
     setfield /I23LTS/{s}/Inh_ch18B23FSGABAa gmax {CondmaxB23FSGABAa_I23LTS}
     addmsg /I23LTS/{s}/Inh_ch18B23FSGABAa /I23LTS/{s} CHANNEL Gk Ek
     addmsg /I23LTS/{s} /I23LTS/{s}/Inh_ch18B23FSGABAa VOLTAGE Vm

     ce /

end

//P5IB - I23LTS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I23LTS/{s}

     make_Ex_ch18P5IBAMPA
     setfield /I23LTS/{s}/Ex_ch18P5IBAMPA gmax {CondmaxP5IBAMPA_I23LTS}
     addmsg /I23LTS/{s}/Ex_ch18P5IBAMPA /I23LTS/{s} CHANNEL Gk Ek
     addmsg /I23LTS/{s} /I23LTS/{s}/Ex_ch18P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - I23LTS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I23LTS/{s}

     make_Ex_ch18P5IBNMDA
     setfield /I23LTS/{s}/Ex_ch18P5IBNMDA gmax {CondmaxP5IBNMDA_I23LTS}
     addmsg /I23LTS/{s}/Ex_ch18P5IBNMDA /I23LTS/{s} CHANNEL Gk Ek
     addmsg /I23LTS/{s} /I23LTS/{s}/Ex_ch18P5IBNMDA VOLTAGE Vm

     ce /

end

//P6RS - I23LTS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I23LTS/{s}

     make_Ex_ch18P6RSAMPA
     setfield /I23LTS/{s}/Ex_ch18P6RSAMPA gmax {CondmaxP6RSAMPA_I23LTS}
     addmsg /I23LTS/{s}/Ex_ch18P6RSAMPA /I23LTS/{s} CHANNEL Gk Ek
     addmsg /I23LTS/{s} /I23LTS/{s}/Ex_ch18P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - I23LTS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I23LTS/{s}

     make_Ex_ch18P6RSNMDA
     setfield /I23LTS/{s}/Ex_ch18P6RSNMDA gmax {CondmaxP6RSNMDA_I23LTS}
     addmsg /I23LTS/{s}/Ex_ch18P6RSNMDA /I23LTS/{s} CHANNEL Gk Ek
     addmsg /I23LTS/{s} /I23LTS/{s}/Ex_ch18P6RSNMDA VOLTAGE Vm

     ce /

end

//ST4RS - I23LTS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I23LTS/{s}

     make_Ex_ch18ST4RSAMPA
     setfield /I23LTS/{s}/Ex_ch18ST4RSAMPA gmax {CondmaxST4RSAMPA_I23LTS}
     addmsg /I23LTS/{s}/Ex_ch18ST4RSAMPA /I23LTS/{s} CHANNEL Gk Ek
     addmsg /I23LTS/{s} /I23LTS/{s}/Ex_ch18ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - I23LTS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I23LTS/{s}

     make_Ex_ch18ST4RSNMDA
     setfield /I23LTS/{s}/Ex_ch18ST4RSNMDA gmax {CondmaxST4RSNMDA_I23LTS}
     addmsg /I23LTS/{s}/Ex_ch18ST4RSNMDA /I23LTS/{s} CHANNEL Gk Ek
     addmsg /I23LTS/{s} /I23LTS/{s}/Ex_ch18ST4RSNMDA VOLTAGE Vm

     ce /

end

//I23LTS - I23LTS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNlongd distdendNlonge distdendNlongf distdendNlongg distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendElongd distdendElonge distdendElongf distdendElongg distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSlongd distdendSlonge distdendSlongf distdendSlongg distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWlongd distdendWlonge distdendWlongf distdendWlongg distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I23LTS/{s}

     make_Inh_ch18I23LTSGABAa
     setfield /I23LTS/{s}/Inh_ch18I23LTSGABAa gmax {CondmaxI23LTSGABAa_I23LTS}
     addmsg /I23LTS/{s}/Inh_ch18I23LTSGABAa /I23LTS/{s} CHANNEL Gk Ek
     addmsg /I23LTS/{s} /I23LTS/{s}/Inh_ch18I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - I23LTS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNlongd distdendNlonge distdendNlongf distdendNlongg distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendElongd distdendElonge distdendElongf distdendElongg distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSlongd distdendSlonge distdendSlongf distdendSlongg distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWlongd distdendWlonge distdendWlongf distdendWlongg distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I23LTS/{s}

     make_Inh_ch18I5LTSGABAa
     setfield /I23LTS/{s}/Inh_ch18I5LTSGABAa gmax {CondmaxI5LTSGABAa_I23LTS}
     addmsg /I23LTS/{s}/Inh_ch18I5LTSGABAa /I23LTS/{s} CHANNEL Gk Ek
     addmsg /I23LTS/{s} /I23LTS/{s}/Inh_ch18I5LTSGABAa VOLTAGE Vm

     ce /

end

//P23FRB - I23LTS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I23LTS/{s}

     make_Ex_ch18P23FRBAMPA
     setfield /I23LTS/{s}/Ex_ch18P23FRBAMPA gmax {CondmaxP23FRBAMPA_I23LTS}
     addmsg /I23LTS/{s}/Ex_ch18P23FRBAMPA /I23LTS/{s} CHANNEL Gk Ek
     addmsg /I23LTS/{s} /I23LTS/{s}/Ex_ch18P23FRBAMPA VOLTAGE Vm

     ce /

end

//P23FRB - I23LTS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I23LTS/{s}

     make_Ex_ch18P23FRBNMDA
     setfield /I23LTS/{s}/Ex_ch18P23FRBNMDA gmax {CondmaxP23FRBNMDA_I23LTS}
     addmsg /I23LTS/{s}/Ex_ch18P23FRBNMDA /I23LTS/{s} CHANNEL Gk Ek
     addmsg /I23LTS/{s} /I23LTS/{s}/Ex_ch18P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - I23LTS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I23LTS/{s}

     make_Ex_ch18P5RSAMPA
     setfield /I23LTS/{s}/Ex_ch18P5RSAMPA gmax {CondmaxP5RSAMPA_I23LTS}
     addmsg /I23LTS/{s}/Ex_ch18P5RSAMPA /I23LTS/{s} CHANNEL Gk Ek
     addmsg /I23LTS/{s} /I23LTS/{s}/Ex_ch18P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - I23LTS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I23LTS/{s}

     make_Ex_ch18P5RSNMDA
     setfield /I23LTS/{s}/Ex_ch18P5RSNMDA gmax {CondmaxP5RSNMDA_I23LTS}
     addmsg /I23LTS/{s}/Ex_ch18P5RSNMDA /I23LTS/{s} CHANNEL Gk Ek
     addmsg /I23LTS/{s} /I23LTS/{s}/Ex_ch18P5RSNMDA VOLTAGE Vm

     ce /

end
