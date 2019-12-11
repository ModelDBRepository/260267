// Save all neurons' spike histories to the same file
create spikehistory spikehist
setfield spikehist filename ./data-latest/spikehist.{myzeropadnode} initialize 1 leave_open 1 flush 1 ident_toggle 1
str spkgen
foreach spkgen ({el /#/#[]/soma/spk# })
//	echo "Saving spike history for" {spkgen} "@" {mynode}
	addmsg {spkgen} spikehist SPIKESAVE
end

// Save history for random spikes as well
create spikehistory spikehistrandom
setfield spikehistrandom filename ./data-latest/randomspikehist.{myzeropadnode} initialize 1 leave_open 1 flush 1 ident_toggle 1
foreach spkgen ({el /random#[] })
//	echo "Saving random spike history for" {spkgen} "@" {mynode}
	addmsg {spkgen} spikehistrandom SPIKESAVE
end

