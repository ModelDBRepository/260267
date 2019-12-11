// genesis
// rasterdefspos1.g

//make_Vmgraph P23RSa{probedexP23RS} 1 0
//addmsg /P23RSanet/P23RSa[{probedexP23RS}]/soma /dataP23RSa{probedex}/VmP23RSa{probedex} PLOT Vm *volts *red

//make_raster P23RSa{probedexP23RS} 1 0
//addmsg /P23RSanet/P23RSa[{probedexP23RS}]/soma/spk1 /dataP23RSa{probedex}/spikeP23RSa{probedex} \ 
//PLOTSCALE state *spike *red 0.01 0

addmsg /P23RSanet/P23RSa[{probedexP23RS}]/soma/spk1 /rasterdata{probedex}/Spike{probedex} \ 
PLOTSCALE state *P23RSa{probedexP23RS} *red 1.0 9.0

//make_Vmgraph B23FS{probedexB23FS} 1 1
//addmsg /B23FSnet/B23FS[{probedexB23FS}]/soma /dataB23FS{probedex}/VmB23FS{probedex} PLOT Vm *volts *blue

addmsg /B23FSnet/B23FS[{probedexB23FS}]/soma/spk5 /rasterdata{probedex}/Spike{probedex} \ 
PLOTSCALE state *B23FS{probedexB23FS} *blue 1.0 8.0

//make_Vmgraph P5IBa{probedexP5IB} 1 2
//addmsg /P5IBanet/P5IBa[{probedexP5IB}]/soma /dataP5IBa{probedex}/VmP5IBa{probedex} PLOT Vm *volts *red

addmsg /P5IBanet/P5IBa[{probedexP5IB}]/soma/spk6 /rasterdata{probedex}/Spike{probedex} \ 
PLOTSCALE state *P5IBa{probedexP5IB} *red 1.0 7.0

//make_Vmgraph B5FS{probedexB5FS} 1 3
//addmsg /B5FSnet/B5FS[{probedexB5FS}]/soma /dataB5FS{probedex}/VmB5FS{probedex} PLOT Vm *volts *blue

addmsg /B5FSnet/B5FS[{probedexB5FS}]/soma/spk10 /rasterdata{probedex}/Spike{probedex} \ 
PLOTSCALE state *B5FS{probedexB5FS} *blue 1.0 6.0

//make_Vmgraph I23LTS{probedexI23LTS} 1 4
//addmsg /I23LTSnet/I23LTS[{probedexI23LTS}]/soma /dataI23LTS{probedex}/VmI23LTS{probedex} PLOT Vm *volts *blue

addmsg /I23LTSnet/I23LTS[{probedexI23LTS}]/soma/spk18 /rasterdata{probedex}/Spike{probedex} \ 
PLOTSCALE state *I23LTS{probedexI23LTS} *blue 1.0 5.0

//make_Vmgraph P6RSa{probedexP6RS} 2 0
//addmsg /P6RSanet/P6RSa[{probedexP6RS}]/soma /dataP6RSa{probedex}/VmP6RSa{probedex} PLOT Vm *volts *red

addmsg /P6RSanet/P6RSa[{probedexP6RS}]/soma/spk11 /rasterdata{probedex}/Spike{probedex} \ 
PLOTSCALE state *P6RSa{probedexP6RS} *red 1.0 4.0

//make_Vmgraph C23FS{probedexC23FS} 2 1
//addmsg /C23FSnet/C23FS[{probedexC23FS}]/soma /dataC23FS{probedex}/VmC23FS{probedex} PLOT Vm *volts *blue

addmsg /C23FSnet/C23FS[{probedexC23FS}]/soma/spk15 /rasterdata{probedex}/Spike{probedex} \ 
PLOTSCALE state *C23FS{probedexC23FS} *blue 1.0 3.0

