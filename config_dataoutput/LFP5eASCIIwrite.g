// genesis
// LFP5eASCIIwrite.g

int j
for (j=0; j<{{numelecs}-1}; j=j+1)
    do_asc_file ./data-latest/LFP5.region{j}.{myzeropadnode} LFP{j} field LFP{j}file
end

// Last one is the central electrode
j = {{numelecs}-1}
do_asc_file ./data-latest/LFP5.central.{myzeropadnode} LFP{j} field LFP{j}file

