// genesis

// function for setting random network inputs

    int i,j,dex

    float randneur
    
    float CondmaxSPIKEAMPA=1.0e-9

    float Ranrate={{ranrateoffset} + {{ranratescale} * {rand 1.0 10.0}}} //Random injection frequency

    for (i=1;i<=(P6RSa_NY);i=i+1)

        for (j=1;j<=(P6RSa_NX);j=j+1)

            randneur = { rand 0 1.0 }

			// ayu: Setting this back to the global neuronfrac
            if ( {randneur <= neuronfrac} )
			// As provided to us by Pawel Kudela:
            //if ( {randneur <= 1.0} )

                dex=(i-1)*P6RSa_NY+(j-1)

                if ({output}==1)
                end

                ce /P6RSanet/P6RSa[{dex}]/apdend3

                make_Ex_chSPIKEAMPA
                setfield /P6RSanet/P6RSa[{dex}]/apdend3/Ex_chSPIKEAMPA gmax {CondmaxSPIKEAMPA}
                addmsg /P6RSanet/P6RSa[{dex}]/apdend3/Ex_chSPIKEAMPA /P6RSanet/P6RSa[{dex}]/apdend3 CHANNEL Gk Ek
                addmsg /P6RSanet/P6RSa[{dex}]/apdend3 /P6RSanet/P6RSa[{dex}]/apdend3/Ex_chSPIKEAMPA VOLTAGE Vm

                ce /

                create randomspike /randomspikeP6RSa{dex}
                setfield ^ min_amp 1.0 max_amp 1.0 rate {Ranrate} reset 1 reset_value 0
                addmsg /randomspikeP6RSa{dex} /P6RSanet/P6RSa[{dex}]/apdend3/Ex_chSPIKEAMPA SPIKE

                setfield /P6RSanet/P6RSa[{dex}]/apdend3/Ex_chSPIKEAMPA synapse[0].delay 0 synapse[0].weight {randominputweight}

            end

        end

    end
