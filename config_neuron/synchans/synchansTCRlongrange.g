//genesis

/* FILE INFORMATION
** "Generic" excitatory (glutamate) and inhibitory (GABA) synaptically
**  activated channels  (based on mitsyn.g by Upi Bhalla)
**
** The channels have an alpha_function type conductance change for
** each synaptic event.
**
** Modified by D. Beeman for GENESIS 2.0 syntax and synchan object - 5/19/94
*/

// CONSTANTS
float EGlu = 0.0
float EGABA = -0.081
float SOMA_A = 1e-9
float GGlu = SOMA_A * 50
float GGABA = SOMA_A * 50

// CONSTANTS for NMDA Channel
float CMg = 1.5     // [Mg] in mM
float eta = 0.33    // per mM
float gamma = 60    // per Volt

//===================================================================
//                     SYNAPTIC CHANNELS   (Values guessed at)
//===================================================================

function make_Ex_ch20P6RSAMPAlongrange

// AMPA synapse for P6RS - TCR

	if ({exists Ex_ch20P6RSAMPAlongrange})
		return
	end

	create		synchan	Ex_ch20P6RSAMPAlongrange
    	setfield	        Ex_ch20P6RSAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 1.0e-3 } \	// sec
		tau2		{ 1.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch20P6RSNMDAlongrange

// NMDA synapse for P6RS - TCR

    if ({exists Ex_ch20P6RSNMDAlongrange})
        return
    end

    create  synchan  Ex_ch20P6RSNMDAlongrange

        setfield     Ex_ch20P6RSNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch20P6RSNMDAlongrange/block
        setfield         Ex_ch20P6RSNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch20P6RSNMDAlongrange Ex_ch20P6RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch20P6RSNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch20P6RSNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch20P6RSNMDAlongrange VOLTAGE Vm

end

function make_Ex_ch20TCRAMPAlongrange

// AMPA synapse for TCR - TCR

	if ({exists Ex_ch20TCRAMPAlongrange})
		return
	end

	create		synchan	Ex_ch20TCRAMPAlongrange
    	setfield	        Ex_ch20TCRAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch20TCRNMDAlongrange

// NMDA synapse for TCR - TCR

    if ({exists Ex_ch20TCRNMDAlongrange})
        return
    end

    create  synchan  Ex_ch20TCRNMDAlongrange

        setfield     Ex_ch20TCRNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch20TCRNMDAlongrange/block
        setfield         Ex_ch20TCRNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch20TCRNMDAlongrange Ex_ch20TCRNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch20TCRNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch20TCRNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch20TCRNMDAlongrange VOLTAGE Vm

end

function make_Inh_ch20nRTGABAalongrange

//GABA_A synapse for nRT - TCR

	if ({exists Inh_ch20nRTGABAalongrange})
		return
	end

	create		synchan	Inh_ch20nRTGABAalongrange
    	setfield	        Inh_ch20nRTGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 3.3e-3 } \	// sec
    tau2        { 10.0e-3 } \    // sec
	gmax		{GGABA}		// Siemens
end
