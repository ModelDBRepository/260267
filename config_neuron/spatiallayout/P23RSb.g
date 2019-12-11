// genesis

// Arranging the P23RSb cells in space.


//float	P23RSb_SEPX = 25e-6
//float	P23RSb_SEPY = 25e-6
//float	P23RSb_NX = 5
//float	P23RSb_NY = 5

float originxmin
float originymin

// Unique number for each cell type (same as spike number)
int typenum = 2

int ydex
float placer

float randzpos
int i,j
int k = 0

placer = {mynode}/{sqrtNnodes}


ydex = { round {placer} }


originxmin = {regionoffsetx}+({mynode}-{ydex}*sqrtNnodes)*P23RSb_NX*P23RSb_SEPX


originymin = {regionoffsety}+{ydex}*P23RSb_NY*P23RSb_SEPY


create neutral /P23RSbnet

// Random orientation
float randrotation
addfield /P23RSb rotation

if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
     create asc_file /Vmwrite{typenum}
     setfield /Vmwrite{typenum} filename ./data-latest/membrane.celltype{typenum}.{myzeropadnode} flush 1 leave_open 1 append 0 float_format %0.9g
end

// CREATING THE PLANE OF P23RSb cells
//createmap /P23RSb /P23RSbnet  \
//	{P23RSb_NX} {P23RSb_NY} \
//	-delta {P23RSb_SEPX} {P23RSb_SEPY} \
//	-origin {originxmin} {originymin}

// Note that these cells' positions overlap.  This doesn't cause any
// problems since we can refer to them as separate groups.

for (j = 0; j < P23RSb_NY; j = j+1)
     for (i = 0; i < P23RSb_NX; i = i+1)

          int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{P23RSb_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{P23RSb_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
          randseed {newrandseed}
          randzpos = { rand 1602e-6 2871e-6 }

          copy /P23RSb /P23RSbnet/P23RSb[{k}]
          position /P23RSbnet/P23RSb[{k}] \
            {originxmin + P23RSb_SEPX*i} {originymin + P23RSb_SEPY*j} {randzpos}

          // Rotate about z-axis ("twirl" in GENESIS cellsheet terminology)
          if ({rotateneurons} == 1)
              randrotation = {rand 0 6.283185308 }
              setfield /P23RSbnet/P23RSb[{k}] rotation {randrotation} // save for posterity
              rotcoord /P23RSbnet/P23RSb[{k}] {randrotation} -z -center {originxmin + P23RSb_SEPX*i} {originymin + P23RSb_SEPY*j} {randzpos}
          end

          if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
               addmsg /P23RSbnet/P23RSb[{k}]/soma /Vmwrite{typenum} SAVE Vm
          end

          k=k+1


     end
end
