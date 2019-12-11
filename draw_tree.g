str element
str shortelement
str mysource
str mydest
str outfile

// By synapse target:
// List source, dest coordinates and weight
//foreach element ({el /#net/#[]/#/Inh_ch#,/#net/#[]/#/Ex_ch#})
//   int syncount = {getsyncount {element}}
//   outfile = {"./data-latest/connections/" @ {myzeropadnode} @ {strsub {element} / _ -all} @ ".txt"}
//   for (i=0; i<=syncount-1; i=i+1) 
//      mysource = {getsynsrc {element} {i}}
//      //if ({mysource} != "/post")
//         echo {getsynsrc {element} {i}} {getfield {getsynsrc {element} {i}} x} {getfield {getsynsrc {element} {i}} y} {getfield {getsynsrc {element} {i}} z} {element} {getfield {element} x} {getfield {element} y} {getfield {element} z} {getfield {element} synapse[{i}].weight} >> {outfile}
//      //end
//   end
//end

//// By spike generator (soma):
//// List source, dest coordinates using rshowmsg
//// Using rshowmsg for efficiency (instead of personally iterating over each destination element)
int thisnode
for (thisnode=0; {thisnode < {Nnodes}}; thisnode={{thisnode}+1})
    if ({thisnode} == {mynode})

    barrierall
		// Synaptic connections to other neurons
        echo Listing connections for node {mynode}
        foreach element ({el /#net/#[]/soma/spk#})
            outfile = {"./data-latest/connections/" @ {myzeropadnode} @ {strsub {element} / _ -all} @ ".txt"}
            echo {mynode} {element} {getfield {element} x} {getfield {element} y} {getfield {element} z} {getfield {element}/../.. rotation} >> {outfile}
            rshowmsg {element} >> {outfile}
            //echo {thisnode} {element} {getfield {element} x} {getfield {element} y} {getfield {element} z} {getfield {element}/../.. rotation} > /dev/null
            //async rshowmsg {element} > /dev/null
        end
        
		// Get random spike connections too
		echo Listing random connections for node {mynode}
		foreach element ({el /randomspike#})
			outfile = {"./data-latest/connections/" @ {myzeropadnode} @ {strsub {strsub {element} randomspike randomspike_ -all} / _ -all} @ ".txt"}
			echo {getsyndest {element} 0} {getfield {getsyndest {element} 0}/../.. x} {getfield {getsyndest {element} 0}/../.. y} {getfield {getsyndest {element} 0}/../.. z} {element} {getfield {getsyndest {element} 0} synapse[0].weight} >> {outfile}
			rshowmsg {element} >> {outfile}
			//echo {thisnode} {element} {getfield {element} x} {getfield {element} y} {getfield {element} z} {getfield {element}/../.. rotation} > /dev/null
			//async rshowmsg {element} > /dev/null
		end
    end
    barrierall
end

// It's not currently possible to get the synaptic weight for remote
// connections, e.g.:
// echo {getfield@1 /C23FSnet/C23FS/distdendSmidb/Ex_ch15P23RSAMPA synapse[7].weight}
// This is because they're all routed through the /post object.
