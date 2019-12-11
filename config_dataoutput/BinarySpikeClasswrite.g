// genesis
// BinarySpikeClasswrite.g

do_classasc_filebin ./data-latest/P23RSa.SPIKE.{myzeropadnode} /P23RSanet/P23RSa 1 {P23RSa_NX*P23RSa_NY} state P23RSaSPIKEbin
do_classasc_filebin ./data-latest/P23RSb.SPIKE.{myzeropadnode} /P23RSbnet/P23RSb 2 {P23RSb_NX*P23RSb_NY} state P23RSbSPIKEbin
do_classasc_filebin ./data-latest/P23RSc.SPIKE.{myzeropadnode} /P23RScnet/P23RSc 3 {P23RSc_NX*P23RSc_NY} state P23RScSPIKEbin
do_classasc_filebin ./data-latest/P23RSd.SPIKE.{myzeropadnode} /P23RSdnet/P23RSd 4 {P23RSd_NX*P23RSd_NY} state P23RSdSPIKEbin
do_classasc_filebin ./data-latest/ST4RS.SPIKE.{myzeropadnode} /ST4RSnet/ST4RS 17 {ST4RS_NX*ST4RS_NY} state ST4RSSPIKEbin
do_classasc_filebin ./data-latest/P5IBa.SPIKE.{myzeropadnode} /P5IBanet/P5IBa 6 {P5IBa_NX*P5IBa_NY} state P5IBaSPIKEbin
do_classasc_filebin ./data-latest/P5IBb.SPIKE.{myzeropadnode} /P5IBbnet/P5IBb 7 {P5IBb_NX*P5IBb_NY} state P5IBbSPIKEbin
do_classasc_filebin ./data-latest/P5IBc.SPIKE.{myzeropadnode} /P5IBcnet/P5IBc 8 {P5IBc_NX*P5IBc_NY} state P5IBcSPIKEbin
do_classasc_filebin ./data-latest/P5IBd.SPIKE.{myzeropadnode} /P5IBdnet/P5IBd 9 {P5IBd_NX*P5IBd_NY} state P5IBdSPIKEbin
do_classasc_filebin ./data-latest/P5RSa.SPIKE.{myzeropadnode} /P5RSanet/P5RSa 23 {P5RSa_NX*P5RSa_NY} state P5RSaSPIKEbin
do_classasc_filebin ./data-latest/P6RSa.SPIKE.{myzeropadnode} /P6RSanet/P6RSa 11 {P6RSa_NX*P6RSa_NY} state P6RSaSPIKEbin
do_classasc_filebin ./data-latest/P6RSb.SPIKE.{myzeropadnode} /P6RSbnet/P6RSb 12 {P6RSb_NX*P6RSb_NY} state P6RSbSPIKEbin

if ({columntype == 0})

    do_classasc_filebin ./data-latest/B23FS.SPIKE.{myzeropadnode} /B23FSnet/B23FS 5 {B23FS_NX*B23FS_NY} state B23FSSPIKEbin
    do_classasc_filebin ./data-latest/B5FS.SPIKE.{myzeropadnode} /B5FSnet/B5FS 10 {B5FS_NX*B5FS_NY} state B5FSSPIKEbin
    do_classasc_filebin ./data-latest/P6RSc.SPIKE.{myzeropadnode} /P6RScnet/P6RSc 13 {P6RSc_NX*P6RSc_NY} state P6RScSPIKEbin
    do_classasc_filebin ./data-latest/P6RSd.SPIKE.{myzeropadnode} /P6RSdnet/P6RSd 14 {P6RSd_NX*P6RSd_NY} state P6RSdSPIKEbin
    do_classasc_filebin ./data-latest/C23FS.SPIKE.{myzeropadnode} /C23FSnet/C23FS 15 {C23FS_NX*C23FS_NY} state C23FSSPIKEbin
    do_classasc_filebin ./data-latest/C5FS.SPIKE.{myzeropadnode} /C5FSnet/C5FS 16 {C5FS_NX*C5FS_NY} state C5FSSPIKEbin
    do_classasc_filebin ./data-latest/I23LTS.SPIKE.{myzeropadnode} /I23LTSnet/I23LTS 18 {I23LTS_NX*I23LTS_NY} state I23LTSSPIKEbin
    do_classasc_filebin ./data-latest/I5LTS.SPIKE.{myzeropadnode} /I5LTSnet/I5LTS 19 {I5LTS_NX*I5LTS_NY} state I5LTSSPIKEbin
    do_classasc_filebin ./data-latest/P23FRBa.SPIKE.{myzeropadnode} /P23FRBanet/P23FRBa 22 {P23FRBa_NX*P23FRBa_NY} state P23FRBaSPIKEbin

    if ({thalamocortical == 1})
        do_classasc_filebin ./data-latest/TCR.SPIKE.{myzeropadnode} /TCRnet/TCR 20 {TCR_NX*TCR_NY} state TCRSPIKEbin
        do_classasc_filebin ./data-latest/nRT.SPIKE.{myzeropadnode} /nRTnet/nRT 21 {nRT_NX*nRT_NY} state nRTSPIKEbin
    end

elif ({columntype == 1})

    do_classasc_filebin ./data-latest/B23FS.SPIKE.{myzeropadnode} /B23FSnet/B23FS 5 {B23FS_NX*B23FS_NY/2} state B23FSSPIKEbin
    do_classasc_filebin ./data-latest/B5FS.SPIKE.{myzeropadnode} /B5FSnet/B5FS 10 {B5FS_NX*B5FS_NY/2} state B5FSSPIKEbin
    do_classasc_filebin ./data-latest/C23FS.SPIKE.{myzeropadnode} /C23FSnet/C23FS 15 {C23FS_NX*C23FS_NY/2} state C23FSSPIKEbin
    do_classasc_filebin ./data-latest/C5FS.SPIKE.{myzeropadnode} /C5FSnet/C5FS 16 {C5FS_NX*C5FS_NY/2} state C5FSSPIKEbin
    do_classasc_filebin ./data-latest/I23LTS.SPIKE.{myzeropadnode} /I23LTSnet/I23LTS 18 {I23LTS_NX*I23LTS_NY/2} state I23LTSSPIKEbin
    do_classasc_filebin ./data-latest/I5LTS.SPIKE.{myzeropadnode} /I5LTSnet/I5LTS 19 {I5LTS_NX*I5LTS_NY/2} state I5LTSSPIKEbin
    do_classasc_filebin ./data-latest/P23FRBa.SPIKE.{myzeropadnode} /P23FRBanet/P23FRBa 22 {P23FRBa_NX*P23FRBa_NY/4} state P23FRBaSPIKEbin

    if ({thalamocortical == 1})
        do_classasc_filebin ./data-latest/TCR.SPIKE.{myzeropadnode} /TCRnet/TCR 20 {TCR_NX*TCR_NY/2} state TCRSPIKEbin
        do_classasc_filebin ./data-latest/nRT.SPIKE.{myzeropadnode} /nRTnet/nRT 21 {nRT_NX*nRT_NY/2} state nRTSPIKEbin
    end

end

