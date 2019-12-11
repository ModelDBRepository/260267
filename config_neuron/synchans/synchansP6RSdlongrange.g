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


function make_Ex_ch14P23RSAMPAlongrange

// AMPA synapse for P23RS - P6RS

	if ({exists Ex_ch14P23RSAMPAlongrange})
		return
	end

	create		synchan	Ex_ch14P23RSAMPAlongrange
    	setfield	        Ex_ch14P23RSAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch14P23RSNMDAlongrange

// NMDA synapse for P23RS - P6RS

    if ({exists Ex_ch14P23RSNMDAlongrange})
        return
    end

    create  synchan  Ex_ch14P23RSNMDAlongrange

        setfield     Ex_ch14P23RSNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch14P23RSNMDAlongrange/block
        setfield         Ex_ch14P23RSNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch14P23RSNMDAlongrange Ex_ch14P23RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch14P23RSNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch14P23RSNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch14P23RSNMDAlongrange VOLTAGE Vm

end

function make_Ex_ch14P5IBAMPAlongrange

// AMPA synapse for P5IB - P6RS

	if ({exists Ex_ch14P5IBAMPAlongrange})
		return
	end

	create		synchan	Ex_ch14P5IBAMPAlongrange
    	setfield	        Ex_ch14P5IBAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch14P5IBNMDAlongrange

// NMDA synapse for P5IB - P6RS

    if ({exists Ex_ch14P5IBNMDAlongrange})
        return
    end

    create  synchan  Ex_ch14P5IBNMDAlongrange

        setfield     Ex_ch14P5IBNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch14P5IBNMDAlongrange/block
        setfield         Ex_ch14P5IBNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch14P5IBNMDAlongrange Ex_ch14P5IBNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch14P5IBNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch14P5IBNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch14P5IBNMDAlongrange VOLTAGE Vm

end

function make_Inh_ch14B5FSGABAalongrange

//GABA_A synapse for B5FS - P6RS

	if ({exists Inh_ch14B5FSGABAalongrange})
		return
	end

	create		synchan	Inh_ch14B5FSGABAalongrange
    	setfield	        Inh_ch14B5FSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch14P6RSAMPAlongrange

// AMPA synapse for P6RS - P6RS

	if ({exists Ex_ch14P6RSAMPAlongrange})
		return
	end

	create		synchan	Ex_ch14P6RSAMPAlongrange
    	setfield	        Ex_ch14P6RSAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch14P6RSNMDAlongrange

// NMDA synapse for P6RS - P6RS

    if ({exists Ex_ch14P6RSNMDAlongrange})
        return
    end

    create  synchan  Ex_ch14P6RSNMDAlongrange

        setfield     Ex_ch14P6RSNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch14P6RSNMDAlongrange/block
        setfield         Ex_ch14P6RSNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch14P6RSNMDAlongrange Ex_ch14P6RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch14P6RSNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch14P6RSNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch14P6RSNMDAlongrange VOLTAGE Vm

end

function make_Inh_ch14C23FSGABAalongrange

//GABA_A synapse for C23FS - P6RS

	if ({exists Inh_ch14C23FSGABAalongrange})
		return
	end

	create		synchan	Inh_ch14C23FSGABAalongrange
    	setfield	        Inh_ch14C23FSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Inh_ch14C5FSGABAalongrange

//GABA_A synapse for C5FS - P6RS

	if ({exists Inh_ch14C5FSGABAalongrange})
		return
	end

	create		synchan	Inh_ch14C5FSGABAalongrange
    	setfield	        Inh_ch14C5FSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 6.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch14ST4RSAMPAlongrange

// AMPA synapse for ST4RS - P6RS

	if ({exists Ex_ch14ST4RSAMPAlongrange})
		return
	end

	create		synchan	Ex_ch14ST4RSAMPAlongrange
    	setfield	        Ex_ch14ST4RSAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch14ST4RSNMDAlongrange

// NMDA synapse for ST4RS - P6RS

    if ({exists Ex_ch14ST4RSNMDAlongrange})
        return
    end

    create  synchan  Ex_ch14ST4RSNMDAlongrange

        setfield     Ex_ch14ST4RSNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch14ST4RSNMDAlongrange/block
        setfield         Ex_ch14ST4RSNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch14ST4RSNMDAlongrange Ex_ch14ST4RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch14ST4RSNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch14ST4RSNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch14ST4RSNMDAlongrange VOLTAGE Vm

end

function make_Inh_ch14I23LTSGABAalongrange

//GABA_A synapse for I23LTS - P6RS

	if ({exists Inh_ch14I23LTSGABAalongrange})
		return
	end

	create		synchan	Inh_ch14I23LTSGABAalongrange
    	setfield	        Inh_ch14I23LTSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 20.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Inh_ch14I5LTSGABAalongrange