//make_Vmgraph C5FS{probedexC5FS} 2 2
//addmsg /C5FSnet/C5FS[{probedexC5FS}]/soma /dataC5FS{probedex}/VmC5FS{probedex} PLOT Vm *volts *blue

addmsg /C5FSnet/C5FS[{probedexC5FS}]/soma/spk16 /rasterdata{probedex}/Spike{probedex} \ 
PLOTSCALE state *C5FS{probedexC5FS} *blue 1.0 2.0

//make_Vmgraph ST4RS{probedexST4RS} 2 3
//addmsg /ST4RSnet/ST4RS[{probedexST4RS}]/soma /dataST4RS{probedex}/VmST4RS{probedex} PLOT Vm *volts *red

addmsg /ST4RSnet/ST4RS[{probedexST4RS}]/soma/spk17 /rasterdata{probedex}/Spike{probedex} \ 
PLOTSCALE state *ST4RS{probedexST4RS} *red 1.0 1.0

//make_Vmgraph I5LTS{probedexI5LTS} 2 4
//addmsg /I5LTSnet/I5LTS[{probedexI5LTS}]/soma /dataI5LTS{probedex}/VmI5LTS{probedex} PLOT Vm *volts *blue

addmsg /I5LTSnet/I5LTS[{probedexI5LTS}]/soma/spk19 /rasterdata{probedex}/Spike{probedex} \ 
PLOTSCALE state *I5LTS{probedexI5LTS} *blue 1.0 0.0

if ({thalamocortical == 1})

     //make_Vmgraph TCR {probedexTCR} 1 5
     //addmsg /TCRnet/TCR[{probedexTCR}]/soma /dataTCR{probedex}/VmTCR{probedex} PLOT Vm *volts *blue

     addmsg /TCRnet/TCR[{probedexTCR}]/soma/spk20 /rasterdata{probedex}/Spike{probedex} \ 
     PLOTSCALE state *TCR{probedexTCR} *red  1.0 -1.0

     //make_Vmgraph nRT {probedexnRT} 1 5
     //addmsg /nRTnet/nRT[{probedexnRT}]/soma /datanRT{probedex}/VmnRT{probedex} PLOT Vm *volts *blue

     addmsg /nRTnet/nRT[{probedexnRT}]/soma/spk21 /rasterdata{probedex}/Spike{probedex} \ 
     PLOTSCALE state *nRT{probedexnRT} *blue  1.0 -2.0


end

//make_Vmgraph P23FRBa{probedexP23FRB} 1 0
//addmsg /P23FRBanet/P23FRBa[{probedexP23FRB}]/soma /dataP23FRBa{probedex}/VmP23FRBa{probedex} PLOT Vm *volts *red

//make_raster P23FRBa{probedexP23FRB} 1 0
//addmsg /P23FRBanet/P23FRBa[{probedexP23FRB}]/soma/spk22 /dataP23FRBa{probedex}/spikeP23FRBa{probedex} \ 
//PLOTSCALE state *spike *red 0.01 0

addmsg /P23FRBanet/P23FRBa[{probedexP23FRB}]/soma/spk22 /rasterdata{probedex}/Spike{probedex} \ 
PLOTSCALE state *P23FRBa{probedexP23FRB} *red 1.0 -3.0

//make_Vmgraph P5RSa{probedexP5RS} 1 0
//addmsg /P5RSanet/P5RSa[{probedexP5RS}]/soma /dataP5RSa{probedex}/VmP5RSa{probedex} PLOT Vm *volts *red

//make_raster P5RSa{probedexP5RS} 1 0
//addmsg /P5RSanet/P5RSa[{probedexP5RS}]/soma/spk23 /dataP5RSa{probedex}/spikeP5RSa{probedex} \ 
//PLOTSCALE state *spike *red 0.01 0

addmsg /P5RSanet/P5RSa[{probedexP5RS}]/soma/spk23 /rasterdata{probedex}/Spike{probedex} \ 
PLOTSCALE state *P5RSa{probedexP5RS} *red 1.0 -4.0
