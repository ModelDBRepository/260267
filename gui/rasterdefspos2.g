// genesis
// rasterdefspos1.g

//make_Vmgraph P23RSa{probedex2P23RS} 1 0
//addmsg /P23RSanet/P23RSa[{probedex2P23RS}]/soma /dataP23RSa{probedex2}/VmP23RSa{probedex2} PLOT Vm *volts *red

//make_raster P23RSa{probedex2P23RS} 1 0
//addmsg /P23RSanet/P23RSa[{probedex2P23RS}]/soma/spk1 /dataP23RSa{probedex2}/spikeP23RSa{probedex2} \ 
//PLOTSCALE state *spike *red 0.01 0

addmsg /P23RSanet/P23RSa[{probedex2P23RS}]/soma/spk1 /rasterdata{probedex2}/Spike{probedex2} \ 
PLOTSCALE state *P23RSa{probedex2P23RS} *red 1.0 9.0

//make_Vmgraph B23FS{probedex2B23FS} 1 1
//addmsg /B23FSnet/B23FS[{probedex2B23FS}]/soma /dataB23FS{probedex2}/VmB23FS{probedex2} PLOT Vm *volts *blue

addmsg /B23FSnet/B23FS[{probedex2B23FS}]/soma/spk5 /rasterdata{probedex2}/Spike{probedex2} \ 
PLOTSCALE state *B23FS{probedex2B23FS} *blue 1.0 8.0

//make_Vmgraph P5IBa{probedex2P5IB} 1 2
//addmsg /P5IBanet/P5IBa[{probedex2P5IB}]/soma /dataP5IBa{probedex2}/VmP5IBa{probedex2} PLOT Vm *volts *red

addmsg /P5IBanet/P5IBa[{probedex2P5IB}]/soma/spk6 /rasterdata{probedex2}/Spike{probedex2} \ 
PLOTSCALE state *P5IBa{probedex2P5IB} *red 1.0 7.0

//make_Vmgraph B5FS{probedex2B5FS} 1 3
//addmsg /B5FSnet/B5FS[{probedex2B5FS}]/soma /dataB5FS{probedex2}/VmB5FS{probedex2} PLOT Vm *volts *blue

addmsg /B5FSnet/B5FS[{probedex2B5FS}]/soma/spk10 /rasterdata{probedex2}/Spike{probedex2} \ 
PLOTSCALE state *B5FS{probedex2B5FS} *blue 1.0 6.0

//make_Vmgraph I23LTS{probedex2I23LTS} 1 4
//addmsg /I23LTSnet/I23LTS[{probedex2I23LTS}]/soma /dataI23LTS{probedex2}/VmI23LTS{probedex2} PLOT Vm *volts *blue

addmsg /I23LTSnet/I23LTS[{probedex2I23LTS}]/soma/spk18 /rasterdata{probedex2}/Spike{probedex2} \ 
PLOTSCALE state *I23LTS{probedex2I23LTS} *blue 1.0 5.0

//make_Vmgraph P6RSa{probedex2P6RS} 2 0
//addmsg /P6RSanet/P6RSa[{probedex2P6RS}]/soma /dataP6RSa{probedex2}/VmP6RSa{probedex2} PLOT Vm *volts *red

addmsg /P6RSanet/P6RSa[{probedex2P6RS}]/soma/spk11 /rasterdata{probedex2}/Spike{probedex2} \ 
PLOTSCALE state *P6RSa{probedex2P6RS} *red 1.0 4.0

//make_Vmgraph C23FS{probedex2C23FS} 2 1
//addmsg /C23FSnet/C23FS[{probedex2C23FS}]/soma /dataC23FS{probedex2}/VmC23FS{probedex2} PLOT Vm *volts *blue

addmsg /C23FSnet/C23FS[{probedex2C23FS}]/soma/spk15 /rasterdata{probedex2}/Spike{probedex2} \ 
PLOTSCALE state *C23FS{probedex2C23FS} *blue 1.0 3.0

