
// This conductivity is uniformly, and randomly distributed between 0.7-2.1 nS per Traub 2005
// We can add this in the weighting section

//P6RS - TCR AMPA synapses

str s

//Load synapse location array

str locations = "proxdendNNW11 proxdendNNW12 proxdendNNW13 proxdendNNE11 proxdendNNE12 proxdendNNE13 proxdendNE11 proxdendNE12 proxdendNE13 proxdendE11 proxdendE12 proxdendE13 proxdendSE11 proxdendSE12 proxdendSE13 proxdendSSE11 proxdendSSE12 proxdendSSE13 proxdendSSW11 proxdendSSW12 proxdendSSW13 proxdendSW11 proxdendSW12 proxdendSW13 proxdendW11 proxdendW12 proxdendW13 proxdendNW11 proxdendNW12 proxdendNW13 proxdendNNW21 proxdendNNW22 proxdendNNW23 proxdendNNE21 proxdendNNE22 proxdendNNE23 proxdendNE21 proxdendNE22 proxdendNE23 proxdendE21 proxdendE22 proxdendE23 proxdendSE21 proxdendSE22 proxdendSE23 proxdendSSE21 proxdendSSE22 proxdendSSE23 proxdendSSW21 proxdendSSW22 proxdendSSW23 proxdendSW21 proxdendSW22 proxdendSW23 proxdendW21 proxdendW22 proxdendW23 proxdendNW21 proxdendNW22 proxdendNW23 proxdendNNW31 proxdendNNW32 proxdendNNW33 proxdendNNE31 proxdendNNE32 proxdendNNE33 proxdendNE31 proxdendNE32 proxdendNE33 proxdendE31 proxdendE32 proxdendE33 proxdendSE31 proxdendSE32 proxdendSE33 proxdendSSE31 proxdendSSE32 proxdendSSE33 proxdendSSW31 proxdendSSW32 proxdendSSW33 proxdendSW31 proxdendSW32 proxdendSW33 proxdendW31 proxdendW32 proxdendW33 proxdendNW31 proxdendNW32 proxdendNW33"

foreach s ({arglist {locations}})

     ce /TCR/{s}

     make_Ex_ch20P6RSAMPA
     setfield /TCR/{s}/Ex_ch20P6RSAMPA gmax {CondmaxP6RSAMPA_TCR}
     addmsg /TCR/{s}/Ex_ch20P6RSAMPA /TCR/{s} CHANNEL Gk Ek
     addmsg /TCR/{s} /TCR/{s}/Ex_ch20P6RSAMPA VOLTAGE Vm

     ce /

end

//P6RS - TCR NMDA synapses

str s

//Load synapse location array

str locations = "proxdendNNW11 proxdendNNW12 proxdendNNW13 proxdendNNE11 proxdendNNE12 proxdendNNE13 proxdendNE11 proxdendNE12 proxdendNE13 proxdendE11 proxdendE12 proxdendE13 proxdendSE11 proxdendSE12 proxdendSE13 proxdendSSE11 proxdendSSE12 proxdendSSE13 proxdendSSW11 proxdendSSW12 proxdendSSW13 proxdendSW11 proxdendSW12 proxdendSW13 proxdendW11 proxdendW12 proxdendW13 proxdendNW11 proxdendNW12 proxdendNW13 proxdendNNW21 proxdendNNW22 proxdendNNW23 proxdendNNE21 proxdendNNE22 proxdendNNE23 proxdendNE21 proxdendNE22 proxdendNE23 proxdendE21 proxdendE22 proxdendE23 proxdendSE21 proxdendSE22 proxdendSE23 proxdendSSE21 proxdendSSE22 proxdendSSE23 proxdendSSW21 proxdendSSW22 proxdendSSW23 proxdendSW21 proxdendSW22 proxdendSW23 proxdendW21 proxdendW22 proxdendW23 proxdendNW21 proxdendNW22 proxdendNW23 proxdendNNW31 proxdendNNW32 proxdendNNW33 proxdendNNE31 proxdendNNE32 proxdendNNE33 proxdendNE31 proxdendNE32 proxdendNE33 proxdendE31 proxdendE32 proxdendE33 proxdendSE31 proxdendSE32 proxdendSE33 proxdendSSE31 proxdendSSE32 proxdendSSE33 proxdendSSW31 proxdendSSW32 proxdendSSW33 proxdendSW31 proxdendSW32 proxdendSW33 proxdendW31 proxdendW32 proxdendW33 proxdendNW31 proxdendNW32 proxdendNW33"

foreach s ({arglist {locations}})

     ce /TCR/{s}

     make_Ex_ch20P6RSNMDA
     setfield /TCR/{s}/Ex_ch20P6RSNMDA gmax {CondmaxP6RSNMDA_TCR}
     addmsg /TCR/{s}/Ex_ch20P6RSNMDA /TCR/{s} CHANNEL Gk Ek
     addmsg /TCR/{s} /TCR/{s}/Ex_ch20P6RSNMDA VOLTAGE Vm

     ce /

end

//nRT - TCR GABAa synapses

str s

//Load synapse location array

str locations = "proxdendNNW11 proxdendNNW12 proxdendNNW13 proxdendNNE11 proxdendNNE12 proxdendNNE13 proxdendNE11 proxdendNE12 proxdendNE13 proxdendE11 proxdendE12 proxdendE13 proxdendSE11 proxdendSE12 proxdendSE13 proxdendSSE11 proxdendSSE12 proxdendSSE13 proxdendSSW11 proxdendSSW12 proxdendSSW13 proxdendSW11 proxdendSW12 proxdendSW13 proxdendW11 proxdendW12 proxdendW13 proxdendNW11 proxdendNW12 proxdendNW13 proxdendNNW21 proxdendNNW22 proxdendNNW23 proxdendNNE21 proxdendNNE22 proxdendNNE23 proxdendNE21 proxdendNE22 proxdendNE23 proxdendE21 proxdendE22 proxdendE23 proxdendSE21 proxdendSE22 proxdendSE23 proxdendSSE21 proxdendSSE22 proxdendSSE23 proxdendSSW21 proxdendSSW22 proxdendSSW23 proxdendSW21 proxdendSW22 proxdendSW23 proxdendW21 proxdendW22 proxdendW23 proxdendNW21 proxdendNW22 proxdendNW23 proxdendNNW31 proxdendNNW32 proxdendNNW33 proxdendNNE31 proxdendNNE32 proxdendNNE33 proxdendNE31 proxdendNE32 proxdendNE33 proxdendE31 proxdendE32 proxdendE33 proxdendSE31 proxdendSE32 proxdendSE33 proxdendSSE31 proxdendSSE32 proxdendSSE33 proxdendSSW31 proxdendSSW32 proxdendSSW33 proxdendSW31 proxdendSW32 proxdendSW33 proxdendW31 proxdendW32 proxdendW33 proxdendNW31 proxdendNW32 proxdendNW33"

foreach s ({arglist {locations}})

     ce /TCR/{s}

     make_Inh_ch20nRTGABAa
     setfield /TCR/{s}/Inh_ch20nRTGABAa gmax {CondmaxnRTGABAa_TCR}
     addmsg /TCR/{s}/Inh_ch20nRTGABAa /TCR/{s} CHANNEL Gk Ek
     addmsg /TCR/{s} /TCR/{s}/Inh_ch20nRTGABAa VOLTAGE Vm

     ce /

end
