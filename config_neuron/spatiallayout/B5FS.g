// genesis

// Arranging the B5FS cells in space.


float originxmin
float originymin

// Unique number for each cell type (same as spike number)
int typenum = 10

int ydex
float placer

int i,j,istartdex
int k = 0
float randzpos

placer = {mynode}/{sqrtNnodes}


ydex = { round {placer} }


originxmin = {regionoffsetx}+({mynode}-{ydex}*sqrtNnodes)*B5FS_NX*B5FS_SEPX


originymin = {regionoffsety}+{ydex}*B5FS_NY*B5FS_SEPY


create neutral /B5FSnet

// Random orientation
float randrotation
addfield /B5FS rotation

if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
     create asc_file /Vmwrite{typenum}
     setfield /Vmwrite{typenum} filename ./data-latest/membrane.celltype{typenum}.{myzeropadnode} flush 1 leave_open 1 append 0 float_format %0.9g
end

if ({columntype == 0})

     for (j = 0; j < B5FS_NY; j = j+1)
          for (i = 0; i < B5FS_NX; i = i+1)

               int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{B5FS_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{B5FS_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
          randseed {newrandseed}
               randzpos = { rand 550e-6 1262e-6 }

               copy /B5FS /B5FSnet/B5FS[{k}]
               position /B5FSnet/B5FS[{k}] \
                 {originxmin + B5FS_SEPX*i} {originymin + B5FS_SEPY*j} {randzpos}
               if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
                    addmsg /B5FSnet/B5FS[{k}]/soma /Vmwrite{typenum} SAVE Vm
               end

               k=k+1

          end
     end

end

if ({columntype == 1})


     for (j = 0; j < B5FS_NY; j = j+1)

          istartdex = {trunc {j/2}}*2-j+1

          for (i = istartdex; i < B5FS_NX; i = i+2)
              
               int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{B5FS_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{B5FS_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
          randseed {newrandseed}
               randzpos = { rand 550e-6 1262e-6 }

               copy /B5FS /B5FSnet/B5FS[{k}]
               position /B5FSnet/B5FS[{k}] \
                 {originxmin + B5FS_SEPX*i} {originymin + B5FS_SEPY*j} {randzpos}

               // Rotate about z-axis ("twirl" in GENESIS cellsheet terminology)
               if ({rotateneurons} == 1)
                   randrotation = {rand 0 6.283185308 }
                   setfield /B5FSnet/B5FS[{k}] rotation {randrotation} // save for posterity
                   rotcoord /B5FSnet/B5FS[{k}] {randrotation} -z -center {originxmin + B5FS_SEPX*i} {originymin + B5FS_SEPY*j} {randzpos}
               end

               if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
                    addmsg /B5FSnet/B5FS[{k}]/soma /Vmwrite{typenum} SAVE Vm
               end

               k=k+1


          end
     end

end
