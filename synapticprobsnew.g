// genesis

// synapticprobsnew.g is based on hardcoded probabilities baked into x_x
// connection files. These probabilities are different from those seen in
// synapticprobsTraub.g, and are in general much smaller.

//P23RSa spatial connection scales

// float inhibitorytargetscale = 1.0 // now defined in Neocortex.g

float P23RSdecayrate, P23RSmaxwgt, P23RSminwgt, P23RSbasewgt

P23RSdecayrate = 10000 // 1/(100e-6) m^-1
P23RSbasewgt = 1.0
P23RSminwgt = {0.0 + {excitatoryweightoffset}}
P23RSmaxwgt = {{{P23RSbasewgt}*{excitatoryweightscale}} + {excitatoryweightoffset}}

float P23RSa_P23RSa_prob = 0.02778
float P23RSa_P23RSb_prob = 0.02778
float P23RSa_P23RSc_prob = 0.02778
float P23RSa_P23RSd_prob = 0.02778
float P23RSa_B23FS_prob = {0.042*{inhibitorytargetscale}}
float P23RSa_P5IBa_prob = 0.12500
float P23RSa_P5IBb_prob = 0.12500
float P23RSa_P5IBc_prob = 0.12500
float P23RSa_P5IBd_prob = 0.12500
float P23RSa_B5FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P23RSa_P6RSa_prob = 0.12500
float P23RSa_P6RSb_prob = 0.12500
float P23RSa_P6RSc_prob = 0.12500
float P23RSa_P6RSd_prob = 0.12500
float P23RSa_C23FS_prob = {0.042*{inhibitorytargetscale}}
float P23RSa_C5FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P23RSa_ST4RS_prob = 0.042
float P23RSa_I23LTS_prob = {0.042*{inhibitorytargetscale}}
float P23RSa_I5LTS_prob = {0.042*{inhibitorytargetscaleCross}}
float P23RSa_P23FRBa_prob = 0.02778
float P23RSa_P5RSa_prob = 0.12500

//P23RSb spatial connection scales

float P23RSdecayrate, P23RSmaxwgt, P23RSminwgt, P23RSbasewgt

P23RSdecayrate = 10000 // 1/(100e-6) m^-1
P23RSbasewgt = 1.0
P23RSminwgt = {0.0 + {excitatoryweightoffset}}
P23RSmaxwgt = {{{P23RSbasewgt}*{excitatoryweightscale}} + {excitatoryweightoffset}}

float P23RSb_P23RSa_prob = 0.02778
float P23RSb_P23RSb_prob = 0.02778
float P23RSb_P23RSc_prob = 0.02778
float P23RSb_P23RSd_prob = 0.02778
float P23RSb_B23FS_prob = {0.042*{inhibitorytargetscale}}
float P23RSb_P5IBa_prob = 0.12500
float P23RSb_P5IBb_prob = 0.12500
float P23RSb_P5IBc_prob = 0.12500
float P23RSb_P5IBd_prob = 0.12500
float P23RSb_B5FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P23RSb_P6RSa_prob = 0.12500
float P23RSb_P6RSb_prob = 0.12500
float P23RSb_P6RSc_prob = 0.12500
float P23RSb_P6RSd_prob = 0.12500
float P23RSb_C23FS_prob = {0.042*{inhibitorytargetscale}}
float P23RSb_C5FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P23RSb_ST4RS_prob = 0.042
float P23RSb_I23LTS_prob = {0.042*{inhibitorytargetscale}}
float P23RSb_I5LTS_prob = {0.042*{inhibitorytargetscaleCross}}
float P23RSb_P23FRBa_prob = 0.02778
float P23RSb_P5RSa_prob = 0.12500

//P23RSc spatial connection scales

float P23RSdecayrate, P23RSmaxwgt, P23RSminwgt, P23RSbasewgt

P23RSdecayrate = 10000 // 1/(100e-6) m^-1
P23RSbasewgt = 1.0
P23RSminwgt = {0.0 + {excitatoryweightoffset}}
P23RSmaxwgt = {{{P23RSbasewgt}*{excitatoryweightscale}} + {excitatoryweightoffset}}

