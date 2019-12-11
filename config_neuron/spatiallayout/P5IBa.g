// genesis

// Arranging the P5IBa cells in space.


//float	P5IBa_SEPX = 25e-6
//float	P5IBa_SEPY = 25e-6
//float	P5IBa_NX = 5
//float	P5IBa_NY = 5

float originxmin
float originymin

// Unique number for each cell type (same as spike number)
int typenum = 6

int ydex
float placer

float randzpos
int i,j
int k = 0

placer = {mynode}/{sqrtNnodes}


ydex = { round {placer} }


originxmin = {regionoffsetx}+({mynode}-{ydex}*sqrtNnodes)*P5IBa_NX*P5IBa_SEPX


originymin = {regionoffsety}+{ydex}*P5IBa_NY*P5IBa_SEPY


create neutral /P5IBanet

// Random orientation
float randrotation
addfield /P5IBa rotation

if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
     create asc_file /Vmwrite{typenum}
     setfield /Vmwrite{typenum} filename ./data-latest/membrane.celltype{typenum}.{myzeropadnode} flush 1 leave_open 1 append 0 float_format %0.9g
end

// CREATING THE PLANE OF P5IBa cells
//createmap /P5IBa /P5IBanet  \
//	{P5IBa_NX} {P5IBa_NY} \
//	-delta {P5IBa_SEPX} {P5IBa_SEPY} \
//	-origin {originxmin} {originymin}

// Note that these cells' positions overlap.  This doesn't cause any
// problems since we can refer to them as separate groups.

for (j = 0; j < P5IBa_NY; j = j+1)
     for (i = 0; i < P5IBa_NX; i = i+1)

          int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{P5IBa_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{P5IBa_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
          randseed {newrandseed}
          randzpos = { rand 550e-6 1262e-6 }

          copy /P5IBa /P5IBanet/P5IBa[{k}]
          position /P5IBanet/P5IBa[{k}] \
            {originxmin + P5IBa_SEPX*i} {originymin + P5IBa_SEPY*j} {randzpos}

          // Rotate about z-axis ("twirl" in GENESIS cellsheet terminology)
          if ({rotateneurons} == 1)
              randrotation = {rand 0 6.283185308 }
              setfield /P5IBanet/P5IBa[{k}] rotation {randrotation} // save for posterity
              rotcoord /P5IBanet/P5IBa[{k}] {randrotation} -z -center {originxmin + P5IBa_SEPX*i} {originymin + P5IBa_SEPY*j} {randzpos}
          end

          if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
               addmsg /P5IBanet/P5IBa[{k}]/soma /Vmwrite{typenum} SAVE Vm
          end

          k=k+1


     end
end
