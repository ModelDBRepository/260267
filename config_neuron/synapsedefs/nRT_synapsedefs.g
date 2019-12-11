
//P6RS - nRT AMPA synapses

str s

//Load synapse location array

str locations = "proxdendN distdendNlonga distdendNmida proxdendE distdendElonga distdendEmida proxdendS distdendSlonga distdendSmida proxdendW distdendWlonga distdendWmida"

foreach s ({arglist {locations}})

     ce /nRT/{s}

     make_Ex_ch21P6RSAMPA
     setfield /nRT/{s}/Ex_ch21P6RSAMPA gmax {CondmaxP6RSAMPA_nRT}
     addmsg /nRT/{s}/Ex_ch21P6RSAMPA /nRT/{s} CHANNEL Gk Ek
     addmsg /nRT/{s} /nRT/{s}/Ex_ch21P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - nRT NMDA synapses

str locations = "proxdendN distdendNlonga distdendNmida proxdendE distdendElonga distdendEmida proxdendS distdendSlonga distdendSmida proxdendW distdendWlonga distdendWmida"

foreach s ({arglist {locations}})

     ce /nRT/{s}

     make_Ex_ch21P6RSNMDA
     setfield /nRT/{s}/Ex_ch21P6RSNMDA gmax {CondmaxP6RSNMDA_nRT}
     addmsg /nRT/{s}/Ex_ch21P6RSNMDA /nRT/{s} CHANNEL Gk Ek
     addmsg /nRT/{s} /nRT/{s}/Ex_ch21P6RSNMDA VOLTAGE Vm

     ce /

end

//TCR - nRT AMPA synapses

str locations = "proxdendN distdendNlonga distdendNmida proxdendE distdendElonga distdendEmida proxdendS distdendSlonga distdendSmida proxdendW distdendWlonga distdendWmida"

foreach s ({arglist {locations}})

     ce /nRT/{s}

     make_Ex_ch21TCRAMPA
     setfield /nRT/{s}/Ex_ch21TCRAMPA gmax {CondmaxTCRAMPA_nRT}
     addmsg /nRT/{s}/Ex_ch21TCRAMPA /nRT/{s} CHANNEL Gk Ek
     addmsg /nRT/{s} /nRT/{s}/Ex_ch21TCRAMPA VOLTAGE Vm

     ce /

end

//TCR - nRT NMDA synapses

str locations = "proxdendN distdendNlonga distdendNmida proxdendE distdendElonga distdendEmida proxdendS distdendSlonga distdendSmida proxdendW distdendWlonga distdendWmida"

foreach s ({arglist {locations}})

     ce /nRT/{s}

     make_Ex_ch21TCRNMDA
     setfield /nRT/{s}/Ex_ch21TCRNMDA gmax {CondmaxTCRNMDA_nRT}
     addmsg /nRT/{s}/Ex_ch21TCRNMDA /nRT/{s} CHANNEL Gk Ek
     addmsg /nRT/{s} /nRT/{s}/Ex_ch21TCRNMDA VOLTAGE Vm

     ce /

end

//nRT - nRT GABAa synapses

str locations = "distdendNlonga distdendNlongb distdendNlongc distdendNlongd distdendNlonge distdendNlongf distdendNlongg distdendNshorta distdendNshortb distdendNmida distdendNmidb distdendNmidc distdendElonga distdendElongb distdendElongc distdendElongd distdendElonge distdendElongf distdendElongg distdendEshorta distdendEshortb distdendEmida distdendEmidb distdendEmidc distdendSlonga distdendSlongb distdendSlongc distdendSlongd distdendSlonge distdendSlongf distdendSlongg distdendSshorta distdendSshortb distdendSmida distdendSmidb distdendSmidc distdendWlonga distdendWlongb distdendWlongc distdendWlongd distdendWlonge distdendWlongf distdendWlongg distdendWshorta distdendWshortb distdendWmida distdendWmidb distdendWmidc"

foreach s ({arglist {locations}})

     ce /nRT/{s}

     make_Inh_ch21nRTGABAa
     setfield /nRT/{s}/Inh_ch21nRTGABAa gmax {CondmaxnRTGABAa_nRT}
     addmsg /nRT/{s}/Inh_ch21nRTGABAa /nRT/{s} CHANNEL Gk Ek
     addmsg /nRT/{s} /nRT/{s}/Inh_ch21nRTGABAa VOLTAGE Vm

     ce /

end