float P23RSc_P23RSa_prob = 0.02778
float P23RSc_P23RSb_prob = 0.02778
float P23RSc_P23RSc_prob = 0.02778
float P23RSc_P23RSd_prob = 0.02778
float P23RSc_B23FS_prob = {0.042*{inhibitorytargetscale}}
float P23RSc_P5IBa_prob = 0.12500
float P23RSc_P5IBb_prob = 0.12500
float P23RSc_P5IBc_prob = 0.12500
float P23RSc_P5IBd_prob = 0.12500
float P23RSc_B5FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P23RSc_P6RSa_prob = 0.12500
float P23RSc_P6RSb_prob = 0.12500
float P23RSc_P6RSc_prob = 0.12500
float P23RSc_P6RSd_prob = 0.12500
float P23RSc_C23FS_prob = {0.042*{inhibitorytargetscale}}
float P23RSc_C5FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P23RSc_ST4RS_prob = 0.042
float P23RSc_I23LTS_prob = {0.042*{inhibitorytargetscale}}
float P23RSc_I5LTS_prob = {0.042*{inhibitorytargetscaleCross}}
float P23RSc_P23FRBa_prob = 0.02778
float P23RSc_P5RSa_prob = 0.12500

//P23RSd spatial connection scales

float P23RSdecayrate, P23RSmaxwgt, P23RSminwgt, P23RSbasewgt

P23RSdecayrate = 10000 // 1/(100e-6) m^-1
P23RSbasewgt = 1.0
P23RSminwgt = {0.0 + {excitatoryweightoffset}}
P23RSmaxwgt = {{{P23RSbasewgt}*{excitatoryweightscale}} + {excitatoryweightoffset}}

float P23RSd_P23RSa_prob = 0.02778
float P23RSd_P23RSb_prob = 0.02778
float P23RSd_P23RSc_prob = 0.02778
float P23RSd_P23RSd_prob = 0.02778
float P23RSd_B23FS_prob = {0.042*{inhibitorytargetscale}}
float P23RSd_P5IBa_prob = 0.12500
float P23RSd_P5IBb_prob = 0.12500
float P23RSd_P5IBc_prob = 0.12500
float P23RSd_P5IBd_prob = 0.12500
float P23RSd_B5FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P23RSd_P6RSa_prob = 0.12500
float P23RSd_P6RSb_prob = 0.12500
float P23RSd_P6RSc_prob = 0.12500
float P23RSd_P6RSd_prob = 0.12500
float P23RSd_C23FS_prob = {0.042*{inhibitorytargetscale}}
float P23RSd_C5FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P23RSd_ST4RS_prob = 0.042
float P23RSd_I23LTS_prob = {0.042*{inhibitorytargetscale}}
float P23RSd_I5LTS_prob = {0.042*{inhibitorytargetscaleCross}}
float P23RSd_P23FRBa_prob = 0.02778
float P23RSd_P5RSa_prob = 0.12500

//B23FS spatial connection scales

float B23FSdecayrate, B23FSmaxwgt, B23FSminwgt, B23FSbasewgt

B23FSdecayrate = 10000 // 1/(100e-6) m^-1
B23FSbasewgt = 1.0
B23FSminwgt = {0.0 + {inhibitoryweightoffset}}
B23FSmaxwgt = {{{B23FSbasewgt}*{inhibitoryweightscale}} + {inhibitoryweightoffset}}

float B23FS_P23RSa_prob = 0.091
float B23FS_P23RSb_prob = 0.091
float B23FS_P23RSc_prob = 0.091
float B23FS_P23RSd_prob = 0.091
float B23FS_B23FS_prob = {0.042*{inhibitorytargetscale}}
float B23FS_C23FS_prob = {0.042*{inhibitorytargetscale}}
float B23FS_ST4RS_prob = 0.200
float B23FS_I23LTS_prob = {0.042*{inhibitorytargetscale}}
float B23FS_P23FRBa_prob = 0.091

//P5IBa spatial connection scales

float P5IBdecayrate, P5IBmaxwgt, P5IBminwgt, P5IBbasewgt

P5IBdecayrate = 10000 // 1/(100e-6) m^-1
P5IBbasewgt = 1.0
P5IBminwgt = {0.0 + {excitatoryweightoffset}}
P5IBmaxwgt = {{{P5IBbasewgt}*{excitatoryweightscale}} + {excitatoryweightoffset}}

