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


function make_Ex_ch2P23RSAMPAlongrange

// AMPA synapse for P23RS - P23RS

	if ({exists Ex_ch2P23RSAMPAlongrange})
		return
	end

	create		synchan	Ex_ch2P23RSAMPAlongrange
    	setfield	        Ex_ch2P23RSAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch2P23RSNMDAlongrange

// NMDA synapse for P23RS - P23RS

    if ({exists Ex_ch2P23RSNMDAlongrange})
        return
    end

    create  synchan  Ex_ch2P23RSNMDAlongrange

        setfield     Ex_ch2P23RSNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch2P23RSNMDAlongrange/block
        setfield         Ex_ch2P23RSNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch2P23RSNMDAlongrange Ex_ch2P23RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch2P23RSNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch2P23RSNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch2P23RSNMDAlongrange VOLTAGE Vm

end

function make_Inh_ch2B23FSGABAalongrange

//GABA_A synapse for B23FS - P23RS

	if ({exists Inh_ch2B23FSGABAalongrange})
		return
	end

	create		synchan	Inh_ch2B23FSGABAalongrange
    	setfield	        Inh_ch2B23FSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch2P5IBAMPAlongrange

// AMPA synapse for P5IB - P23RS

	if ({exists Ex_ch2P5IBAMPAlongrange})
		return
	end

	create		synchan	Ex_ch2P5IBAMPAlongrange
    	setfield	        Ex_ch2P5IBAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch2P5IBNMDAlongrange

// NMDA synapse for P5IB - P23RS

    if ({exists Ex_ch2P5IBNMDAlongrange})
        return
    end

    create  synchan  Ex_ch2P5IBNMDAlongrange

        setfield     Ex_ch2P5IBNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch2P5IBNMDAlongrange/block
        setfield         Ex_ch2P5IBNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch2P5IBNMDAlongrange Ex_ch2P5IBNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch2P5IBNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch2P5IBNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch2P5IBNMDAlongrange VOLTAGE Vm

end

function make_Ex_ch2P6RSAMPAlongrange

// AMPA synapse for P6RS - P23RS

	if ({exists Ex_ch2P6RSAMPAlongrange})
		return
	end

	create		synchan	Ex_ch2P6RSAMPAlongrange
    	setfield	        Ex_ch2P6RSAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch2P6RSNMDAlongrange

// NMDA synapse for P6RS - P23RS

    if ({exists Ex_ch2P6RSNMDAlongrange})
        return
    end

    create  synchan  Ex_ch2P6RSNMDAlongrange

        setfield     Ex_ch2P6RSNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch2P6RSNMDAlongrange/block
        setfield         Ex_ch2P6RSNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch2P6RSNMDAlongrange Ex_ch2P6RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch2P6RSNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch2P6RSNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch2P6RSNMDAlongrange VOLTAGE Vm

end

function make_Inh_ch2C23FSGABAalongrange

//GABA_A synapse for C23FS - P23RS

	if ({exists Inh_ch2C23FSGABAalongrange})
		return
	end

	create		synchan	Inh_ch2C23FSGABAalongrange
    	setfield	        Inh_ch2C23FSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Inh_ch2C5FSGABAalongrange

//GABA_A synapse for C5FS - P23RS

	if ({exists Inh_ch2C5FSGABAalongrange})
		return
	end

	create		synchan	Inh_ch2C5FSGABAalongrange
    	setfield	        Inh_ch2C5FSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch2ST4RSAMPAlongrange

// AMPA synapse for ST4RS - P23RS

	if ({exists Ex_ch2ST4RSAMPAlongrange})
		return
	end

	create		synchan	Ex_ch2ST4RSAMPAlongrange
    	setfield	        Ex_ch2ST4RSAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch2ST4RSNMDAlongrange

// NMDA synapse for ST4RS - P23RS

    if ({exists Ex_ch2ST4RSNMDAlongrange})
        return
    end

    create  synchan  Ex_ch2ST4RSNMDAlongrange

        setfield     Ex_ch2ST4RSNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch2ST4RSNMDAlongrange/block
        setfield         Ex_ch2ST4RSNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch2ST4RSNMDAlongrange Ex_ch2ST4RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch2ST4RSNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch2ST4RSNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch2ST4RSNMDAlongrange VOLTAGE Vm

