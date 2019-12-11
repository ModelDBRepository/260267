// genesis

// Arranging the TCR cells in space.


float originxmin
float originymin

// Unique number for each cell type (same as spike number)
int typenum = 20

int ydex
float placer

// Note that these cells' positions overlap.  This doesn't cause any
// problems since we can refer to them as separate groups.

int i,j,istartdex
int k = 0
float zposarb = -0.05125

placer = {mynode}/{sqrtNnodes}


ydex = { round {placer} }


originxmin = {regionoffsetx}+({mynode}-{ydex}*sqrtNnodes)*TCR_NX*TCR_SEPX


originymin = {regionoffsety}+{ydex}*TCR_NY*TCR_SEPY


create neutral /TCRnet

// Random orientation
float randrotation
addfield /TCR rotation

if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
     create asc_file /Vmwrite{typenum}
     setfield /Vmwrite{typenum} filename ./data-latest/membrane.celltype{typenum}.{myzeropadnode} flush 1 leave_open 1 append 0 float_format %0.9g
end

if ({columntype == 0})

     for (j = 0; j < TCR_NY; j = j+1)
          for (i = 0; i < TCR_NX; i = i+1)

               copy /TCR /TCRnet/TCR[{k}]
               position /TCRnet/TCR[{k}] \
                 {originxmin + TCR_SEPX*i} {originymin + TCR_SEPY*j} {zposarb}
               if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
                    addmsg /TCRnet/TCR[{k}]/soma /Vmwrite{typenum} SAVE Vm
               end

               k=k+1

          end
     end

end

if ({columntype == 1})


     for (j = 0; j < TCR_NY; j = j+1)

          istartdex = {trunc {j/2}}*2-j+1

          for (i = istartdex; i < TCR_NX; i = i+2)
              
               copy /TCR /TCRnet/TCR[{k}]
               position /TCRnet/TCR[{k}] \
                 {originxmin + TCR_SEPX*i} {originymin + TCR_SEPY*j} {zposarb}

               // Rotate about z-axis ("twirl" in GENESIS cellsheet terminology)
               if ({rotateneurons} == 1)
                   randrotation = {rand 0 6.283185308 }
                   setfield /TCRnet/TCR[{k}] rotation {randrotation} // save for posterity
                   rotcoord /TCRnet/TCR[{k}] {randrotation} -z -center {originxmin + TCR_SEPX*i} {originymin + TCR_SEPY*j} {zposarb}
               end

               if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
                    addmsg /TCRnet/TCR[{k}]/soma /Vmwrite{typenum} SAVE Vm
               end

               k=k+1


          end
     end

end