float P5IBa_P23RSa_prob = 0.07692
float P5IBa_P23RSb_prob = 0.07692
float P5IBa_P23RSc_prob = 0.07692
float P5IBa_P23RSd_prob = 0.07692
float P5IBa_B23FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P5IBa_P5IBa_prob = 0.02174
float P5IBa_P5IBb_prob = 0.02174
float P5IBa_P5IBc_prob = 0.02174
float P5IBa_P5IBd_prob = 0.02174
float P5IBa_B5FS_prob = {0.042*{inhibitorytargetscale}}
float P5IBa_P6RSa_prob = 0.02326
float P5IBa_P6RSb_prob = 0.02326
float P5IBa_P6RSc_prob = 0.02326
float P5IBa_P6RSd_prob = 0.02326
float P5IBa_C23FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P5IBa_C5FS_prob = {0.042*{inhibitorytargetscale}}
float P5IBa_ST4RS_prob = 0.042
float P5IBa_I23LTS_prob = {0.042*{inhibitorytargetscaleCross}}
float P5IBa_I5LTS_prob = {0.042*{inhibitorytargetscale}}
float P5IBa_P23FRBa_prob = 0.07692
float P5IBa_P5RSa_prob = 0.02174

//P5IBb spatial connection scales

float P5IBdecayrate, P5IBmaxwgt, P5IBminwgt, P5IBbasewgt

P5IBdecayrate = 10000 // 1/(100e-6) m^-1
P5IBbasewgt = 1.0
P5IBminwgt = {0.0 + {excitatoryweightoffset}}
P5IBmaxwgt = {{{P5IBbasewgt}*{excitatoryweightscale}} + {excitatoryweightoffset}}

float P5IBb_P23RSa_prob = 0.07692
float P5IBb_P23RSb_prob = 0.07692
float P5IBb_P23RSc_prob = 0.07692
float P5IBb_P23RSd_prob = 0.07692
float P5IBb_B23FS_prob = {0.042*{inhibitorytargetscale}}
float P5IBb_P5IBa_prob = 0.02174
float P5IBb_P5IBb_prob = 0.02174
float P5IBb_P5IBc_prob = 0.02174
float P5IBb_P5IBd_prob = 0.02174
float P5IBb_B5FS_prob = {0.042*{inhibitorytargetscale}}
float P5IBb_P6RSa_prob = 0.02326
float P5IBb_P6RSb_prob = 0.02326
float P5IBb_P6RSc_prob = 0.02326
float P5IBb_P6RSd_prob = 0.02326
float P5IBb_C23FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P5IBb_C5FS_prob = {0.042*{inhibitorytargetscale}}
float P5IBb_ST4RS_prob = 0.042
float P5IBb_I23LTS_prob = {0.042*{inhibitorytargetscaleCross}}
float P5IBb_I5LTS_prob = {0.042*{inhibitorytargetscale}}
float P5IBb_P23FRBa_prob = 0.07692
float P5IBb_P5RSa_prob = 0.02174

//P5IBc spatial connection scales

float P5IBdecayrate, P5IBmaxwgt, P5IBminwgt, P5IBbasewgt

P5IBdecayrate = 10000 // 1/(100e-6) m^-1
P5IBbasewgt = 1.0
P5IBminwgt = {0.0 + {excitatoryweightoffset}}
P5IBmaxwgt = {{{P5IBbasewgt}*{excitatoryweightscale}} + {excitatoryweightoffset}}

float P5IBc_P23RSa_prob = 0.07692
float P5IBc_P23RSb_prob = 0.07692
float P5IBc_P23RSc_prob = 0.07692
float P5IBc_P23RSd_prob = 0.07692
float P5IBc_B23FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P5IBc_P5IBa_prob = 0.02174
float P5IBc_P5IBb_prob = 0.02174
float P5IBc_P5IBc_prob = 0.02174
float P5IBc_P5IBd_prob = 0.02174
float P5IBc_B5FS_prob = {0.042*{inhibitorytargetscale}}
float P5IBc_P6RSa_prob = 0.02326
float P5IBc_P6RSb_prob = 0.02326
float P5IBc_P6RSc_prob = 0.02326
float P5IBc_P6RSd_prob = 0.02326
float P5IBc_C23FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P5IBc_C5FS_prob = {0.042*{inhibitorytargetscale}}
float P5IBc_ST4RS_prob = 0.042
float P5IBc_I23LTS_prob = {0.042*{inhibitorytargetscaleCross}}
float P5IBc_I5LTS_prob = {0.042*{inhibitorytargetscale}}
float P5IBc_P23FRBa_prob = 0.07692
float P5IBc_P5RSa_prob = 0.02174

//P5IBd spatial connection scales

float P5IBdecayrate, P5IBmaxwgt, P5IBminwgt, P5IBbasewgt

