// genesis

// Arranging the P5IBc cells in space.


//float	P5IBc_SEPX = 25e-6
//float	P5IBc_SEPY = 25e-6
//float	P5IBc_NX = 5
//float	P5IBc_NY = 5

float originxmin
float originymin

// Unique number for each cell type (same as spike number)
int typenum = 8

int ydex
float placer

float randzpos
int i,j
int k = 0

placer = {mynode}/{sqrtNnodes}


ydex = { round {placer} }


originxmin = {regionoffsetx}+({mynode}-{ydex}*sqrtNnodes)*P5IBc_NX*P5IBc_SEPX


originymin = {regionoffsety}+{ydex}*P5IBc_NY*P5IBc_SEPY


create neutral /P5IBcnet

// Random orientation
float randrotation
addfield /P5IBc rotation

if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
     create asc_file /Vmwrite{typenum}
     setfield /Vmwrite{typenum} filename ./data-latest/membrane.celltype{typenum}.{myzeropadnode} flush 1 leave_open 1 append 0 float_format %0.9g
end

// CREATING THE PLANE OF P5IBc cells
//createmap /P5IBc /P5IBcnet  \
//	{P5IBc_NX} {P5IBc_NY} \
//	-delta {P5IBc_SEPX} {P5IBc_SEPY} \
//	-origin {originxmin} {originymin}

// Note that these cells' positions overlap.  This doesn't cause any
// problems since we can refer to them as separate groups.

for (j = 0; j < P5IBc_NY; j = j+1)
     for (i = 0; i < P5IBc_NX; i = i+1)

          int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{P5IBc_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{P5IBc_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
          randseed {newrandseed}
          randzpos = { rand 550e-6 1262e-6 }

          copy /P5IBc /P5IBcnet/P5IBc[{k}]
          position /P5IBcnet/P5IBc[{k}] \
            {originxmin + P5IBc_SEPX*i} {originymin + P5IBc_SEPY*j} {randzpos}

          // Rotate about z-axis ("twirl" in GENESIS cellsheet terminology)
          if ({rotateneurons} == 1)
              randrotation = {rand 0 6.283185308 }
              setfield /P5IBcnet/P5IBc[{k}] rotation {randrotation} // save for posterity
              rotcoord /P5IBcnet/P5IBc[{k}] {randrotation} -z -center {originxmin + P5IBc_SEPX*i} {originymin + P5IBc_SEPY*j} {randzpos}
          end

          if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
               addmsg /P5IBcnet/P5IBc[{k}]/soma /Vmwrite{typenum} SAVE Vm
          end

          k=k+1


     end
end
