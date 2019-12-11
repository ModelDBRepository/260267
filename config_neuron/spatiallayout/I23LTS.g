// genesis

// Arranging the I23LTS cells in space.


// Note that these cells' positions overlap.  This doesn't cause any
// problems since we can refer to them as separate groups.

float originxmin
float originymin

// Unique number for each cell type (same as spike number)
int typenum = 18

int ydex
float placer

int i,j,istartdex
int k = 0
float randzpos

placer = {mynode}/{sqrtNnodes}


ydex = { round {placer} }


originxmin = {regionoffsetx}+({mynode}-{ydex}*sqrtNnodes)*I23LTS_NX*I23LTS_SEPX


originymin = {regionoffsety}+{ydex}*I23LTS_NY*I23LTS_SEPY


create neutral /I23LTSnet

// Random orientation
float randrotation
addfield /I23LTS rotation

if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
     create asc_file /Vmwrite{typenum}
     setfield /Vmwrite{typenum} filename ./data-latest/membrane.celltype{typenum}.{myzeropadnode} flush 1 leave_open 1 append 0 float_format %0.9g
end

if ({columntype == 0})

     for (j = 0; j < I23LTS_NY; j = j+1)
          for (i = 0; i < I23LTS_NX; i = i+1)

               int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{I23LTS_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{I23LTS_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
          randseed {newrandseed}
               randzpos = { rand 1602e-6 2871e-6 }

               copy /I23LTS /I23LTSnet/I23LTS[{k}]
               position /I23LTSnet/I23LTS[{k}] \
                 {originxmin + I23LTS_SEPX*i} {originymin + I23LTS_SEPY*j} {randzpos}
               if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
                    addmsg /I23LTSnet/I23LTS[{k}]/soma /Vmwrite{typenum} SAVE Vm
               end

               k=k+1

          end
     end

end

if ({columntype == 1})


     for (j = 0; j < I23LTS_NY; j = j+1)

          istartdex = j-{trunc {j/2}}*2

          for (i = istartdex; i < I23LTS_NX; i = i+2)
              
               int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{I23LTS_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{I23LTS_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
          randseed {newrandseed}
               randzpos = { rand 1602e-6 2871e-6 }

               copy /I23LTS /I23LTSnet/I23LTS[{k}]
               position /I23LTSnet/I23LTS[{k}] \
                 {originxmin + I23LTS_SEPX*i} {originymin + I23LTS_SEPY*j} {randzpos}

               // Rotate about z-axis ("twirl" in GENESIS cellsheet terminology)
               if ({rotateneurons} == 1)
                   randrotation = {rand 0 6.283185308 }
                   setfield /I23LTSnet/I23LTS[{k}] rotation {randrotation} // save for posterity
                   rotcoord /I23LTSnet/I23LTS[{k}] {randrotation} -z -center {originxmin + I23LTS_SEPX*i} {originymin + I23LTS_SEPY*j} {randzpos}
               end

               if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
                    addmsg /I23LTSnet/I23LTS[{k}]/soma /Vmwrite{typenum} SAVE Vm
               end

               k=k+1


          end
     end

end