P5IBdecayrate = 10000 // 1/(100e-6) m^-1
P5IBbasewgt = 1.0
P5IBminwgt = {0.0 + {excitatoryweightoffset}}
P5IBmaxwgt = {{{P5IBbasewgt}*{excitatoryweightscale}} + {excitatoryweightoffset}}

float P5IBd_P23RSa_prob = 0.07692
float P5IBd_P23RSb_prob = 0.07692
float P5IBd_P23RSc_prob = 0.07692
float P5IBd_P23RSd_prob = 0.07692
float P5IBd_B23FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P5IBd_P5IBa_prob = 0.02174
float P5IBd_P5IBb_prob = 0.02174
float P5IBd_P5IBc_prob = 0.02174
float P5IBd_P5IBd_prob = 0.02174
float P5IBd_B5FS_prob = {0.042*{inhibitorytargetscale}}
float P5IBd_P6RSa_prob = 0.02326
float P5IBd_P6RSb_prob = 0.02326
float P5IBd_P6RSc_prob = 0.02326
float P5IBd_P6RSd_prob = 0.02326
float P5IBd_C23FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P5IBd_C5FS_prob = {0.042*{inhibitorytargetscale}}
float P5IBd_ST4RS_prob = 0.042
float P5IBd_I23LTS_prob = {0.042*{inhibitorytargetscaleCross}}
float P5IBd_I5LTS_prob = {0.042*{inhibitorytargetscale}}
float P5IBd_P23FRBa_prob = 0.07692
float P5IBd_P5RSa_prob = 0.02174

//B5FS spatial connection scales

float B5FSdecayrate, B5FSmaxwgt, B5FSminwgt, B5FSbasewgt

B5FSdecayrate = 10000 // 1/(100e-6) m^-1
B5FSbasewgt = 1.0
B5FSminwgt = {0.0 + {inhibitoryweightoffset}}
B5FSmaxwgt = {{{B5FSbasewgt}*{inhibitoryweightscale}} + {inhibitoryweightoffset}}

float B5FS_P5IBa_prob = 0.12500
float B5FS_P5IBb_prob = 0.12500
float B5FS_P5IBc_prob = 0.12500
float B5FS_P5IBd_prob = 0.12500
float B5FS_B5FS_prob = {0.042*{inhibitorytargetscale}}
float B5FS_P6RSa_prob = 0.14300
float B5FS_P6RSb_prob = 0.14300
float B5FS_P6RSc_prob = 0.14300
float B5FS_P6RSd_prob = 0.14300
float B5FS_C5FS_prob = {0.042*{inhibitorytargetscale}}
float B5FS_ST4RS_prob = 0.200
float B5FS_I5LTS_prob = {0.042*{inhibitorytargetscale}}
float B5FS_P5RSa_prob = 0.12500

//P6RSa spatial connection scales

float P6RSdecayrate, P6RSmaxwgt, P6RSminwgt, P6RSbasewgt

P6RSdecayrate = 10000 // 1/(100e-6) m^-1
P6RSbasewgt = 1.0
P6RSminwgt = {0.0 + {excitatoryweightoffset}}
P6RSmaxwgt = {{{P6RSbasewgt}*{excitatoryweightscale}} + {excitatoryweightoffset}}

float P6RSa_P23RSa_prob = 0.25000
float P6RSa_P23RSb_prob = 0.25000
float P6RSa_P23RSc_prob = 0.25000
float P6RSa_P23RSd_prob = 0.25000
float P6RSa_B23FS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSa_P5IBa_prob = 0.02174
float P6RSa_P5IBb_prob = 0.02174
float P6RSa_P5IBc_prob = 0.02174
float P6RSa_P5IBd_prob = 0.02174
float P6RSa_B5FS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSa_P6RSa_prob = 0.02326
float P6RSa_P6RSb_prob = 0.02326
float P6RSa_P6RSc_prob = 0.02326
float P6RSa_P6RSd_prob = 0.02326
float P6RSa_C23FS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSa_C5FS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSa_ST4RS_prob = 0.042
float P6RSa_I23LTS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSa_I5LTS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSa_TCR_prob = 0.01111
float P6RSa_nRT_prob = 0.08333
float P6RSa_P23FRBa_prob = 0.25000
float P6RSa_P5RSa_prob = 0.02174

//P6RSb spatial connection scales

float P6RSdecayrate, P6RSmaxwgt, P6RSminwgt, P6RSbasewgt

P6RSdecayrate = 10000 // 1/(100e-6) m^-1
P6RSbasewgt = 1.0
P6RSminwgt = {0.0 + {excitatoryweightoffset}}
P6RSmaxwgt = {{{P6RSbasewgt}*{excitatoryweightscale}} + {excitatoryweightoffset}}

