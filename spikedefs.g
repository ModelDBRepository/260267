// spikedefs.g - defining SPIKE elements for all somae

// See second half for long range spikes

ce /P23RSa/soma
make_spk1
addmsg /P23RSa/soma /P23RSa/soma/spk1 INPUT Vm
ce /

ce /P23RSb/soma
make_spk2
addmsg /P23RSb/soma /P23RSb/soma/spk2 INPUT Vm
ce /

ce /P23RSc/soma
make_spk3
addmsg /P23RSc/soma /P23RSc/soma/spk3 INPUT Vm
ce /

ce /P23RSd/soma
make_spk4
addmsg /P23RSd/soma /P23RSd/soma/spk4 INPUT Vm
ce /

ce /B23FS/soma
make_spk5
addmsg /B23FS/soma /B23FS/soma/spk5 INPUT Vm
ce /

ce /P5IBa/soma
make_spk6
addmsg /P5IBa/soma /P5IBa/soma/spk6 INPUT Vm
ce /

ce /P5IBb/soma
make_spk7
addmsg /P5IBb/soma /P5IBb/soma/spk7 INPUT Vm
ce /

ce /P5IBc/soma
make_spk8
addmsg /P5IBc/soma /P5IBc/soma/spk8 INPUT Vm
ce /

ce /P5IBd/soma
make_spk9
addmsg /P5IBd/soma /P5IBd/soma/spk9 INPUT Vm
ce /

ce /B5FS/soma
make_spk10
addmsg /B5FS/soma /B5FS/soma/spk10 INPUT Vm
ce /

ce /P6RSa/soma
make_spk11
addmsg /P6RSa/soma /P6RSa/soma/spk11 INPUT Vm
ce /

ce /P6RSb/soma
make_spk12
addmsg /P6RSb/soma /P6RSb/soma/spk12 INPUT Vm
ce /

if ({columntype == 0})

     ce /P6RSc/soma
     make_spk13
     addmsg /P6RSc/soma /P6RSc/soma/spk13 INPUT Vm
     ce /

     ce /P6RSd/soma
     make_spk14
     addmsg /P6RSd/soma /P6RSd/soma/spk14 INPUT Vm
     ce /

end

ce /C23FS/soma
make_spk15
addmsg /C23FS/soma /C23FS/soma/spk15 INPUT Vm
ce /

ce /C5FS/soma
make_spk16
addmsg /C5FS/soma /C5FS/soma/spk16 INPUT Vm
ce /

ce /ST4RS/soma
make_spk17
addmsg /ST4RS/soma /ST4RS/soma/spk17 INPUT Vm
ce /

ce /I23LTS/soma
make_spk18
addmsg /I23LTS/soma /I23LTS/soma/spk18 INPUT Vm
ce /

ce /I5LTS/soma
make_spk19
addmsg /I5LTS/soma /I5LTS/soma/spk19 INPUT Vm
ce /

if ({thalamocortical == 1})

     ce /TCR/soma
     make_spk20
     addmsg /TCR/soma /TCR/soma/spk20 INPUT Vm
     ce /

     ce /nRT/soma
     make_spk21
     addmsg /nRT/soma /nRT/soma/spk21 INPUT Vm
     ce /

end

ce /P23FRBa/soma
make_spk22
addmsg /P23FRBa/soma /P23FRBa/soma/spk22 INPUT Vm
ce /

ce /P5RSa/soma
make_spk23
addmsg /P5RSa/soma /P5RSa/soma/spk23 INPUT Vm
ce /


//////////////////////////////////////////////////
// Long range spikes
if ({Nregions>1})

    ce /P23RSa/soma
    make_spk1longrange
    addmsg /P23RSa/soma /P23RSa/soma/spk1longrange INPUT Vm
    ce /

    ce /P23RSb/soma
    make_spk2longrange
    addmsg /P23RSb/soma /P23RSb/soma/spk2longrange INPUT Vm
    ce /

    ce /P23RSc/soma
    make_spk3longrange
    addmsg /P23RSc/soma /P23RSc/soma/spk3longrange INPUT Vm
    ce /

    ce /P23RSd/soma
    make_spk4longrange
    addmsg /P23RSd/soma /P23RSd/soma/spk4longrange INPUT Vm
    ce /

    // ce /B23FS/soma
    // make_spk5longrange
    // addmsg /B23FS/soma /B23FS/soma/spk5longrange INPUT Vm
    // ce /

    ce /P5IBa/soma
    make_spk6longrange
    addmsg /P5IBa/soma /P5IBa/soma/spk6longrange INPUT Vm
    ce /

    ce /P5IBb/soma
    make_spk7longrange
    addmsg /P5IBb/soma /P5IBb/soma/spk7longrange INPUT Vm
    ce /

    ce /P5IBc/soma
    make_spk8longrange
    addmsg /P5IBc/soma /P5IBc/soma/spk8longrange INPUT Vm
    ce /

    ce /P5IBd/soma
    make_spk9longrange
    addmsg /P5IBd/soma /P5IBd/soma/spk9longrange INPUT Vm
    ce /

    // ce /B5FS/soma
    // make_spk10longrange
    // addmsg /B5FS/soma /B5FS/soma/spk10longrange INPUT Vm
    // ce /

    ce /P6RSa/soma
    make_spk11longrange
    addmsg /P6RSa/soma /P6RSa/soma/spk11longrange INPUT Vm
    ce /

    ce /P6RSb/soma
    make_spk12longrange
    addmsg /P6RSb/soma /P6RSb/soma/spk12longrange INPUT Vm
    ce /
 
// if ({columntype == 0})
// 
//      ce /P6RSc/soma
//      make_spk13longrange
//      addmsg /P6RSc/soma /P6RSc/soma/spk13longrange INPUT Vm
//      ce /
// 
//      ce /P6RSd/soma
//      make_spk14longrange
//      addmsg /P6RSd/soma /P6RSd/soma/spk14longrange INPUT Vm
//      ce /
// 
// end
// 
// ce /C23FS/soma
// make_spk15longrange
// addmsg /C23FS/soma /C23FS/soma/spk15longrange INPUT Vm
// ce /
// 
// ce /C5FS/soma
// make_spk16longrange
// addmsg /C5FS/soma /C5FS/soma/spk16longrange INPUT Vm
// ce /
// 
// ce /ST4RS/soma
// make_spk17longrange
// addmsg /ST4RS/soma /ST4RS/soma/spk17longrange INPUT Vm
// ce /
// 
// ce /I23LTS/soma
// make_spk18longrange
// addmsg /I23LTS/soma /I23LTS/soma/spk18longrange INPUT Vm
// ce /
// 
// ce /I5LTS/soma
// make_spk19longrange
// addmsg /I5LTS/soma /I5LTS/soma/spk19longrange INPUT Vm
// ce /
// 
// if ({thalamocortical == 1})
// 
//      ce /TCR/soma
//      make_spk20longrange
//      addmsg /TCR/soma /TCR/soma/spk20longrange INPUT Vm
//      ce /
// 
//      ce /nRT/soma
//      make_spk21longrange
//      addmsg /nRT/soma /nRT/soma/spk21longrange INPUT Vm
//      ce /
// 
// end

    ce /P23FRBa/soma
    make_spk22longrange
    addmsg /P23FRBa/soma /P23FRBa/soma/spk22longrange INPUT Vm
    ce /

    ce /P5RSa/soma
    make_spk23longrange
    addmsg /P5RSa/soma /P5RSa/soma/spk23longrange INPUT Vm
    ce /
end
