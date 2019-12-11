
//P23RS - I5LTS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I5LTS/{s}

     make_Ex_ch19P23RSAMPA
     setfield /I5LTS/{s}/Ex_ch19P23RSAMPA gmax {CondmaxP23RSAMPA_I5LTS}
     addmsg /I5LTS/{s}/Ex_ch19P23RSAMPA /I5LTS/{s} CHANNEL Gk Ek
     addmsg /I5LTS/{s} /I5LTS/{s}/Ex_ch19P23RSAMPA VOLTAGE Vm

     ce /

end

//P23RS - I5LTS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I5LTS/{s}

     make_Ex_ch19P23RSNMDA
     setfield /I5LTS/{s}/Ex_ch19P23RSNMDA gmax {CondmaxP23RSNMDA_I5LTS}
     addmsg /I5LTS/{s}/Ex_ch19P23RSNMDA /I5LTS/{s} CHANNEL Gk Ek
     addmsg /I5LTS/{s} /I5LTS/{s}/Ex_ch19P23RSNMDA VOLTAGE Vm

     ce /

end

//P5IB - I5LTS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I5LTS/{s}

     make_Ex_ch19P5IBAMPA
     setfield /I5LTS/{s}/Ex_ch19P5IBAMPA gmax {CondmaxP5IBAMPA_I5LTS}
     addmsg /I5LTS/{s}/Ex_ch19P5IBAMPA /I5LTS/{s} CHANNEL Gk Ek
     addmsg /I5LTS/{s} /I5LTS/{s}/Ex_ch19P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - I5LTS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I5LTS/{s}

     make_Ex_ch19P5IBNMDA
     setfield /I5LTS/{s}/Ex_ch19P5IBNMDA gmax {CondmaxP5IBNMDA_I5LTS}
     addmsg /I5LTS/{s}/Ex_ch19P5IBNMDA /I5LTS/{s} CHANNEL Gk Ek
     addmsg /I5LTS/{s} /I5LTS/{s}/Ex_ch19P5IBNMDA VOLTAGE Vm

     ce /

end

//B5FS - I5LTS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I5LTS/{s}

     make_Inh_ch19B5FSGABAa
     setfield /I5LTS/{s}/Inh_ch19B5FSGABAa gmax {CondmaxB5FSGABAa_I5LTS}
     addmsg /I5LTS/{s}/Inh_ch19B5FSGABAa /I5LTS/{s} CHANNEL Gk Ek
     addmsg /I5LTS/{s} /I5LTS/{s}/Inh_ch19B5FSGABAa VOLTAGE Vm

     ce /

end

//P6RS - I5LTS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I5LTS/{s}

     make_Ex_ch19P6RSAMPA
     setfield /I5LTS/{s}/Ex_ch19P6RSAMPA gmax {CondmaxP6RSAMPA_I5LTS}
     addmsg /I5LTS/{s}/Ex_ch19P6RSAMPA /I5LTS/{s} CHANNEL Gk Ek
     addmsg /I5LTS/{s} /I5LTS/{s}/Ex_ch19P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - I5LTS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I5LTS/{s}

     make_Ex_ch19P6RSNMDA
     setfield /I5LTS/{s}/Ex_ch19P6RSNMDA gmax {CondmaxP6RSNMDA_I5LTS}
     addmsg /I5LTS/{s}/Ex_ch19P6RSNMDA /I5LTS/{s} CHANNEL Gk Ek
     addmsg /I5LTS/{s} /I5LTS/{s}/Ex_ch19P6RSNMDA VOLTAGE Vm

     ce /

end

//ST4RS - I5LTS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I5LTS/{s}

     make_Ex_ch19ST4RSAMPA
     setfield /I5LTS/{s}/Ex_ch19ST4RSAMPA gmax {CondmaxST4RSAMPA_I5LTS}
     addmsg /I5LTS/{s}/Ex_ch19ST4RSAMPA /I5LTS/{s} CHANNEL Gk Ek
     addmsg /I5LTS/{s} /I5LTS/{s}/Ex_ch19ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - I5LTS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I5LTS/{s}

     make_Ex_ch19ST4RSNMDA
     setfield /I5LTS/{s}/Ex_ch19ST4RSNMDA gmax {CondmaxST4RSNMDA_I5LTS}
     addmsg /I5LTS/{s}/Ex_ch19ST4RSNMDA /I5LTS/{s} CHANNEL Gk Ek
     addmsg /I5LTS/{s} /I5LTS/{s}/Ex_ch19ST4RSNMDA VOLTAGE Vm

     ce /

end

//I23LTS - I5LTS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I5LTS/{s}

     make_Inh_ch19I23LTSGABAa
     setfield /I5LTS/{s}/Inh_ch19I23LTSGABAa gmax {CondmaxI23LTSGABAa_I5LTS}
     addmsg /I5LTS/{s}/Inh_ch19I23LTSGABAa /I5LTS/{s} CHANNEL Gk Ek
     addmsg /I5LTS/{s} /I5LTS/{s}/Inh_ch19I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - I5LTS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I5LTS/{s}

     make_Inh_ch19I5LTSGABAa
     setfield /I5LTS/{s}/Inh_ch19I5LTSGABAa gmax {CondmaxI5LTSGABAa_I5LTS}
     addmsg /I5LTS/{s}/Inh_ch19I5LTSGABAa /I5LTS/{s} CHANNEL Gk Ek
     addmsg /I5LTS/{s} /I5LTS/{s}/Inh_ch19I5LTSGABAa VOLTAGE Vm

     ce /

end

//P23FRB - I5LTS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I5LTS/{s}

     make_Ex_ch19P23FRBAMPA
     setfield /I5LTS/{s}/Ex_ch19P23FRBAMPA gmax {CondmaxP23FRBAMPA_I5LTS}
     addmsg /I5LTS/{s}/Ex_ch19P23FRBAMPA /I5LTS/{s} CHANNEL Gk Ek
     addmsg /I5LTS/{s} /I5LTS/{s}/Ex_ch19P23FRBAMPA VOLTAGE Vm

     ce /

end

//P23FRB - I5LTS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I5LTS/{s}

     make_Ex_ch19P23FRBNMDA
     setfield /I5LTS/{s}/Ex_ch19P23FRBNMDA gmax {CondmaxP23FRBNMDA_I5LTS}
     addmsg /I5LTS/{s}/Ex_ch19P23FRBNMDA /I5LTS/{s} CHANNEL Gk Ek
     addmsg /I5LTS/{s} /I5LTS/{s}/Ex_ch19P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - I5LTS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I5LTS/{s}

     make_Ex_ch19P5RSAMPA
     setfield /I5LTS/{s}/Ex_ch19P5RSAMPA gmax {CondmaxP5RSAMPA_I5LTS}
     addmsg /I5LTS/{s}/Ex_ch19P5RSAMPA /I5LTS/{s} CHANNEL Gk Ek
     addmsg /I5LTS/{s} /I5LTS/{s}/Ex_ch19P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - I5LTS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /I5LTS/{s}

     make_Ex_ch19P5RSNMDA
     setfield /I5LTS/{s}/Ex_ch19P5RSNMDA gmax {CondmaxP5RSNMDA_I5LTS}
     addmsg /I5LTS/{s}/Ex_ch19P5RSNMDA /I5LTS/{s} CHANNEL Gk Ek
     addmsg /I5LTS/{s} /I5LTS/{s}/Ex_ch19P5RSNMDA VOLTAGE Vm

     ce /

end
