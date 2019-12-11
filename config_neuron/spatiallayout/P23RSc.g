// genesis

// Arranging the P23RSc cells in space.


//float	P23RSc_SEPX = 25e-6
//float	P23RSc_SEPY = 25e-6
//float	P23RSc_NX = 5
//float	P23RSc_NY = 5

float originxmin
float originymin

// Unique number for each cell type (same as spike number)
int typenum = 3

int ydex
float placer

float randzpos
int i,j
int k = 0

placer = {mynode}/{sqrtNnodes}


ydex = { round {placer} }


originxmin = {regionoffsetx}+({mynode}-{ydex}*sqrtNnodes)*P23RSc_NX*P23RSc_SEPX


originymin = {regionoffsety}+{ydex}*P23RSc_NY*P23RSc_SEPY


create neutral /P23RScnet

// Random orientation
float randrotation
addfield /P23RSc rotation

if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
     create asc_file /Vmwrite{typenum}
     setfield /Vmwrite{typenum} filename ./data-latest/membrane.celltype{typenum}.{myzeropadnode} flush 1 leave_open 1 append 0 float_format %0.9g
end

// CREATING THE PLANE OF P23RSc cells
//createmap /P23RSc /P23RScnet  \
//	{P23RSc_NX} {P23RSc_NY} \
//	-delta {P23RSc_SEPX} {P23RSc_SEPY} \
//	-origin {originxmin} {originymin}

// Note that these cells' positions overlap.  This doesn't cause any
// problems since we can refer to them as separate groups.

for (j = 0; j < P23RSc_NY; j = j+1)
     for (i = 0; i < P23RSc_NX; i = i+1)

          int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{P23RSc_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{P23RSc_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
          randseed {newrandseed}
          randzpos = { rand 1602e-6 2871e-6 }

          copy /P23RSc /P23RScnet/P23RSc[{k}]
          position /P23RScnet/P23RSc[{k}] \
            {originxmin + P23RSc_SEPX*i} {originymin + P23RSc_SEPY*j} {randzpos}

          // Rotate about z-axis ("twirl" in GENESIS cellsheet terminology)
          if ({rotateneurons} == 1)
              randrotation = {rand 0 6.283185308 }
              setfield /P23RScnet/P23RSc[{k}] rotation {randrotation} // save for posterity
              rotcoord /P23RScnet/P23RSc[{k}] {randrotation} -z -center {originxmin + P23RSc_SEPX*i} {originymin + P23RSc_SEPY*j} {randzpos}
          end

          if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
               addmsg /P23RScnet/P23RSc[{k}]/soma /Vmwrite{typenum} SAVE Vm
          end

          k=k+1


     end
end
