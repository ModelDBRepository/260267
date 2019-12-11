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
float EGABA = -0.075
float SOMA_A = 1e-9
float GGlu = SOMA_A * 50 
// Actual conductance set by channel field in .p file
float GGABA = SOMA_A * 50

// CONSTANTS for NMDA Channel
float CMg = 1.5     // [Mg] in mM
float eta = 0.33    // per mM
float gamma = 60    // per Volt

//===================================================================
//                     SYNAPTIC CHANNELS   (Values guessed at)
//===================================================================

function make_Ex_ch21P6RSAMPA

// AMPA synapse for P6RS - nRT

	if ({exists Ex_ch21P6RSAMPA})
		return
	end

	create		synchan	Ex_ch21P6RSAMPA
    	setfield	        Ex_ch21P6RSAMPA \
		Ek			{EGlu} \
		tau1		{ 1.0e-3 } \	// sec
		tau2		{ 1.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch21P6RSNMDA

// NMDA synapse for P6RS - nRT

    if ({exists Ex_ch21P6RSNMDA})
        return
    end

    create  synchan  Ex_ch21P6RSNMDA

        setfield     Ex_ch21P6RSNMDA     \
        Ek           {EGlu}         \
        tau1         { 100.0e-3 }    \ // sec
        tau2         { 0.67e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch21P6RSNMDA/block
        setfield         Ex_ch21P6RSNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch21P6RSNMDA Ex_ch21P6RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch21P6RSNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch21P6RSNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch1NMDA VOLTAGE Vm

end

function make_Ex_ch21TCRAMPA

// AMPA synapse for TCR - nRT

	if ({exists Ex_ch21TCRAMPA})
		return
	end

	create		synchan	Ex_ch21TCRAMPA
    	setfield	        Ex_ch21TCRAMPA \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch21TCRNMDA

// NMDA synapse for TCR - nRT

    if ({exists Ex_ch21TCRNMDA})
        return
    end

    create  synchan  Ex_ch21TCRNMDA

        setfield     Ex_ch21TCRNMDA     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 150.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch21TCRNMDA/block
        setfield         Ex_ch21TCRNMDA/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch21TCRNMDA Ex_ch21TCRNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch21TCRNMDA/block . CHANNEL Gk Ek

    addmsg . Ex_ch21TCRNMDA/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch21TCRNMDA VOLTAGE Vm

end

function make_Inh_ch21nRTGABAa

//GABA_A synapse for nRT - nRT

	if ({exists Inh_ch21nRTGABAa})
		return
	end

	create		synchan	Inh_ch21nRTGABAa
    	setfield	        Inh_ch21nRTGABAa \
	Ek			{ EGABA } \
	tau1		{ 9.0e-3 } \	// sec
    tau2        { 44.5e-3 } \    // sec
	gmax		{GGABA}		// Siemens
end

