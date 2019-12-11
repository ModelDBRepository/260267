
//P23RS - B5FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B5FS/{s}

     make_Ex_ch10P23RSAMPA
     setfield /B5FS/{s}/Ex_ch10P23RSAMPA gmax {CondmaxP23RSAMPA_B5FS}
     addmsg /B5FS/{s}/Ex_ch10P23RSAMPA /B5FS/{s} CHANNEL Gk Ek
     addmsg /B5FS/{s} /B5FS/{s}/Ex_ch10P23RSAMPA VOLTAGE Vm

     ce /

end

//P23RS - B5FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B5FS/{s}

     make_Ex_ch10P23RSNMDA
     setfield /B5FS/{s}/Ex_ch10P23RSNMDA gmax {CondmaxP23RSNMDA_B5FS}
     addmsg /B5FS/{s}/Ex_ch10P23RSNMDA /B5FS/{s} CHANNEL Gk Ek
     addmsg /B5FS/{s} /B5FS/{s}/Ex_ch10P23RSNMDA VOLTAGE Vm

     ce /

end

//P5IB - B5FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B5FS/{s}

     make_Ex_ch10P5IBAMPA
     setfield /B5FS/{s}/Ex_ch10P5IBAMPA gmax {CondmaxP5IBAMPA_B5FS}
     addmsg /B5FS/{s}/Ex_ch10P5IBAMPA /B5FS/{s} CHANNEL Gk Ek
     addmsg /B5FS/{s} /B5FS/{s}/Ex_ch10P5IBAMPA VOLTAGE Vm

     ce /

end

//P5IB - B5FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B5FS/{s}

     make_Ex_ch10P5IBNMDA
     setfield /B5FS/{s}/Ex_ch10P5IBNMDA gmax {CondmaxP5IBNMDA_B5FS}
     addmsg /B5FS/{s}/Ex_ch10P5IBNMDA /B5FS/{s} CHANNEL Gk Ek
     addmsg /B5FS/{s} /B5FS/{s}/Ex_ch10P5IBNMDA VOLTAGE Vm

     ce /

end

//B5FS - B5FS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B5FS/{s}

     make_Inh_ch10B5FSGABAa
     setfield /B5FS/{s}/Inh_ch10B5FSGABAa gmax {CondmaxB5FSGABAa_B5FS}
     addmsg /B5FS/{s}/Inh_ch10B5FSGABAa /B5FS/{s} CHANNEL Gk Ek
     addmsg /B5FS/{s} /B5FS/{s}/Inh_ch10B5FSGABAa VOLTAGE Vm

     ce /

end

//P6RS - B5FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B5FS/{s}

     make_Ex_ch10P6RSAMPA
     setfield /B5FS/{s}/Ex_ch10P6RSAMPA gmax {CondmaxP6RSAMPA_B5FS}
     addmsg /B5FS/{s}/Ex_ch10P6RSAMPA /B5FS/{s} CHANNEL Gk Ek
     addmsg /B5FS/{s} /B5FS/{s}/Ex_ch10P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - B5FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B5FS/{s}

     make_Ex_ch10P6RSNMDA
     setfield /B5FS/{s}/Ex_ch10P6RSNMDA gmax {CondmaxP6RSNMDA_B5FS}
     addmsg /B5FS/{s}/Ex_ch10P6RSNMDA /B5FS/{s} CHANNEL Gk Ek
     addmsg /B5FS/{s} /B5FS/{s}/Ex_ch10P6RSNMDA VOLTAGE Vm

     ce /

end

//ST4RS - B5FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B5FS/{s}

     make_Ex_ch10ST4RSAMPA
     setfield /B5FS/{s}/Ex_ch10ST4RSAMPA gmax {CondmaxST4RSAMPA_B5FS}
     addmsg /B5FS/{s}/Ex_ch10ST4RSAMPA /B5FS/{s} CHANNEL Gk Ek
     addmsg /B5FS/{s} /B5FS/{s}/Ex_ch10ST4RSAMPA VOLTAGE Vm

     ce /

end

//ST4RS - B5FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B5FS/{s}

     make_Ex_ch10ST4RSNMDA
     setfield /B5FS/{s}/Ex_ch10ST4RSNMDA gmax {CondmaxST4RSNMDA_B5FS}
     addmsg /B5FS/{s}/Ex_ch10ST4RSNMDA /B5FS/{s} CHANNEL Gk Ek
     addmsg /B5FS/{s} /B5FS/{s}/Ex_ch10ST4RSNMDA VOLTAGE Vm

     ce /

end

//I23LTS - B5FS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B5FS/{s}

     make_Inh_ch10I23LTSGABAa
     setfield /B5FS/{s}/Inh_ch10I23LTSGABAa gmax {CondmaxI23LTSGABAa_B5FS}
     addmsg /B5FS/{s}/Inh_ch10I23LTSGABAa /B5FS/{s} CHANNEL Gk Ek
     addmsg /B5FS/{s} /B5FS/{s}/Inh_ch10I23LTSGABAa VOLTAGE Vm

     ce /