end

function make_Inh_ch2I23LTSGABAalongrange

//GABA_A synapse for I23LTS - P23RS

	if ({exists Inh_ch2I23LTSGABAalongrange})
		return
	end

	create		synchan	Inh_ch2I23LTSGABAalongrange
    	setfield	        Inh_ch2I23LTSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 20.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Inh_ch2I5LTSGABAalongrange

//GABA_A synapse for I5LTS - P23RS

	if ({exists Inh_ch2I5LTSGABAalongrange})
		return
	end

	create		synchan	Inh_ch2I5LTSGABAalongrange
    	setfield	        Inh_ch2I5LTSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 20.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch2TCRAMPAlongrange

// AMPA synapse for TCR - P23RS

	if ({exists Ex_ch2TCRAMPAlongrange})
		return
	end

	create		synchan	Ex_ch2TCRAMPAlongrange
    	setfield	        Ex_ch2TCRAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch2TCRNMDAlongrange

// NMDA synapse for TCR - P23RS

    if ({exists Ex_ch2TCRNMDAlongrange})
        return
    end

    create  synchan  Ex_ch2TCRNMDAlongrange

        setfield     Ex_ch2TCRNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch2TCRNMDAlongrange/block
        setfield         Ex_ch2TCRNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch2TCRNMDAlongrange Ex_ch2TCRNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch2TCRNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch2TCRNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch2TCRNMDAlongrange VOLTAGE Vm

end

function make_Ex_ch2TCRAMPAlongrange

// AMPA synapse for TCR - P23RS

	if ({exists Ex_ch2TCRAMPAlongrange})
		return
	end

	create		synchan	Ex_ch2TCRAMPAlongrange
    	setfield	        Ex_ch2TCRAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch2TCRNMDAlongrange

// NMDA synapse for TCR - P23RS

    if ({exists Ex_ch2TCRNMDAlongrange})
        return
    end

    create  synchan  Ex_ch2TCRNMDAlongrange

        setfield     Ex_ch2TCRNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch2TCRNMDAlongrange/block
        setfield         Ex_ch2TCRNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch2TCRNMDAlongrange Ex_ch2TCRNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch2TCRNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch2TCRNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch2TCRNMDAlongrange VOLTAGE Vm

end

function make_Ex_ch2P23FRBAMPAlongrange

// AMPA synapse for P23FRB - P23RS

	if ({exists Ex_ch2P23FRBAMPAlongrange})
		return
	end

	create		synchan	Ex_ch2P23FRBAMPAlongrange
    	setfield	        Ex_ch2P23FRBAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch2P23FRBNMDAlongrange

// NMDA synapse for P23FRB - P23RS

    if ({exists Ex_ch2P23FRBNMDAlongrange})
        return
    end

    create  synchan  Ex_ch2P23FRBNMDAlongrange

        setfield     Ex_ch2P23FRBNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch2P23FRBNMDAlongrange/block
        setfield         Ex_ch2P23FRBNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch2P23FRBNMDAlongrange Ex_ch2P23FRBNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch2P23FRBNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch2P23FRBNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch2P23FRBNMDAlongrange VOLTAGE Vm

end

function make_Ex_ch2P5RSAMPAlongrange

// AMPA synapse for P5RS - P23RS

	if ({exists Ex_ch2P5RSAMPAlongrange})
		return
	end

	create		synchan	Ex_ch2P5RSAMPAlongrange
    	setfield	        Ex_ch2P5RSAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch2P5RSNMDAlongrange

// NMDA synapse for P5RS - P23RS

    if ({exists Ex_ch2P5RSNMDAlongrange})
        return
    end

    create  synchan  Ex_ch2P5RSNMDAlongrange

        setfield     Ex_ch2P5RSNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch2P5RSNMDAlongrange/block
        setfield         Ex_ch2P5RSNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch2P5RSNMDAlongrange Ex_ch2P5RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch2P5RSNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch2P5RSNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch2P5RSNMDAlongrange VOLTAGE Vm

end
