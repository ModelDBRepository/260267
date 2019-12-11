// genesis

// Arranging the I5LTS cells in space.


float originxmin
float originymin

// Unique number for each cell type (same as spike number)
int typenum = 19

int ydex
float placer

int i,j,istartdex
int k = 0
float randzpos

placer = {mynode}/{sqrtNnodes}


ydex = { round {placer} }


originxmin = {regionoffsetx}+({mynode}-{ydex}*sqrtNnodes)*I5LTS_NX*I5LTS_SEPX


originymin = {regionoffsety}+{ydex}*I5LTS_NY*I5LTS_SEPY


create neutral /I5LTSnet

// Random orientation
float randrotation
addfield /I5LTS rotation

if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
     create asc_file /Vmwrite{typenum}
     setfield /Vmwrite{typenum} filename ./data-latest/membrane.celltype{typenum}.{myzeropadnode} flush 1 leave_open 1 append 0 float_format %0.9g
end

if ({columntype == 0})

     for (j = 0; j < I5LTS_NY; j = j+1)
          for (i = 0; i < I5LTS_NX; i = i+1)

               int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{I5LTS_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{I5LTS_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
          randseed {newrandseed}
               randzpos = { rand 550e-6 1262e-6 }

               copy /I5LTS /I5LTSnet/I5LTS[{k}]
               position /I5LTSnet/I5LTS[{k}] \
                 {originxmin + I5LTS_SEPX*i} {originymin + I5LTS_SEPY*j} {randzpos}
               if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
                    addmsg /I5LTSnet/I5LTS[{k}]/soma /Vmwrite{typenum} SAVE Vm
               end

               k=k+1

          end
     end

end

if ({columntype == 1})


     for (j = 0; j < I5LTS_NY; j = j+1)

          istartdex = {trunc {j/2}}*2-j+1

          for (i = istartdex; i < I5LTS_NX; i = i+2)
              
               int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{I5LTS_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{I5LTS_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
          randseed {newrandseed}
               randzpos = { rand 550e-6 1262e-6 }

               copy /I5LTS /I5LTSnet/I5LTS[{k}]
               position /I5LTSnet/I5LTS[{k}] \
                 {originxmin + I5LTS_SEPX*i} {originymin + I5LTS_SEPY*j} {randzpos}

               // Rotate about z-axis ("twirl" in GENESIS cellsheet terminology)
               if ({rotateneurons} == 1)
                   randrotation = {rand 0 6.283185308 }
                   setfield /I5LTSnet/I5LTS[{k}] rotation {randrotation} // save for posterity
                   rotcoord /I5LTSnet/I5LTS[{k}] {randrotation} -z -center {originxmin + I5LTS_SEPX*i} {originymin + I5LTS_SEPY*j} {randzpos}
               end

               if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
                    addmsg /I5LTSnet/I5LTS[{k}]/soma /Vmwrite{typenum} SAVE Vm
               end

               k=k+1


          end
     end

end
