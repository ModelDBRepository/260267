// genesis

// Arranging the B23FS cells in space.


// Note that these cells' positions overlap.  This doesn't cause any
// problems since we can refer to them as separate groups.

float originxmin
float originymin

// Unique number for each cell type (same as spike number)
int typenum = 5

int ydex
float placer

int i,j,istartdex
int k = 0
float randzpos

placer = {mynode}/{sqrtNnodes}


ydex = { round {placer} }


originxmin = {regionoffsetx}+({mynode}-{ydex}*sqrtNnodes)*B23FS_NX*B23FS_SEPX


originymin = {regionoffsety}+{ydex}*B23FS_NY*B23FS_SEPY


create neutral /B23FSnet

// Random orientation
float randrotation
addfield /B23FS rotation

if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
     create asc_file /Vmwrite{typenum}
     setfield /Vmwrite{typenum} filename ./data-latest/membrane.celltype{typenum}.{myzeropadnode} flush 1 leave_open 1 append 0 float_format %0.9g
end

if ({columntype == 0})

     for (j = 0; j < B23FS_NY; j = j+1)
          for (i = 0; i < B23FS_NX; i = i+1)

               randseed { {trunc {{{{originxmin}+{B23FS_SEPX}*{i}}/{SEPX}}}+1} @0@ {trunc {{{{originymin}+{B23FS_SEPY}*{i}}/{SEPY}}}+1} @0@ {k} @0@ {typenum} @ {substring {myrandseed} {{strlen {myrandseed}}-2}} }
               randzpos = { rand 1602e-6 2871e-6 }

               copy /B23FS /B23FSnet/B23FS[{k}]
               position /B23FSnet/B23FS[{k}] \
                 {originxmin + B23FS_SEPX*i} {originymin + B23FS_SEPY*j} {randzpos}
               if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
                    addmsg /B23FSnet/B23FS[{k}]/soma /Vmwrite{typenum} SAVE Vm
               end

               k=k+1

          end
     end

end

if ({columntype == 1})


     for (j = 0; j < B23FS_NY; j = j+1)

          istartdex = j-{trunc {j/2}}*2

          for (i = istartdex; i < B23FS_NX; i = i+2)

               int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{B23FS_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{B23FS_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
               randseed {newrandseed}

               // Old myrandseed substring (bad because seeds ending in same two least significant digits will yield same random seed)
               //@ {substring {myrandseed} {{strlen {myrandseed}}-2}}

               randzpos = { rand 1602e-6 2871e-6 }

               copy /B23FS /B23FSnet/B23FS[{k}]
               position /B23FSnet/B23FS[{k}] \
                 {originxmin + B23FS_SEPX*i} {originymin + B23FS_SEPY*j} {randzpos}

               // Rotate about z-axis ("twirl" in GENESIS cellsheet terminology)
               if ({rotateneurons} == 1)
                   randrotation = {rand 0 6.283185308 }
                   setfield /B23FSnet/B23FS[{k}] rotation {randrotation} // save for posterity
                   rotcoord /B23FSnet/B23FS[{k}] {randrotation} -z -center {originxmin + B23FS_SEPX*i} {originymin + B23FS_SEPY*j} {randzpos}
               end

               if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
                    addmsg /B23FSnet/B23FS[{k}]/soma /Vmwrite{typenum} SAVE Vm
               end

               k=k+1


          end
     end

end