float P6RSb_P23RSa_prob = 0.25000
float P6RSb_P23RSb_prob = 0.25000
float P6RSb_P23RSc_prob = 0.25000
float P6RSb_P23RSd_prob = 0.25000
float P6RSb_B23FS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSb_P5IBa_prob = 0.02174
float P6RSb_P5IBb_prob = 0.02174
float P6RSb_P5IBc_prob = 0.02174
float P6RSb_P5IBd_prob = 0.02174
float P6RSb_B5FS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSb_P6RSa_prob = 0.02326
float P6RSb_P6RSb_prob = 0.02326
float P6RSb_P6RSc_prob = 0.02326
float P6RSb_P6RSd_prob = 0.02326
float P6RSb_C23FS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSb_C5FS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSb_ST4RS_prob = 0.042
float P6RSb_I23LTS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSb_I5LTS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSb_TCR_prob = 0.01111
float P6RSb_nRT_prob = 0.08333
float P6RSb_P23FRBa_prob = 0.25000
float P6RSb_P5RSa_prob = 0.02174

//P6RSc spatial connection scales

float P6RSdecayrate, P6RSmaxwgt, P6RSminwgt, P6RSbasewgt

P6RSdecayrate = 10000 // 1/(100e-6) m^-1
P6RSbasewgt = 1.0
P6RSminwgt = {0.0 + {excitatoryweightoffset}}
P6RSmaxwgt = {{{P6RSbasewgt}*{excitatoryweightscale}} + {excitatoryweightoffset}}

float P6RSc_P23RSa_prob = 0.25000
float P6RSc_P23RSb_prob = 0.25000
float P6RSc_P23RSc_prob = 0.25000
float P6RSc_P23RSd_prob = 0.25000
float P6RSc_B23FS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSc_P5IBa_prob = 0.02174
float P6RSc_P5IBb_prob = 0.02174
float P6RSc_P5IBc_prob = 0.02174
float P6RSc_P5IBd_prob = 0.02174
float P6RSc_B5FS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSc_P6RSa_prob = 0.02326
float P6RSc_P6RSb_prob = 0.02326
float P6RSc_P6RSc_prob = 0.02326
float P6RSc_P6RSd_prob = 0.02326
float P6RSc_C23FS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSc_C5FS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSc_ST4RS_prob = 0.042
float P6RSc_I23LTS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSc_I5LTS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSc_TCR_prob = 0.01111
float P6RSc_nRT_prob = 0.08333
float P6RSc_P23FRBa_prob = 0.25000
float P6RSc_P5RSa_prob = 0.02174

//P6RSd spatial connection scales

float P6RSdecayrate, P6RSmaxwgt, P6RSminwgt, P6RSbasewgt

P6RSdecayrate = 10000 // 1/(100e-6) m^-1
P6RSbasewgt = 1.0
P6RSminwgt = {0.0 + {excitatoryweightoffset}}
P6RSmaxwgt = {{{P6RSbasewgt}*{excitatoryweightscale}} + {excitatoryweightoffset}}

float P6RSd_P23RSa_prob = 0.25000
float P6RSd_P23RSb_prob = 0.25000
float P6RSd_P23RSc_prob = 0.25000
float P6RSd_P23RSd_prob = 0.25000
float P6RSd_B23FS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSd_P5IBa_prob = 0.02174
float P6RSd_P5IBb_prob = 0.02174
float P6RSd_P5IBc_prob = 0.02174
float P6RSd_P5IBd_prob = 0.02174
float P6RSd_B5FS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSd_P6RSa_prob = 0.02326
float P6RSd_P6RSb_prob = 0.02326
float P6RSd_P6RSc_prob = 0.02326
float P6RSd_P6RSd_prob = 0.02326
float P6RSd_C23FS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSd_C5FS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSd_ST4RS_prob = 0.042
float P6RSd_I23LTS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSd_I5LTS_prob = {0.042*{inhibitorytargetscale6}}
float P6RSd_TCR_prob = 0.01111
float P6RSd_nRT_prob = 0.08333
float P6RSd_P23FRBa_prob = 0.25000
float P6RSd_P5RSa_prob = 0.02174

//C23FS spatial connection scales

float C23FSdecayrate, C23FSmaxwgt, C23FSminwgt, C23FSbasewgt

