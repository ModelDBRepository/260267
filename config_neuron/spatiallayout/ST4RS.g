// genesis

// Arranging the ST4RS cells in space.


//float	ST4RS_SEPX = 25e-6
//float	ST4RS_SEPY = 25e-6
//float	ST4RS_NX = 5
//float	ST4RS_NY = 5

float originxmin
float originymin

// Unique number for each cell type (same as spike number)
int typenum = 17

int ydex
float placer

float randzpos
int i,j
int k = 0

placer = {mynode}/{sqrtNnodes}


ydex = { round {placer} }


originxmin = {regionoffsetx}+({mynode}-{ydex}*sqrtNnodes)*ST4RS_NX*ST4RS_SEPX


originymin = {regionoffsety}+{ydex}*ST4RS_NY*ST4RS_SEPY


create neutral /ST4RSnet

// Random orientation
float randrotation
addfield /ST4RS rotation

if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
     create asc_file /Vmwrite{typenum}
     setfield /Vmwrite{typenum} filename ./data-latest/membrane.celltype{typenum}.{myzeropadnode} flush 1 leave_open 1 append 0 float_format %0.9g
end

// CREATING THE PLANE OF ST4RS cells
//createmap /ST4RS /ST4RSnet  \
//	{ST4RS_NX} {ST4RS_NY} \
//	-delta {ST4RS_SEPX} {ST4RS_SEPY} \
//	-origin {originxmin} {originymin}

// Note that these cells' positions overlap.  This doesn't cause any
// problems since we can refer to them as separate groups.

for (j = 0; j < ST4RS_NY; j = j+1)
     for (i = 0; i < ST4RS_NX; i = i+1)

          int newrandseed = {{ {typenum} @0@ {trunc {{{originxmin}+{ST4RS_SEPX}*{i}}/{SEPX}}} @0@ {trunc {{{originymin}+{ST4RS_SEPY}*{j}}/{SEPY}}} } + {myrandseed}}
          randseed {newrandseed}
          randzpos = { rand 1262e-6 1602e-6 }

          copy /ST4RS /ST4RSnet/ST4RS[{k}]
          position /ST4RSnet/ST4RS[{k}] \
            {originxmin + ST4RS_SEPX*i} {originymin + ST4RS_SEPY*j} {randzpos}

          // Rotate about z-axis ("twirl" in GENESIS cellsheet terminology)
          if ({rotateneurons} == 1)
              randrotation = {rand 0 6.283185308 }
              setfield /ST4RSnet/ST4RS[{k}] rotation {randrotation} // save for posterity
              rotcoord /ST4RSnet/ST4RS[{k}] {randrotation} -z -center {originxmin + ST4RS_SEPX*i} {originymin + ST4RS_SEPY*j} {randzpos}
          end

          if ({{{output} == 1} & {{membranepotentialoutput} == 1}})
               addmsg /ST4RSnet/ST4RS[{k}]/soma /Vmwrite{typenum} SAVE Vm
          end

          k=k+1


     end
end
