// genesis

// Arranging the P6RSc cells in space.


//float	P6RSc_SEPX = 25e-6
//float	P6RSc_SEPY = 25e-6
//float	P6RSc_NX = 5
//float	P6RSc_NY = 5

float originxmin
float originymin

// Unique number for each cell type (same as spike number)
int typenum = 13

int ydex
float placer

float randzpos
int i,j
int k = 0

placer = {mynode}/{sqrtNnodes}


ydex = { round {placer} }


originxmin = {regionoffsetx}+({mynode}-{ydex}*sqrtNnodes)*P6RSc_NX*P6RSc_SEPX


originymin = {regionoffsety}+{ydex}*P6RSc_NY*P6RSc_SEPY


create neutral /P6RScnet

// Random orientation
float randrotation
addfield /P6RSc rotation

if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
     create asc_file /Vmwrite{typenum}
     setfield /Vmwrite{typenum} filename ./data-latest/membrane.celltype{typenum}.{myzeropadnode} flush 1 leave_open 1 append 0 float_format %0.9g
end

// CREATING THE PLANE OF P6RSc cells
//createmap /P6RSc /P6RScnet  \
//	{P6RSc_NX} {P6RSc_NY} \
//	-delta {P6RSc_SEPX} {P6RSc_SEPY} \
//	-origin {originxmin} {originymin}

// Note that these cells' positions overlap.  This doesn't cause any
// problems since we can refer to them as separate groups.

for (j = 0; j < P6RSc_NY; j = j+1)
     for (i = 0; i < P6RSc_NX; i = i+1)

          int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{P6RSc_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{P6RSc_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
          randseed {newrandseed}
          randzpos = { rand 0 550e-6 }

          copy /P6RSc /P6RScnet/P6RSc[{k}]
          position /P6RScnet/P6RSc[{k}] \
            {originxmin + P6RSc_SEPX*i} {originymin + P6RSc_SEPY*j} {randzpos}

          // Rotate about z-axis ("twirl" in GENESIS cellsheet terminology)
          if ({rotateneurons} == 1)
              randrotation = {rand 0 6.283185308 }
              setfield /P6RScnet/P6RSc[{k}] rotation {randrotation} // save for posterity
              rotcoord /P6RScnet/P6RSc[{k}] {randrotation} -z -center {originxmin + P6RSc_SEPX*i} {originymin + P6RSc_SEPY*j} {randzpos}
          end

          if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
               addmsg /P6RScnet/P6RSc[{k}]/soma /Vmwrite{typenum} SAVE Vm
          end

          k=k+1


     end
end
