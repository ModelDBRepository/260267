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


function make_Ex_ch23P23RSAMPAlongrange

// AMPA synapse for P23RS - P5RS

	if ({exists Ex_ch23P23RSAMPAlongrange})
		return
	end

	create		synchan	Ex_ch23P23RSAMPAlongrange
    	setfield	        Ex_ch23P23RSAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch23P23RSNMDAlongrange

// NMDA synapse for P23RS - P5RS

    if ({exists Ex_ch23P23RSNMDAlongrange})
        return
    end

    create  synchan  Ex_ch23P23RSNMDAlongrange

        setfield     Ex_ch23P23RSNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch23P23RSNMDAlongrange/block
        setfield         Ex_ch23P23RSNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch23P23RSNMDAlongrange Ex_ch23P23RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch23P23RSNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch23P23RSNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch23P23RSNMDAlongrange VOLTAGE Vm

end


function make_Inh_ch23B23FSGABAalongrange

//GABA_A synapse for B23FS - P5RS

	if ({exists Inh_ch23B23FSGABAalongrange})
		return
	end

	create		synchan	Inh_ch23B23FSGABAalongrange
    	setfield	        Inh_ch23B23FSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch23P5IBAMPAlongrange

// AMPA synapse for P5IB - P5RS

	if ({exists Ex_ch23P5IBAMPAlongrange})
		return
	end

	create		synchan	Ex_ch23P5IBAMPAlongrange
    	setfield	        Ex_ch23P5IBAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch23P5IBNMDAlongrange

// NMDA synapse for P5IB - P5RS

    if ({exists Ex_ch23P5IBNMDAlongrange})
        return
    end

    create  synchan  Ex_ch23P5IBNMDAlongrange

        setfield     Ex_ch23P5IBNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch23P5IBNMDAlongrange/block
        setfield         Ex_ch23P5IBNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch23P5IBNMDAlongrange Ex_ch23P5IBNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch23P5IBNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch23P5IBNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch23P5IBNMDAlongrange VOLTAGE Vm

end

function make_Inh_ch23B5FSGABAalongrange

//GABA_A synapse for B5FS - P5RS

	if ({exists Inh_ch23B5FSGABAalongrange})
		return
	end

	create		synchan	Inh_ch23B5FSGABAalongrange
    	setfield	        Inh_ch23B5FSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch23P6RSAMPAlongrange

// AMPA synapse for P6RS - P5RS

	if ({exists Ex_ch23P6RSAMPAlongrange})
		return
	end

	create		synchan	Ex_ch23P6RSAMPAlongrange
    	setfield	        Ex_ch23P6RSAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch23P6RSNMDAlongrange

// NMDA synapse for P6RS - P5RS

    if ({exists Ex_ch23P6RSNMDAlongrange})
        return
    end

    create  synchan  Ex_ch23P6RSNMDAlongrange

        setfield     Ex_ch23P6RSNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch23P6RSNMDAlongrange/block
        setfield         Ex_ch23P6RSNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch23P6RSNMDAlongrange Ex_ch23P6RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch23P6RSNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch23P6RSNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch23P6RSNMDAlongrange VOLTAGE Vm

end

function make_Inh_ch23C23FSGABAalongrange

//GABA_A synapse for C23FS - P5RS

	if ({exists Inh_ch23C23FSGABAalongrange})
		return
	end

	create		synchan	Inh_ch23C23FSGABAalongrange
    	setfield	        Inh_ch23C23FSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Inh_ch23C5FSGABAalongrange

//GABA_A synapse for C5FS - P5RS

	if ({exists Inh_ch23C5FSGABAalongrange})
		return
	end

	create		synchan	Inh_ch23C5FSGABAalongrange
    	setfield	        Inh_ch23C5FSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch23ST4RSAMPAlongrange

// AMPA synapse for ST4RS - P5RS

	if ({exists Ex_ch23ST4RSAMPAlongrange})
		return
	end

	create		synchan	Ex_ch23ST4RSAMPAlongrange
    	setfield	        Ex_ch23ST4RSAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch23ST4RSNMDAlongrange

