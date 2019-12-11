// genesis

// Arranging the C23FS cells in space.


// Note that these cells' positions overlap.  This doesn't cause any
// problems since we can refer to them as separate groups.

float originxmin
float originymin

// Unique number for each cell type (same as spike number)
int typenum = 15

int ydex
float placer

int i,j,istartdex
int k = 0
float randzpos

placer = {mynode}/{sqrtNnodes}


ydex = { round {placer} }


originxmin = {regionoffsetx}+({mynode}-{ydex}*sqrtNnodes)*C23FS_NX*C23FS_SEPX


originymin = {regionoffsety}+{ydex}*C23FS_NY*C23FS_SEPY


create neutral /C23FSnet

// Random orientation
float randrotation
addfield /C23FS rotation

if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
     create asc_file /Vmwrite{typenum}
     setfield /Vmwrite{typenum} filename ./data-latest/membrane.celltype{typenum}.{myzeropadnode} flush 1 leave_open 1 append 0 float_format %0.9g
end

if ({columntype == 0})

     for (j = 0; j < C23FS_NY; j = j+1)
          for (i = 0; i < C23FS_NX; i = i+1)

               int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{C23FS_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{C23FS_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
          randseed {newrandseed}
               randzpos = { rand 1602e-6 2871e-6 }

               copy /C23FS /C23FSnet/C23FS[{k}]
               position /C23FSnet/C23FS[{k}] \
                 {originxmin + C23FS_SEPX*i} {originymin + C23FS_SEPY*j} {randzpos}
               if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
                    addmsg /C23FSnet/C23FS[{k}]/soma /Vmwrite{typenum} SAVE Vm
               end

               k=k+1

          end
     end

end

if ({columntype == 1})


     for (j = 0; j < C23FS_NY; j = j+1)

          istartdex = j-{trunc {j/2}}*2

          for (i = istartdex; i < C23FS_NX; i = i+2)
              
               int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{C23FS_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{C23FS_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
          randseed {newrandseed}
               randzpos = { rand 1602e-6 2871e-6 }

               copy /C23FS /C23FSnet/C23FS[{k}]
               position /C23FSnet/C23FS[{k}] \
                 {originxmin + C23FS_SEPX*i} {originymin + C23FS_SEPY*j} {randzpos}

               // Rotate about z-axis ("twirl" in GENESIS cellsheet terminology)
               if ({rotateneurons} == 1)
                   randrotation = {rand 0 6.283185308 }
                   setfield /C23FSnet/C23FS[{k}] rotation {randrotation} // save for posterity
                   rotcoord /C23FSnet/C23FS[{k}] {randrotation} -z -center {originxmin + C23FS_SEPX*i} {originymin + C23FS_SEPY*j} {randzpos}
               end

               if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
                    addmsg /C23FSnet/C23FS[{k}]/soma /Vmwrite{typenum} SAVE Vm
               end

               k=k+1


          end
     end

end
