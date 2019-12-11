
//P23RS - C5FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C5FS/{s}

     make_Ex_ch16P23RSAMPA
     setfield /C5FS/{s}/Ex_ch16P23RSAMPA gmax {CondmaxP23RSAMPA_C5FS}
     addmsg /C5FS/{s}/Ex_ch16P23RSAMPA /C5FS/{s} CHANNEL Gk Ek
     addmsg /C5FS/{s} /C5FS/{s}/Ex_ch16P23RSAMPA VOLTAGE Vm

     ce /

end


//P23RS - C5FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C5FS/{s}

     make_Ex_ch16P23RSNMDA
     setfield /C5FS/{s}/Ex_ch16P23RSNMDA gmax {CondmaxP23RSNMDA_C5FS}
     addmsg /C5FS/{s}/Ex_ch16P23RSNMDA /C5FS/{s} CHANNEL Gk Ek
     addmsg /C5FS/{s} /C5FS/{s}/Ex_ch16P23RSNMDA VOLTAGE Vm

     ce /

end

//P5IB - C5FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C5FS/{s}

     make_Ex_ch16P5IBAMPA
     setfield /C5FS/{s}/Ex_ch16P5IBAMPA gmax {CondmaxP5IBAMPA_C5FS}
     addmsg /C5FS/{s}/Ex_ch16P5IBAMPA /C5FS/{s} CHANNEL Gk Ek
     addmsg /C5FS/{s} /C5FS/{s}/Ex_ch16P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - C5FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C5FS/{s}

     make_Ex_ch16P5IBNMDA
     setfield /C5FS/{s}/Ex_ch16P5IBNMDA gmax {CondmaxP5IBNMDA_C5FS}
     addmsg /C5FS/{s}/Ex_ch16P5IBNMDA /C5FS/{s} CHANNEL Gk Ek
     addmsg /C5FS/{s} /C5FS/{s}/Ex_ch16P5IBNMDA VOLTAGE Vm

     ce /

end

//B5FS - C5FS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C5FS/{s}

     make_Inh_ch16B5FSGABAa
     setfield /C5FS/{s}/Inh_ch16B5FSGABAa gmax {CondmaxB5FSGABAa_C5FS}
     addmsg /C5FS/{s}/Inh_ch16B5FSGABAa /C5FS/{s} CHANNEL Gk Ek
     addmsg /C5FS/{s} /C5FS/{s}/Inh_ch16B5FSGABAa VOLTAGE Vm

     ce /

end

//P6RS - C5FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C5FS/{s}

     make_Ex_ch16P6RSAMPA
     setfield /C5FS/{s}/Ex_ch16P6RSAMPA gmax {CondmaxP6RSAMPA_C5FS}
     addmsg /C5FS/{s}/Ex_ch16P6RSAMPA /C5FS/{s} CHANNEL Gk Ek
     addmsg /C5FS/{s} /C5FS/{s}/Ex_ch16P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - C5FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C5FS/{s}

     make_Ex_ch16P6RSNMDA
     setfield /C5FS/{s}/Ex_ch16P6RSNMDA gmax {CondmaxP6RSNMDA_C5FS}
     addmsg /C5FS/{s}/Ex_ch16P6RSNMDA /C5FS/{s} CHANNEL Gk Ek
     addmsg /C5FS/{s} /C5FS/{s}/Ex_ch16P6RSNMDA VOLTAGE Vm

     ce /

end

//ST4RS - C5FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C5FS/{s}

     make_Ex_ch16ST4RSAMPA
     setfield /C5FS/{s}/Ex_ch16ST4RSAMPA gmax {CondmaxST4RSAMPA_C5FS}
     addmsg /C5FS/{s}/Ex_ch16ST4RSAMPA /C5FS/{s} CHANNEL Gk Ek
     addmsg /C5FS/{s} /C5FS/{s}/Ex_ch16ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - C5FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C5FS/{s}

     make_Ex_ch16ST4RSNMDA
     setfield /C5FS/{s}/Ex_ch16ST4RSNMDA gmax {CondmaxST4RSNMDA_C5FS}
     addmsg /C5FS/{s}/Ex_ch16ST4RSNMDA /C5FS/{s} CHANNEL Gk Ek
     addmsg /C5FS/{s} /C5FS/{s}/Ex_ch16ST4RSNMDA VOLTAGE Vm

     ce /

end