// NMDA synapse for ST4RS - P5RS

    if ({exists Ex_ch23ST4RSNMDAlongrange})
        return
    end

    create  synchan  Ex_ch23ST4RSNMDAlongrange

        setfield     Ex_ch23ST4RSNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch23ST4RSNMDAlongrange/block
        setfield         Ex_ch23ST4RSNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch23ST4RSNMDAlongrange Ex_ch23ST4RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch23ST4RSNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch23ST4RSNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch23ST4RSNMDAlongrange VOLTAGE Vm

end

function make_Inh_ch23I23LTSGABAalongrange

//GABA_A synapse for I23LTS - P5RS

	if ({exists Inh_ch23I23LTSGABAalongrange})
		return
	end

	create		synchan	Inh_ch23I23LTSGABAalongrange
    	setfield	        Inh_ch23I23LTSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 20.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Inh_ch23I5LTSGABAalongrange

//GABA_A synapse for I5LTS - P5RS

	if ({exists Inh_ch23I5LTSGABAalongrange})
		return
	end

	create		synchan	Inh_ch23I5LTSGABAalongrange
    	setfield	        Inh_ch23I5LTSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 20.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch23TCRAMPAlongrange

// AMPA synapse for TCR - P5RS

	if ({exists Ex_ch23TCRAMPAlongrange})
		return
	end

	create		synchan	Ex_ch23TCRAMPAlongrange
    	setfield	        Ex_ch23TCRAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch23TCRNMDAlongrange

// NMDA synapse for TCR - P5RS

    if ({exists Ex_ch23TCRNMDAlongrange})
        return
    end

    create  synchan  Ex_ch23TCRNMDAlongrange

        setfield     Ex_ch23TCRNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch23TCRNMDAlongrange/block
        setfield         Ex_ch23TCRNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch23TCRNMDAlongrange Ex_ch23TCRNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch23TCRNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch23TCRNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch23TCRNMDAlongrange VOLTAGE Vm

end

function make_Ex_ch23TCRAMPAlongrange

// AMPA synapse for TCR - P5RS

	if ({exists Ex_ch23TCRAMPAlongrange})
		return
	end

	create		synchan	Ex_ch23TCRAMPAlongrange
    	setfield	        Ex_ch23TCRAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch23TCRNMDAlongrange

// NMDA synapse for TCR - P5RS

    if ({exists Ex_ch23TCRNMDAlongrange})
        return
    end

    create  synchan  Ex_ch23TCRNMDAlongrange

        setfield     Ex_ch23TCRNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch23TCRNMDAlongrange/block
        setfield         Ex_ch23TCRNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch23TCRNMDAlongrange Ex_ch23TCRNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch23TCRNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch23TCRNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch23TCRNMDAlongrange VOLTAGE Vm

end

function make_Ex_ch23P23FRBAMPAlongrange

// AMPA synapse for P23FRB - P5RS

	if ({exists Ex_ch23P23FRBAMPAlongrange})
		return
	end

	create		synchan	Ex_ch23P23FRBAMPAlongrange
    	setfield	        Ex_ch23P23FRBAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch23P23FRBNMDAlongrange

// NMDA synapse for P23FRB - P5RS

    if ({exists Ex_ch23P23FRBNMDAlongrange})
        return
    end

    create  synchan  Ex_ch23P23FRBNMDAlongrange

        setfield     Ex_ch23P23FRBNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch23P23FRBNMDAlongrange/block
        setfield         Ex_ch23P23FRBNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch23P23FRBNMDAlongrange Ex_ch23P23FRBNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch23P23FRBNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch23P23FRBNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch23P23FRBNMDAlongrange VOLTAGE Vm

end

function make_Ex_ch23P5RSAMPAlongrange

// AMPA synapse for P5RS - P5RS

	if ({exists Ex_ch23P5RSAMPAlongrange})
		return
	end

	create		synchan	Ex_ch23P5RSAMPAlongrange
    	setfield	        Ex_ch23P5RSAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch23P5RSNMDAlongrange

// NMDA synapse for P5RS - P5RS

    if ({exists Ex_ch23P5RSNMDAlongrange})
        return
    end

    create  synchan  Ex_ch23P5RSNMDAlongrange

        setfield     Ex_ch23P5RSNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch23P5RSNMDAlongrange/block
        setfield         Ex_ch23P5RSNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch23P5RSNMDAlongrange Ex_ch23P5RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch23P5RSNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch23P5RSNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch23P5RSNMDAlongrange VOLTAGE Vm

end