C23FSdecayrate = 10000 // 1/(100e-6) m^-1
C23FSbasewgt = 1.0
C23FSminwgt = {0.0 + {inhibitoryweightoffset}}
C23FSmaxwgt = {{{C23FSbasewgt}*{inhibitoryweightscale}} + {inhibitoryweightoffset}}

float C23FS_P23RSa_prob = 1.0
float C23FS_P23RSb_prob = 1.0
float C23FS_P23RSc_prob = 1.0
float C23FS_P23RSd_prob = 1.0
float C23FS_P5IBa_prob = 1.0
float C23FS_P5IBb_prob = 1.0
float C23FS_P5IBc_prob = 1.0
float C23FS_P5IBd_prob = 1.0
float C23FS_P6RSa_prob = 1.0
float C23FS_P6RSb_prob = 1.0
float C23FS_P6RSc_prob = 1.0
float C23FS_P6RSd_prob = 1.0
float C23FS_ST4RS_prob = 1.0
float C23FS_P23FRBa_prob = 1.0
float C23FS_P5RSa_prob = 1.0

//C5FS spatial connection scales

float C5FSdecayrate, C5FSmaxwgt, C5FSminwgt, C5FSbasewgt

C5FSdecayrate = 10000 // 1/(100e-6) m^-1
C5FSbasewgt = 1.0
C5FSminwgt = {0.0 + {inhibitoryweightoffset}}
C5FSmaxwgt = {{{C5FSbasewgt}*{inhibitoryweightscale}} + {inhibitoryweightoffset}}

float C5FS_P23RSa_prob = 1.0
float C5FS_P23RSb_prob = 1.0
float C5FS_P23RSc_prob = 1.0
float C5FS_P23RSd_prob = 1.0
float C5FS_P5IBa_prob = 1.0
float C5FS_P5IBb_prob = 1.0
float C5FS_P5IBc_prob = 1.0
float C5FS_P5IBd_prob = 1.0
float C5FS_P6RSa_prob = 1.0
float C5FS_P6RSb_prob = 1.0
float C5FS_P6RSc_prob = 1.0
float C5FS_P6RSd_prob = 1.0
float C5FS_ST4RS_prob = 1.0
float C5FS_P23FRBa_prob = 1.0
float C5FS_P5RSa_prob = 1.0

//ST4RS spatial connection scales

float ST4RSdecayrate, ST4RSmaxwgt, ST4RSminwgt, ST4RSbasewgt

ST4RSdecayrate = 10000 // 1/(100e-6) m^-1
ST4RSbasewgt = 1.0
ST4RSminwgt = {0.0 + {excitatoryweightoffset}}
ST4RSmaxwgt = {{{ST4RSbasewgt}*{excitatoryweightscale}} + {excitatoryweightoffset}}

float ST4RS_P23RSa_prob = 0.04167
float ST4RS_P23RSb_prob = 0.04167
float ST4RS_P23RSc_prob = 0.04167
float ST4RS_P23RSd_prob = 0.04167
float ST4RS_B23FS_prob = {0.042*{inhibitorytargetscale}}
float ST4RS_P5IBa_prob = 0.08333
float ST4RS_P5IBb_prob = 0.08333
float ST4RS_P5IBc_prob = 0.08333
float ST4RS_P5IBd_prob = 0.08333
float ST4RS_B5FS_prob = {0.042*{inhibitorytargetscale}}
float ST4RS_P6RSa_prob = 0.200
float ST4RS_P6RSb_prob = 0.200
float ST4RS_P6RSc_prob = 0.200
float ST4RS_P6RSd_prob = 0.200
float ST4RS_C23FS_prob = {0.042*{inhibitorytargetscale}}
float ST4RS_C5FS_prob = {0.042*{inhibitorytargetscale}}
float ST4RS_ST4RS_prob = 0.042
float ST4RS_I23LTS_prob = {0.042*{inhibitorytargetscale}}
float ST4RS_I5LTS_prob = {0.042*{inhibitorytargetscale}}
float ST4RS_P23FRBa_prob = 0.04167
float ST4RS_P5RSa_prob = 0.08333

//I23LTS spatial connection scales

float I23LTSdecayrate, I23LTSmaxwgt, I23LTSminwgt, I23LTSbasewgt

I23LTSdecayrate = 10000 // 1/(100e-6) m^-1 boothe changed from 10000
I23LTSbasewgt = 1.0
I23LTSminwgt = {0.0 + {inhibitoryweightoffset}}
I23LTSmaxwgt = {{{I23LTSbasewgt}*{inhibitoryweightscale}} + {inhibitoryweightoffset}}

