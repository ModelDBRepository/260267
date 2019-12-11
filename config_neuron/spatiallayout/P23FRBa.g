// genesis

// Arranging the P23FRBa cells in space.


//float	P23FRBa_SEPX = 25e-6
//float	P23FRBa_SEPY = 25e-6
//float	P23FRBa_NX = 5
//float	P23FRBa_NY = 5

float originxmin
float originymin

// Unique number for each cell type (same as spike number)
int typenum = 22

int ydex
float placer

float randzpos
int i,j
int k = 0

placer = {mynode}/{sqrtNnodes}


ydex = { round {placer} }


originxmin = {regionoffsetx}+({mynode}-{ydex}*sqrtNnodes)*P23FRBa_NX*P23FRBa_SEPX


originymin = {regionoffsety}+{ydex}*P23FRBa_NY*P23FRBa_SEPY


create neutral /P23FRBanet

// Random orientation
float randrotation
addfield /P23FRBa rotation

if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
     create asc_file /Vmwrite{typenum}
     setfield /Vmwrite{typenum} filename ./data-latest/membrane.celltype{typenum}.{myzeropadnode} flush 1 leave_open 1 append 0 float_format %0.9g
end

// CREATING THE PLANE OF P23FRBa cells
//createmap /P23FRBa /P23FRBanet  \
//	{P23FRBa_NX} {P23FRBa_NY} \
//	-delta {P23FRBa_SEPX} {P23FRBa_SEPY} \
//	-origin {originxmin} {originymin}

// Note that these cells' positions overlap.  This doesn't cause any
// problems since we can refer to them as separate groups.

for (j = 0; j < P23FRBa_NY; j = j+1)
     for (i = 0; i < P23FRBa_NX; i = i+1)

          int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{P23FRBa_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{P23FRBa_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
          randseed {newrandseed}
          randzpos = { rand 1602e-6 2871e-6 }

          copy /P23FRBa /P23FRBanet/P23FRBa[{k}]
          position /P23FRBanet/P23FRBa[{k}] \
            {originxmin + P23FRBa_SEPX*i} {originymin + P23FRBa_SEPY*j} {randzpos}

          // Rotate about z-axis ("twirl" in GENESIS cellsheet terminology)
          if ({rotateneurons} == 1)
              randrotation = { rand 0 6.283185308 }
              setfield /P23FRBanet/P23FRBa[{k}] rotation {randrotation} // save for posterity
              rotcoord /P23FRBanet/P23FRBa[{k}] {randrotation} -z -center {originxmin + P23FRBa_SEPX*i} {originymin + P23FRBa_SEPY*j} {randzpos}
          end

          if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
               addmsg /P23FRBanet/P23FRBa[{k}]/soma /Vmwrite{typenum} SAVE Vm
          end

          k=k+1


     end
end
