// genesis

// function for setting random network inputs

if ({columntype == 0})

    int i,j,dex

    float randneur
    
    float CondmaxSPIKEAMPA=1.0e-9

    float Ranrate={{ranrateoffset} + {{ranratescale} * {rand 1.0 10.0}}} //Random injection frequency

    for (i=1;i<=(nRT_NY);i=i+1)

        for (j=1;j<=(nRT_NX);j=j+1)

            randneur = { rand 0 1.0 }

            if ( {randneur <= neuronfrac} )

                dex=(i-1)*nRT_NY+(j-1)

                if ({output}==1)
                end

                ce /nRTnet/nRT[{dex}]/distdendNlonga

                make_Ex_chSPIKEAMPA
                setfield /nRTnet/nRT[{dex}]/distdendNlonga/Ex_chSPIKEAMPA gmax {CondmaxSPIKEAMPA}
                addmsg /nRTnet/nRT[{dex}]/distdendNlonga/Ex_chSPIKEAMPA /nRTnet/nRT[{dex}]/distdendNlonga CHANNEL Gk Ek
                addmsg /nRTnet/nRT[{dex}]/distdendNlonga /nRTnet/nRT[{dex}]/distdendNlonga/Ex_chSPIKEAMPA VOLTAGE Vm

                ce /

                create randomspike /randomspikenRT{dex}
                setfield ^ min_amp 1.0 max_amp 1.0 rate {Ranrate} reset 1 reset_value 0
                addmsg /randomspikenRT{dex} /nRTnet/nRT[{dex}]/distdendNlonga/Ex_chSPIKEAMPA SPIKE

                setfield /nRTnet/nRT[{dex}]/distdendNlonga/Ex_chSPIKEAMPA synapse[0].delay 0 synapse[0].weight {randominputweight}

            end

        end

    end

end

if ({columntype == 1})

    int i,j

    int k=0

    int jstartdex

    float randneur
    
    float CondmaxSPIKEAMPA=1.0e-9

    float Ranrate={{ranrateoffset} + {{ranratescale} * {rand 1.0 10.0}}} //Random injection frequency

    for (i=0;i<(nRT_NY);i=i+1)

        jstartdex = {trunc {i/2}}*2-i+1

        for (j=jstartdex;j<(nRT_NX);j=j+2)

            randneur = { rand 0 1.0 }

            if ( {randneur <= neuronfrac} )

                if ({output}==1)
                end

                ce /nRTnet/nRT[{k}]/distdendNlonga

                make_Ex_chSPIKEAMPA
                setfield /nRTnet/nRT[{k}]/distdendNlonga/Ex_chSPIKEAMPA gmax {CondmaxSPIKEAMPA}
                addmsg /nRTnet/nRT[{k}]/distdendNlonga/Ex_chSPIKEAMPA /nRTnet/nRT[{k}]/distdendNlonga CHANNEL Gk Ek
                addmsg /nRTnet/nRT[{k}]/distdendNlonga /nRTnet/nRT[{k}]/distdendNlonga/Ex_chSPIKEAMPA VOLTAGE Vm

                ce /

                create randomspike /randomspikenRT{k}
                setfield ^ min_amp 1.0 max_amp 1.0 rate {Ranrate} reset 1 reset_value 0
                addmsg /randomspikenRT{k} /nRTnet/nRT[{k}]/distdendNlonga/Ex_chSPIKEAMPA SPIKE

                setfield /nRTnet/nRT[{k}]/distdendNlonga/Ex_chSPIKEAMPA synapse[0].delay 0 synapse[0].weight {randominputweight}

            end
   
            k=k+1

        end

    end

end
