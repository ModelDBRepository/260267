// genesis

// function for setting random network inputs

    int i,j,dex

    float randneur
    
    float CondmaxSPIKEAMPA=1.0e-9

    float Ranrate={{ranrateoffset} + {{ranratescale} * {rand 1.0 10.0}}} //Random injection frequency

    for (i=1;i<=(P5IBd_NY);i=i+1)

        for (j=1;j<=(P5IBd_NX);j=j+1)

            randneur = { rand 0 1.0 }

            if ( {randneur <= neuronfrac} )

                dex=(i-1)*P5IBd_NY+(j-1)

                if ({output}==1)
                end

                ce /P5IBdnet/P5IBd[{dex}]/apdend3

                make_Ex_chSPIKEAMPA
                setfield /P5IBdnet/P5IBd[{dex}]/apdend3/Ex_chSPIKEAMPA gmax {CondmaxSPIKEAMPA}
                addmsg /P5IBdnet/P5IBd[{dex}]/apdend3/Ex_chSPIKEAMPA /P5IBdnet/P5IBd[{dex}]/apdend3 CHANNEL Gk Ek
                addmsg /P5IBdnet/P5IBd[{dex}]/apdend3 /P5IBdnet/P5IBd[{dex}]/apdend3/Ex_chSPIKEAMPA VOLTAGE Vm

                ce /

                create randomspike /randomspikeP5IBd{dex}
                setfield ^ min_amp 1.0 max_amp 1.0 rate {Ranrate} reset 1 reset_value 0
                addmsg /randomspikeP5IBd{dex} /P5IBdnet/P5IBd[{dex}]/apdend3/Ex_chSPIKEAMPA SPIKE

                setfield /P5IBdnet/P5IBd[{dex}]/apdend3/Ex_chSPIKEAMPA synapse[0].delay 0 synapse[0].weight {randominputweight}

            end

        end

    end