float I23LTS_P23RSa_prob = 0.01887
float I23LTS_P23RSb_prob = 0.01887
float I23LTS_P23RSc_prob = 0.01887
float I23LTS_P23RSd_prob = 0.01887
float I23LTS_B23FS_prob = {0.02500*{inhibitorytargetscale}}
float I23LTS_P5IBa_prob = 0.02500
float I23LTS_P5IBb_prob = 0.02500
float I23LTS_P5IBc_prob = 0.02500
float I23LTS_P5IBd_prob = 0.02500
float I23LTS_B5FS_prob = {0.04200*{inhibitorytargetscaleCross}}
float I23LTS_P6RSa_prob = 0.03448
float I23LTS_P6RSb_prob = 0.03448
float I23LTS_P6RSc_prob = 0.03448
float I23LTS_P6RSd_prob = 0.03448
float I23LTS_C23FS_prob = {0.02500*{inhibitorytargetscale}}
float I23LTS_C5FS_prob = {0.04200*{inhibitorytargetscaleCross}}
float I23LTS_ST4RS_prob = 0.02500
float I23LTS_I23LTS_prob = {0.02500*{inhibitorytargetscale}}
float I23LTS_I5LTS_prob = {0.04200*{inhibitorytargetscaleCross}}
float I23LTS_P23FRBa_prob = 0.01887
float I23LTS_P5RSa_prob = 0.02500

//I5LTS spatial connection scales

float I5LTSdecayrate, I5LTSmaxwgt, I5LTSminwgt, I5LTSbasewgt

I5LTSdecayrate = 10000 // 1/(100e-6) m^-1  boothe changed from 10000
I5LTSbasewgt = 1.0
I5LTSminwgt = {0.0 + {inhibitoryweightoffset}}
I5LTSmaxwgt = {{{I5LTSbasewgt}*{inhibitoryweightscale}} + {inhibitoryweightoffset}}

float I5LTS_P23RSa_prob = 0.01887
float I5LTS_P23RSb_prob = 0.01887
float I5LTS_P23RSc_prob = 0.01887
float I5LTS_P23RSd_prob = 0.01887
float I5LTS_B23FS_prob = {0.02500*{inhibitorytargetscaleCross}}
float I5LTS_P5IBa_prob = 0.02500
float I5LTS_P5IBb_prob = 0.02500
float I5LTS_P5IBc_prob = 0.02500
float I5LTS_P5IBd_prob = 0.02500
float I5LTS_B5FS_prob = {0.04200*{inhibitorytargetscale}}
float I5LTS_P6RSa_prob = 0.03448
float I5LTS_P6RSb_prob = 0.03448
float I5LTS_P6RSc_prob = 0.03448
float I5LTS_P6RSd_prob = 0.03448
float I5LTS_C23FS_prob = {0.02500*{inhibitorytargetscaleCross}}
float I5LTS_C5FS_prob = {0.04200*{inhibitorytargetscale}}
float I5LTS_ST4RS_prob = 0.02500
float I5LTS_I23LTS_prob = {0.02500*{inhibitorytargetscaleCross}}
float I5LTS_I5LTS_prob = {0.04200*{inhibitorytargetscale}}
float I5LTS_P23FRBa_prob = 0.01887
float I5LTS_P5RSa_prob = 0.02500

//TCR spatial connection scales

float TCRdecayrate, TCRmaxwgt, TCRminwgt, TCRbasewgt

TCRdecayrate = 10000 // 1/(100e-6) m^-1
TCRbasewgt = 1.0
TCRminwgt = {0.0 + {excitatoryweightoffset}}
TCRmaxwgt = {{{TCRbasewgt}*{excitatoryweightscale}} + {excitatoryweightoffset}}

float TCR_P23RSa_prob = 0.04167
float TCR_P23RSb_prob = 0.04167
float TCR_P23RSc_prob = 0.04167
float TCR_P23RSd_prob = 0.04167
float TCR_B23FS_prob = {0.08333*{inhibitorytargetscale}}
float TCR_P5IBa_prob = 0.11111
float TCR_P5IBb_prob = 0.11111
float TCR_P5IBc_prob = 0.11111
float TCR_P5IBd_prob = 0.11111
float TCR_B5FS_prob = {0.08333*{inhibitorytargetscale}}
float TCR_P6RSa_prob = 0.20000
float TCR_P6RSb_prob = 0.20000
float TCR_P6RSc_prob = 0.20000
float TCR_P6RSd_prob = 0.20000
float TCR_C23FS_prob = {0.08333*{inhibitorytargetscale}}
float TCR_C5FS_prob = {0.08333*{inhibitorytargetscale}}
float TCR_ST4RS_prob = 0.01923
float TCR_nRT_prob = 0.042
float TCR_P23FRBa_prob = 0.04167
float TCR_P5RSa_prob = 0.11111