//make_Vmgraph C5FS{probedex2C5FS} 2 2
//addmsg /C5FSnet/C5FS[{probedex2C5FS}]/soma /dataC5FS{probedex2}/VmC5FS{probedex2} PLOT Vm *volts *blue

addmsg /C5FSnet/C5FS[{probedex2C5FS}]/soma/spk16 /rasterdata{probedex2}/Spike{probedex2} \ 
PLOTSCALE state *C5FS{probedex2C5FS} *blue 1.0 2.0

//make_Vmgraph ST4RS{probedex2ST4RS} 2 3
//addmsg /ST4RSnet/ST4RS[{probedex2ST4RS}]/soma /dataST4RS{probedex2}/VmST4RS{probedex2} PLOT Vm *volts *red

addmsg /ST4RSnet/ST4RS[{probedex2ST4RS}]/soma/spk17 /rasterdata{probedex2}/Spike{probedex2} \ 
PLOTSCALE state *ST4RS{probedex2ST4RS} *red 1.0 1.0

//make_Vmgraph I5LTS{probedex2I5LTS} 2 4
//addmsg /I5LTSnet/I5LTS[{probedex2I5LTS}]/soma /dataI5LTS{probedex2}/VmI5LTS{probedex2} PLOT Vm *volts *blue

addmsg /I5LTSnet/I5LTS[{probedex2I5LTS}]/soma/spk19 /rasterdata{probedex2}/Spike{probedex2} \ 
PLOTSCALE state *I5LTS{probedex2I5LTS} *blue 1.0 0.0

if ({thalamocortical == 1})

     //make_Vmgraph TCR {probedex2TCR} 1 5
     //addmsg /TCRnet/TCR[{probedex2TCR}]/soma /dataTCR{probedex2}/VmTCR{probedex2} PLOT Vm *volts *blue

     addmsg /TCRnet/TCR[{probedex2TCR}]/soma/spk20 /rasterdata{probedex2}/Spike{probedex2} \ 
     PLOTSCALE state *TCR{probedex2TCR} *red  1.0 -1.0

     //make_Vmgraph nRT {probedex2nRT} 1 5
     //addmsg /nRTnet/nRT[{probedex2nRT}]/soma /datanRT{probedex2}/VmnRT{probedex2} PLOT Vm *volts *blue

     addmsg /nRTnet/nRT[{probedex2nRT}]/soma/spk21 /rasterdata{probedex2}/Spike{probedex2} \ 
     PLOTSCALE state *nRT{probedex2nRT} *blue  1.0 -2.0


end

//make_Vmgraph P23FRBa{probedex2P23FRB} 1 0
//addmsg /P23FRBanet/P23FRBa[{probedex2P23FRB}]/soma /dataP23FRBa{probedex2}/VmP23FRBa{probedex2} PLOT Vm *volts *red

//make_raster P23FRBa{probedex2P23FRB} 1 0
//addmsg /P23FRBanet/P23FRBa[{probedex2P23FRB}]/soma/spk22 /dataP23FRBa{probedex2}/spikeP23FRBa{probedex2} \ 
//PLOTSCALE state *spike *red 0.01 0

addmsg /P23FRBanet/P23FRBa[{probedex2P23FRB}]/soma/spk22 /rasterdata{probedex2}/Spike{probedex2} \ 
PLOTSCALE state *P23FRBa{probedex2P23FRB} *red 1.0 -3.0

//make_Vmgraph P5RSa{probedex2P5RS} 1 0
//addmsg /P5RSanet/P5RSa[{probedex2P5RS}]/soma /dataP5RSa{probedex2}/VmP5RSa{probedex2} PLOT Vm *volts *red

//make_raster P5RSa{probedex2P5RS} 1 0
//addmsg /P5RSanet/P5RSa[{probedex2P5RS}]/soma/spk23 /dataP5RSa{probedex2}/spikeP5RSa{probedex2} \ 
//PLOTSCALE state *spike *red 0.01 0

addmsg /P5RSanet/P5RSa[{probedex2P5RS}]/soma/spk23 /rasterdata{probedex2}/Spike{probedex2} \ 
PLOTSCALE state *P5RSa{probedex2P5RS} *red 1.0 -4.0