//I23LTS - C5FS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C5FS/{s}

     make_Inh_ch16I23LTSGABAa
     setfield /C5FS/{s}/Inh_ch16I23LTSGABAa gmax {CondmaxI23LTSGABAa_C5FS}
     addmsg /C5FS/{s}/Inh_ch16I23LTSGABAa /C5FS/{s} CHANNEL Gk Ek
     addmsg /C5FS/{s} /C5FS/{s}/Inh_ch16I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - C5FS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C5FS/{s}

     make_Inh_ch16I5LTSGABAa
     setfield /C5FS/{s}/Inh_ch16I5LTSGABAa gmax {CondmaxI5LTSGABAa_C5FS}
     addmsg /C5FS/{s}/Inh_ch16I5LTSGABAa /C5FS/{s} CHANNEL Gk Ek
     addmsg /C5FS/{s} /C5FS/{s}/Inh_ch16I5LTSGABAa VOLTAGE Vm

     ce /

end

//TCR - C5FS AMPA synapses

str s

//Load synapse location array

str locations = "proxdendN distdendNmida distdendNlonga proxdendE distdendEmida distdendElonga proxdendS distdendSmida distdendSlonga proxdendW distdendWmida distdendWlonga"

foreach s ({arglist {locations}})

     ce /C5FS/{s}

     make_Ex_ch16TCRAMPA
     setfield /C5FS/{s}/Ex_ch16TCRAMPA gmax {CondmaxTCRAMPA_C5FS}
     addmsg /C5FS/{s}/Ex_ch16TCRAMPA /C5FS/{s} CHANNEL Gk Ek
     addmsg /C5FS/{s} /C5FS/{s}/Ex_ch16TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - C5FS NMDA synapses

str s

//Load synapse location array

str locations = "proxdendN distdendNmida distdendNlonga proxdendE distdendEmida distdendElonga proxdendS distdendSmida distdendSlonga proxdendW distdendWmida distdendWlonga"

foreach s ({arglist {locations}})

     ce /C5FS/{s}

     make_Ex_ch16TCRNMDA
     setfield /C5FS/{s}/Ex_ch16TCRNMDA gmax {CondmaxTCRNMDA_C5FS}
     addmsg /C5FS/{s}/Ex_ch16TCRNMDA /C5FS/{s} CHANNEL Gk Ek
     addmsg /C5FS/{s} /C5FS/{s}/Ex_ch16TCRNMDA VOLTAGE Vm

     ce /

end

//P23FRB - C5FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C5FS/{s}

     make_Ex_ch16P23FRBAMPA
     setfield /C5FS/{s}/Ex_ch16P23FRBAMPA gmax {CondmaxP23FRBAMPA_C5FS}
     addmsg /C5FS/{s}/Ex_ch16P23FRBAMPA /C5FS/{s} CHANNEL Gk Ek
     addmsg /C5FS/{s} /C5FS/{s}/Ex_ch16P23FRBAMPA VOLTAGE Vm

     ce /

end


//P23FRB - C5FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C5FS/{s}

     make_Ex_ch16P23FRBNMDA
     setfield /C5FS/{s}/Ex_ch16P23FRBNMDA gmax {CondmaxP23FRBNMDA_C5FS}
     addmsg /C5FS/{s}/Ex_ch16P23FRBNMDA /C5FS/{s} CHANNEL Gk Ek
     addmsg /C5FS/{s} /C5FS/{s}/Ex_ch16P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - C5FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C5FS/{s}

     make_Ex_ch16P5RSAMPA
     setfield /C5FS/{s}/Ex_ch16P5RSAMPA gmax {CondmaxP5RSAMPA_C5FS}
     addmsg /C5FS/{s}/Ex_ch16P5RSAMPA /C5FS/{s} CHANNEL Gk Ek
     addmsg /C5FS/{s} /C5FS/{s}/Ex_ch16P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - C5FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /C5FS/{s}

     make_Ex_ch16P5RSNMDA
     setfield /C5FS/{s}/Ex_ch16P5RSNMDA gmax {CondmaxP5RSNMDA_C5FS}
     addmsg /C5FS/{s}/Ex_ch16P5RSNMDA /C5FS/{s} CHANNEL Gk Ek
     addmsg /C5FS/{s} /C5FS/{s}/Ex_ch16P5RSNMDA VOLTAGE Vm

     ce /

end