//GABA_A synapse for I5LTS - P6RS

	if ({exists Inh_ch14I5LTSGABAalongrange})
		return
	end

	create		synchan	Inh_ch14I5LTSGABAalongrange
    	setfield	        Inh_ch14I5LTSGABAalongrange \
	Ek			{ EGABA } \
	tau1		{ 20.0e-3 } \	// sec
    tau2        { 1.0e-12 } \    // sec
	gmax		{GGABA}		// Siemens
end

function make_Ex_ch14TCRAMPAlongrange

// AMPA synapse for TCR - P6RS

	if ({exists Ex_ch14TCRAMPAlongrange})
		return
	end

	create		synchan	Ex_ch14TCRAMPAlongrange
    	setfield	        Ex_ch14TCRAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch14TCRNMDAlongrange

// NMDA synapse for TCR - P6RS

    if ({exists Ex_ch14TCRNMDAlongrange})
        return
    end

    create  synchan  Ex_ch14TCRNMDAlongrange

        setfield     Ex_ch14TCRNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch14TCRNMDAlongrange/block
        setfield         Ex_ch14TCRNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch14TCRNMDAlongrange Ex_ch14TCRNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch14TCRNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch14TCRNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch14TCRNMDAlongrange VOLTAGE Vm

end

function make_Ex_ch14TCRAMPAlongrange

// AMPA synapse for TCR - P6RS

	if ({exists Ex_ch14TCRAMPAlongrange})
		return
	end

	create		synchan	Ex_ch14TCRAMPAlongrange
    	setfield	        Ex_ch14TCRAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch14TCRNMDAlongrange

// NMDA synapse for TCR - P6RS

    if ({exists Ex_ch14TCRNMDAlongrange})
        return
    end

    create  synchan  Ex_ch14TCRNMDAlongrange

        setfield     Ex_ch14TCRNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch14TCRNMDAlongrange/block
        setfield         Ex_ch14TCRNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch14TCRNMDAlongrange Ex_ch14TCRNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch14TCRNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch14TCRNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch14TCRNMDAlongrange VOLTAGE Vm

end

function make_Ex_ch14P23FRBAMPAlongrange

// AMPA synapse for P23FRB - P6RS

	if ({exists Ex_ch14P23FRBAMPAlongrange})
		return
	end

	create		synchan	Ex_ch14P23FRBAMPAlongrange
    	setfield	        Ex_ch14P23FRBAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch14P23FRBNMDAlongrange

// NMDA synapse for P23FRB - P6RS

    if ({exists Ex_ch14P23FRBNMDAlongrange})
        return
    end

    create  synchan  Ex_ch14P23FRBNMDAlongrange

        setfield     Ex_ch14P23FRBNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch14P23FRBNMDAlongrange/block
        setfield         Ex_ch14P23FRBNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch14P23FRBNMDAlongrange Ex_ch14P23FRBNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch14P23FRBNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch14P23FRBNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch14P23FRBNMDAlongrange VOLTAGE Vm

end

function make_Ex_ch14P5RSAMPAlongrange

// AMPA synapse for P5RS - P6RS

	if ({exists Ex_ch14P5RSAMPAlongrange})
		return
	end

	create		synchan	Ex_ch14P5RSAMPAlongrange
    	setfield	        Ex_ch14P5RSAMPAlongrange \
		Ek			{EGlu} \
		tau1		{ 2.0e-3 } \	// sec
		tau2		{ 2.0e-3 } \ 	// sec
		gmax		{GGlu} // Siemens
end

function make_Ex_ch14P5RSNMDAlongrange

// NMDA synapse for P5RS - P6RS

    if ({exists Ex_ch14P5RSNMDAlongrange})
        return
    end

    create  synchan  Ex_ch14P5RSNMDAlongrange

        setfield     Ex_ch14P5RSNMDAlongrange     \
        Ek           {EGlu}         \
        tau2         { 0.67e-3 }    \ // sec
        tau1         { 130.0e-3 }   \ // sec
        gmax         {GGlu}           // Siemens

    create Mg_block Ex_ch14P5RSNMDAlongrange/block
        setfield         Ex_ch14P5RSNMDAlongrange/block \
        CMg              {CMg}            \
        KMg_A            {1.0/eta}        \
        KMg_B            {1.0/gamma}      

    addmsg Ex_ch14P5RSNMDAlongrange Ex_ch14P5RSNMDA/block CHANNEL Gk Ek

    addmsg Ex_ch14P5RSNMDAlongrange/block . CHANNEL Gk Ek

    addmsg . Ex_ch14P5RSNMDAlongrange/block VOLTAGE Vm

    // Even though we don't use the channel current, CHECK expects this message.

    // addmsg . Ex_ch14P5RSNMDAlongrange VOLTAGE Vm

end