end

//I5LTS - B5FS GABAa synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B5FS/{s}

     make_Inh_ch10I5LTSGABAa
     setfield /B5FS/{s}/Inh_ch10I5LTSGABAa gmax {CondmaxI5LTSGABAa_B5FS}
     addmsg /B5FS/{s}/Inh_ch10I5LTSGABAa /B5FS/{s} CHANNEL Gk Ek
     addmsg /B5FS/{s} /B5FS/{s}/Inh_ch10I5LTSGABAa VOLTAGE Vm

     ce /

end

//TCR - B5FS AMPA synapses

str s

//Load synapse location array

str locations = "proxdendN distdendNmida distdendNlonga proxdendE distdendElonga distdendEmida proxdendS distdendSlonga distdendSmida proxdendW distdendWlonga distdendWmida"

foreach s ({arglist {locations}})

     ce /B5FS/{s}

     make_Ex_ch10TCRAMPA
     setfield /B5FS/{s}/Ex_ch10TCRAMPA gmax {CondmaxTCRAMPA_B5FS}
     addmsg /B5FS/{s}/Ex_ch10TCRAMPA /B5FS/{s} CHANNEL Gk Ek
     addmsg /B5FS/{s} /B5FS/{s}/Ex_ch10TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - B5FS NMDA synapses

str s

//Load synapse location array

str locations = "proxdendN distdendNmida distdendNlonga proxdendE distdendElonga distdendEmida proxdendS distdendSlonga distdendSmida proxdendW distdendWlonga distdendWmida"

foreach s ({arglist {locations}})

     ce /B5FS/{s}

     make_Ex_ch10TCRNMDA
     setfield /B5FS/{s}/Ex_ch10TCRNMDA gmax {CondmaxTCRNMDA_B5FS}
     addmsg /B5FS/{s}/Ex_ch10TCRNMDA /B5FS/{s} CHANNEL Gk Ek
     addmsg /B5FS/{s} /B5FS/{s}/Ex_ch10TCRNMDA VOLTAGE Vm

     ce /

end

//P23FRB - B5FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B5FS/{s}

     make_Ex_ch10P23FRBAMPA
     setfield /B5FS/{s}/Ex_ch10P23FRBAMPA gmax {CondmaxP23FRBAMPA_B5FS}
     addmsg /B5FS/{s}/Ex_ch10P23FRBAMPA /B5FS/{s} CHANNEL Gk Ek
     addmsg /B5FS/{s} /B5FS/{s}/Ex_ch10P23FRBAMPA VOLTAGE Vm

     ce /

end

//P23FRB - B5FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B5FS/{s}

     make_Ex_ch10P23FRBNMDA
     setfield /B5FS/{s}/Ex_ch10P23FRBNMDA gmax {CondmaxP23FRBNMDA_B5FS}
     addmsg /B5FS/{s}/Ex_ch10P23FRBNMDA /B5FS/{s} CHANNEL Gk Ek
     addmsg /B5FS/{s} /B5FS/{s}/Ex_ch10P23FRBNMDA VOLTAGE Vm

     ce /

end

//P5RS - B5FS AMPA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B5FS/{s}

     make_Ex_ch10P5RSAMPA
     setfield /B5FS/{s}/Ex_ch10P5RSAMPA gmax {CondmaxP5RSAMPA_B5FS}
     addmsg /B5FS/{s}/Ex_ch10P5RSAMPA /B5FS/{s} CHANNEL Gk Ek
     addmsg /B5FS/{s} /B5FS/{s}/Ex_ch10P5RSAMPA VOLTAGE Vm

     ce /

end

//P5RS - B5FS NMDA synapses

str s

//Load synapse location array

str locations = "distdendNlongb distdendNlongc distdendNmidb distdendNmidc distdendNshorta distdendNshortb distdendElongb distdendElongc distdendEmidb distdendEmidc distdendEshorta distdendEshortb distdendSlongb distdendSlongc distdendSmidb distdendSmidc distdendSshorta distdendSshortb distdendWlongb distdendWlongc distdendWmidb distdendWmidc distdendWshorta distdendWshortb"

foreach s ({arglist {locations}})

     ce /B5FS/{s}

     make_Ex_ch10P5RSNMDA
     setfield /B5FS/{s}/Ex_ch10P5RSNMDA gmax {CondmaxP5RSNMDA_B5FS}
     addmsg /B5FS/{s}/Ex_ch10P5RSNMDA /B5FS/{s} CHANNEL Gk Ek
     addmsg /B5FS/{s} /B5FS/{s}/Ex_ch10P5RSNMDA VOLTAGE Vm

     ce /

end