//nRT spatial connection scales

float nRTdecayrate, nRTmaxwgt, nRTminwgt, nRTbasewgt

nRTdecayrate = 10000 // 1/(100e-6) m^-1
nRTbasewgt = 1.0
nRTminwgt = {0.0 + {inhibitoryweightoffset}}
nRTmaxwgt = {{{nRTbasewgt}*{inhibitoryweightscale}} + {inhibitoryweightoffset}}

float nRT_TCR_prob = 0.01111
float nRT_nRT_prob = 0.02083

//P23FRBa spatial connection scales

float P23FRBdecayrate, P23FRBmaxwgt, P23FRBminwgt, P23FRBbasewgt

P23FRBdecayrate = 10000 // 1/(100e-6) m^-1
P23FRBbasewgt = 1.0
P23FRBminwgt = {0.0 + {excitatoryweightoffset}}
P23FRBmaxwgt = {{{P23FRBbasewgt}*{excitatoryweightscale}} + {excitatoryweightoffset}}

float P23FRBa_P23RSa_prob = 0.02778
float P23FRBa_P23RSb_prob = 0.02778
float P23FRBa_P23RSc_prob = 0.02778
float P23FRBa_P23RSd_prob = 0.02778
float P23FRBa_B23FS_prob = {0.042*{inhibitorytargetscale}}
float P23FRBa_P5IBa_prob = 0.12500
float P23FRBa_P5IBb_prob = 0.12500
float P23FRBa_P5IBc_prob = 0.12500
float P23FRBa_P5IBd_prob = 0.12500
float P23FRBa_B5FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P23FRBa_P6RSa_prob = 0.12500
float P23FRBa_P6RSb_prob = 0.12500
float P23FRBa_P6RSc_prob = 0.12500
float P23FRBa_P6RSd_prob = 0.12500
float P23FRBa_C23FS_prob = {0.042*{inhibitorytargetscale}}
float P23FRBa_C5FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P23FRBa_ST4RS_prob = 0.042
float P23FRBa_I23LTS_prob = {0.042*{inhibitorytargetscale}}
float P23FRBa_I5LTS_prob = {0.042*{inhibitorytargetscaleCross}}
float P23FRBa_P23FRBa_prob = 0.02778
float P23FRBa_P5RSa_prob = 0.12500

//P5RSa spatial connection scales

float P5RSdecayrate, P5RSmaxwgt, P5RSminwgt, P5RSbasewgt

P5RSdecayrate = 10000 // 1/(100e-6) m^-1
P5RSbasewgt = 1.0
P5RSminwgt = {0.0 + {excitatoryweightoffset}}
P5RSmaxwgt = {{{P5RSbasewgt}*{excitatoryweightscale}} + {excitatoryweightoffset}}

float P5RSa_P23RSa_prob = 0.07692
float P5RSa_P23RSb_prob = 0.07692
float P5RSa_P23RSc_prob = 0.07692
float P5RSa_P23RSd_prob = 0.07692
float P5RSa_B23FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P5RSa_P5IBa_prob = 0.02174
float P5RSa_P5IBb_prob = 0.02174
float P5RSa_P5IBc_prob = 0.02174
float P5RSa_P5IBd_prob = 0.02174
float P5RSa_B5FS_prob = {0.042*{inhibitorytargetscale}}
float P5RSa_P6RSa_prob = 0.02326
float P5RSa_P6RSb_prob = 0.02326
float P5RSa_P6RSc_prob = 0.02326
float P5RSa_P6RSd_prob = 0.02326
float P5RSa_C23FS_prob = {0.042*{inhibitorytargetscaleCross}}
float P5RSa_C5FS_prob = {0.042*{inhibitorytargetscale}}
float P5RSa_ST4RS_prob = 0.042
float P5RSa_I23LTS_prob = {0.042*{inhibitorytargetscaleCross}}
float P5RSa_I5LTS_prob = {0.042*{inhibitorytargetscale}}
float P5RSa_P23FRBa_prob = 0.07692
float P5RSa_P5RSa_prob = 0.02174
