// genesis

// Arranging the C5FS cells in space.


float originxmin
float originymin

// Unique number for each cell type (same as spike number)
int typenum = 16

int ydex
float placer

int i,j,istartdex
int k = 0
float randzpos

placer = {mynode}/{sqrtNnodes}


ydex = { round {placer} }


originxmin = {regionoffsetx}+({mynode}-{ydex}*sqrtNnodes)*C5FS_NX*C5FS_SEPX


originymin = {regionoffsety}+{ydex}*C5FS_NY*C5FS_SEPY


create neutral /C5FSnet

// Random orientation
float randrotation
addfield /C5FS rotation

if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
     create asc_file /Vmwrite{typenum}
     setfield /Vmwrite{typenum} filename ./data-latest/membrane.celltype{typenum}.{myzeropadnode} flush 1 leave_open 1 append 0 float_format %0.9g
end

if ({columntype == 0})

     for (j = 0; j < C5FS_NY; j = j+1)
          for (i = 0; i < C5FS_NX; i = i+1)

               int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{C5FS_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{C5FS_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
          randseed {newrandseed}
               randzpos = { rand 550e-6 1262e-6 }

               copy /C5FS /C5FSnet/C5FS[{k}]
               position /C5FSnet/C5FS[{k}] \
                 {originxmin + C5FS_SEPX*i} {originymin + C5FS_SEPY*j} {randzpos}
               if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
                    addmsg /C5FSnet/C5FS[{k}]/soma /Vmwrite{typenum} SAVE Vm
               end

               k=k+1

          end
     end

end

if ({columntype == 1})


     for (j = 0; j < C5FS_NY; j = j+1)

          istartdex = {trunc {j/2}}*2-j+1

          for (i = istartdex; i < C5FS_NX; i = i+2)
              
               int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{C5FS_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{C5FS_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
          randseed {newrandseed}
               randzpos = { rand 550e-6 1262e-6 }

               copy /C5FS /C5FSnet/C5FS[{k}]
               position /C5FSnet/C5FS[{k}] \
                 {originxmin + C5FS_SEPX*i} {originymin + C5FS_SEPY*j} {randzpos}

               // Rotate about z-axis ("twirl" in GENESIS cellsheet terminology)
               if ({rotateneurons} == 1)
                   randrotation = {rand 0 6.283185308 }
                   setfield /C5FSnet/C5FS[{k}] rotation {randrotation} // save for posterity
                   rotcoord /C5FSnet/C5FS[{k}] {randrotation} -z -center {originxmin + C5FS_SEPX*i} {originymin + C5FS_SEPY*j} {randzpos}
               end

               if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
                    addmsg /C5FSnet/C5FS[{k}]/soma /Vmwrite{typenum} SAVE Vm
               end

               k=k+1


          end
     end

end
