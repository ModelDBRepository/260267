// genesis

// Arranging the P5IBd cells in space.


//float	P5IBd_SEPX = 25e-6
//float	P5IBd_SEPY = 25e-6
//float	P5IBd_NX = 5
//float	P5IBd_NY = 5

float originxmin
float originymin

// Unique number for each cell type (same as spike number)
int typenum = 9

int ydex
float placer

float randzpos
int i,j
int k = 0

placer = {mynode}/{sqrtNnodes}


ydex = { round {placer} }


originxmin = {regionoffsetx}+({mynode}-{ydex}*sqrtNnodes)*P5IBd_NX*P5IBd_SEPX


originymin = {regionoffsety}+{ydex}*P5IBd_NY*P5IBd_SEPY


create neutral /P5IBdnet

// Random orientation
float randrotation
addfield /P5IBd rotation

if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
     create asc_file /Vmwrite{typenum}
     setfield /Vmwrite{typenum} filename ./data-latest/membrane.celltype{typenum}.{myzeropadnode} flush 1 leave_open 1 append 0 float_format %0.9g
end

// CREATING THE PLANE OF P5IBd cells
//createmap /P5IBd /P5IBdnet  \
//	{P5IBd_NX} {P5IBd_NY} \
//	-delta {P5IBd_SEPX} {P5IBd_SEPY} \
//	-origin {originxmin} {originymin}

// Note that these cells' positions overlap.  This doesn't cause any
// problems since we can refer to them as separate groups.

for (j = 0; j < P5IBd_NY; j = j+1)
     for (i = 0; i < P5IBd_NX; i = i+1)

          int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{P5IBd_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{P5IBd_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
          randseed {newrandseed}
          randzpos = { rand 550e-6 1262e-6 }

          copy /P5IBd /P5IBdnet/P5IBd[{k}]
          position /P5IBdnet/P5IBd[{k}] \
            {originxmin + P5IBd_SEPX*i} {originymin + P5IBd_SEPY*j} {randzpos}

          // Rotate about z-axis ("twirl" in GENESIS cellsheet terminology)
          if ({rotateneurons} == 1)
              randrotation = {rand 0 6.283185308 }
              setfield /P5IBdnet/P5IBd[{k}] rotation {randrotation} // save for posterity
              rotcoord /P5IBdnet/P5IBd[{k}] {randrotation} -z -center {originxmin + P5IBd_SEPX*i} {originymin + P5IBd_SEPY*j} {randzpos}
          end

          if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
               addmsg /P5IBdnet/P5IBd[{k}]/soma /Vmwrite{typenum} SAVE Vm
          end

          k=k+1


     end
end
