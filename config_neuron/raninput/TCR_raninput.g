// genesis

// function for setting random network inputs

if ({columntype == 0})

    int i,j,dex

    float randneur
    
    float CondmaxSPIKEAMPA=1.0e-9

    float Ranrate={{ranrateoffset} + {{ranratescale} * {rand 1.0 10.0}}} //Random injection frequency

    for (i=1;i<=(TCR_NY);i=i+1)

        for (j=1;j<=(TCR_NX);j=j+1)

            randneur = { rand 0 1.0 }

            if ( {randneur <= neuronfrac} )

                dex=(i-1)*TCR_NY+(j-1)

                if ({output}==1)
                end

                ce /TCRnet/TCR[{dex}]/proxdendNNW31

                make_Ex_chSPIKEAMPA
                setfield /TCRnet/TCR[{dex}]/proxdendNNW31/Ex_chSPIKEAMPA gmax {CondmaxSPIKEAMPA}
                addmsg /TCRnet/TCR[{dex}]/proxdendNNW31/Ex_chSPIKEAMPA /TCRnet/TCR[{dex}]/proxdendNNW31 CHANNEL Gk Ek
                addmsg /TCRnet/TCR[{dex}]/proxdendNNW31 /TCRnet/TCR[{dex}]/proxdendNNW31/Ex_chSPIKEAMPA VOLTAGE Vm

                ce /

                create randomspike /randomspikeTCR{dex}
                setfield ^ min_amp 1.0 max_amp 1.0 rate {Ranrate} reset 1 reset_value 0
                addmsg /randomspikeTCR{dex} /TCRnet/TCR[{dex}]/proxdendNNW31/Ex_chSPIKEAMPA SPIKE

                setfield /TCRnet/TCR[{dex}]/proxdendNNW31/Ex_chSPIKEAMPA synapse[0].delay 0 synapse[0].weight {randominputweight}

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

    for (i=0;i<(TCR_NY);i=i+1)

        jstartdex = {trunc {i/2}}*2-i+1

        for (j=jstartdex;j<(TCR_NX);j=j+2)

            randneur = { rand 0 1.0 }

            if ( {randneur <= neuronfrac} )

                if ({output}==1)
                end

                ce /TCRnet/TCR[{k}]/proxdendNNW31

                make_Ex_chSPIKEAMPA
                setfield /TCRnet/TCR[{k}]/proxdendNNW31/Ex_chSPIKEAMPA gmax {CondmaxSPIKEAMPA}
                addmsg /TCRnet/TCR[{k}]/proxdendNNW31/Ex_chSPIKEAMPA /TCRnet/TCR[{k}]/proxdendNNW31 CHANNEL Gk Ek
                addmsg /TCRnet/TCR[{k}]/proxdendNNW31 /TCRnet/TCR[{k}]/proxdendNNW31/Ex_chSPIKEAMPA VOLTAGE Vm

                ce /

                create randomspike /randomspikeTCR{k}
                setfield ^ min_amp 1.0 max_amp 1.0 rate {Ranrate} reset 1 reset_value 0
                addmsg /randomspikeTCR{k} /TCRnet/TCR[{k}]/proxdendNNW31/Ex_chSPIKEAMPA SPIKE

                setfield /TCRnet/TCR[{k}]/proxdendNNW31/Ex_chSPIKEAMPA synapse[0].delay 0 synapse[0].weight {randominputweight}

            end
   
            k=k+1

        end

    end

end
