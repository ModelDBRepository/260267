// netparams.g - defining Network cell spacings and numbers

// ayu: General (non-neuron type specific) configuration has been moved to
// Neocortex.g

//float SEPX = 25e-6
//float SEPY = 25e-6

// If this is set to an odd number, some cell types with reduced count
// proportions (i.e. everything except P23RS[abcd]) can end up with slightly
// uneven numbers compared to each other. For example, at 5x5 B23FS will end up
// with 13 in each minicolumn, and B5FS ends up with 12. To be more precise,
// this will happen if N[XY] is not evenly divisible by 2 and 4.
//float NX = 4
//float NY = 4

float	P23RSa_SEPX = SEPX
float	P23RSa_SEPY = SEPY
float	P23RSa_NX = NX
float	P23RSa_NY = NY

float	P23RSb_SEPX = SEPX
float	P23RSb_SEPY = SEPY
float	P23RSb_NX = NX
float	P23RSb_NY = NY

float	P23RSc_SEPX = SEPX
float	P23RSc_SEPY = SEPY
float	P23RSc_NX = NX
float	P23RSc_NY = NY

float	P23RSd_SEPX = SEPX
float	P23RSd_SEPY = SEPY
float	P23RSd_NX = NX
float	P23RSd_NY = NY

float	B23FS_SEPX = SEPX
float	B23FS_SEPY = SEPY
float	B23FS_NX = NX
float	B23FS_NY = NY

float	P5IBa_SEPX = SEPX
float	P5IBa_SEPY = SEPY
float	P5IBa_NX = NX
float	P5IBa_NY = NY

float	P5IBb_SEPX = SEPX
float	P5IBb_SEPY = SEPY
float	P5IBb_NX = NX
float	P5IBb_NY = NY

float	P5IBc_SEPX = SEPX
float	P5IBc_SEPY = SEPY
float	P5IBc_NX = NX
float	P5IBc_NY = NY

float	P5IBd_SEPX = SEPX
float	P5IBd_SEPY = SEPY
float	P5IBd_NX = NX
float	P5IBd_NY = NY

float	B5FS_SEPX = SEPX
float	B5FS_SEPY = SEPY
float	B5FS_NX = NX
float	B5FS_NY = NY

float	P6RSa_SEPX = SEPX
float	P6RSa_SEPY = SEPY
float	P6RSa_NX = NX
float	P6RSa_NY = NY

float	P6RSb_SEPX = SEPX
float	P6RSb_SEPY = SEPY
float	P6RSb_NX = NX
float	P6RSb_NY = NY

float	P6RSc_SEPX = SEPX
float	P6RSc_SEPY = SEPY
float	P6RSc_NX = NX
float	P6RSc_NY = NY

float	P6RSd_SEPX = SEPX
float	P6RSd_SEPY = SEPY
float	P6RSd_NX = NX
float	P6RSd_NY = NY

float	C23FS_SEPX = SEPX
float	C23FS_SEPY = SEPY
float	C23FS_NX = NX
float	C23FS_NY = NY

float	C5FS_SEPX = SEPX
float	C5FS_SEPY = SEPY
float	C5FS_NX = NX
float	C5FS_NY = NY

float	ST4RS_SEPX = SEPX
float	ST4RS_SEPY = SEPY
float	ST4RS_NX = NX
float	ST4RS_NY = NY

float	I23LTS_SEPX = SEPX
float	I23LTS_SEPY = SEPY
float	I23LTS_NX = NX
float	I23LTS_NY = NY

float	I5LTS_SEPX = SEPX
float	I5LTS_SEPY = SEPY
float	I5LTS_NX = NX
float	I5LTS_NY = NY

float	TCR_SEPX = SEPX
float	TCR_SEPY = SEPY
float	TCR_NX = NX
float	TCR_NY = NY

float	nRT_SEPX = SEPX
float	nRT_SEPY = SEPY
float	nRT_NX = NX
float	nRT_NY = NY

if ({columntype == 0 })

     float	P23FRBa_SEPX = SEPX
     float	P23FRBa_SEPY = SEPY
     float	P23FRBa_NX = NX
     float	P23FRBa_NY = NY

end

if ({columntype == 1 })

     float	P23FRBa_SEPX = {SEPX}*2
     float	P23FRBa_SEPY = {SEPY}*2
     float	P23FRBa_NX = {NX}/2
     float	P23FRBa_NY = {NY}/2

end

float	P5RSa_SEPX = SEPX
float	P5RSa_SEPY = SEPY
float	P5RSa_NX = NX
float	P5RSa_NY = NY
