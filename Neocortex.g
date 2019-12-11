// genesis

//Overall simulation parameters
float tmax = 1.0 
float dt = 2.5e-5		// sec
float randdt = 2.5e-5   // sec
floatformat %g
float refresh_factor = 10.0

// Number of CPU nodes (= same as number of cortical columns)
int Nnodes = 16 
int sqrtNnodes = {sqrt {Nnodes}}

// Number of minicolumns per cortical column.
// Each CPU node will simulate NX*NY minicolumns.
float NX = 2
float NY = 2

// Spacing between minicolumns
float SEPX = 25e-6
float SEPY = 25e-6

// Number of regions (separate cortical patches)
//
// I haven't really tested what happens when this isn't a square number; it
// seems to work but might do weird things. Setting it greater than one will
// enable long-range connections.
int Nregions = 1

// regionspacing controls the extra spacing between two different regions,
// above and beyond {SEPX}. regionspacing = 0.0 means a separation of {SEPX}
// between minicolumns in adjacent regions. regionspacing = {SEPX} means there
// is 2*{SEPX} separation.

float regionspacing = {SEPX}*{NX}*100 //really far apart

//float regionspacing = {SEPX}*{NX}*0 // next to each other
//float regionspacing = {SEPX}*{NX}*10

// Scaling for short range connections (within regions) and long range
// connections (between regions). If Nregions==1 then no long range connections
// are created but the model still creates connections between distinct
// minicolumns and between neurons on different computer nodes.
float shortrangeprobscale = 0.2905*(64.0/{Nnodes})*(4.0/{NX}/{NY})
float shortrangeP23probscale = 0.2905*(64.0/{Nnodes})*(4.0/{NX}/{NY})
float longrangeprobscale = 1.0        
float longrangeweightscale = 1.0
float longrangeCVscale = 1.0
float inhibitorytargetscale = 1.0
float inhibitorytargetscaleCross = 1.0
float inhibitorytargetscale6 = 1.0

// shortrangeweightscale does not exist because I haven't decided on the best
// way to scale these--multiply into only maxweight or both maxweight and
// minweight in the decay function?
//float shortrangeweightscale = 1.0
// Excitatory and inhibitory weight scale + offset
float excitatoryweightscale = 1.0e-9
float excitatoryweightoffset = 0.0
float inhibitoryweightscale = 1.0e-9
float inhibitoryweightoffset = 0.0

float neuronfrac = 1.0 // Proportion of neurons receiving background noise (1.0 == all neurons)
float ranrateoffset = -1.0 // Offset for Ranrate; when zero then 1.0 <= Ranrate <= 10.0
float ranratescale = 2.0 // Scaling factor for Ranrate; when one then 1.0 <= Ranrate <= 10.0
float randominputweight = 10.0

// Seeding the random number generator used later in the input pattern.
// Seeding with a defined number (integer) allows one to reproduce
// 'random' patterns from one simulation to the next.   Seeding
// without a defined seed gives different results each time you run
// the simulation.
setrand -sprng // Use SPRNG instead of default Numerical Recipes
int myrandseed = 34521
randseed {{mynode} + {myrandseed} + 0}

// Important flags
int display = 0     // Display neurons and graphs?
int output = 1      // Dump neural output to a file?
int membranepotentialoutput = 0 // Log membrane potentials (you probably don't want this)
int drawtree = 1    // Output connectivity info?

// Be strict about genesis syntax; bail if there's an error!
maxerrors 0
maxwarnings 0

// Enable/disable thalamocortical connections
int thalamocortical = 0
// Enable/disable gap junctions
int gaps = 0

// Randomly rotate each neuron along its z (height) axis?
int rotateneurons = 1

// setting the simulation clocks
setclock	0 {dt}		        // sec
setclock	1 {dt * refresh_factor} // sec
setclock    2 {randdt} // sec


//////////////////////////////////////////////////////////////////////

// START UP
paron -parallel -silent 4 -nodes {Nnodes} -nice 10 -output genesis_o.out \
	-executable pgenesis
barrier
setfield /post remote_info 0 // save remote message info (see BoG, pg. 377)
//setfield /post msg_hang_time 100000	// set a very long timeout in case
					// we need to do debugging

if({mynode} == 0)
    echo Genesis started at {getdate}
    echo "display = " {display}
    echo "output = " {output}
    echo ""
end

// Zero padded node name for pretty formatting
str myzeropadnode
if({mynode} == 0)
    str myzeropadnode = "column00"
elif({mynode} < 10)
    str myzeropadnode = {"column0" @ {mynode}}
else
    str myzeropadnode = {"column" @ {mynode}}
end

//echo I am node {myzeropadnode}
if({mynode} == 0)
    echo Completed startup at {getdate}
end

// Neocortex - Setup / Global Variables

int probedex
int probedex2
int gridsize

// Flags for minicolumnar architecture

int columntype       // 0 = standard column, all cell types represented in each Minicolumn
                     // 1 = Traub like columns

columntype = 1

// Load Network cell spacings and cell numbers

include netparams.g

// Central Q00 P23RSa current injection
//float Q00_P23RSa_centralinj = 0.0

gridsize = P23RSa_NX*P23RSa_NY
probedex = gridsize/2 // For cell types with full density (1 per minicolumn)
probedex2 = probedex/2 // For cell types with half the density

// Region setup
Nregions = {min {Nnodes} {Nregions}}
int Nnodesperregion = {max 1 {{Nnodes} / {Nregions}}}
int sqrtNnodesperregion = {round {sqrt {Nnodesperregion}}}
int sqrtNregions = {sqrt {Nregions}}
int myxnum = {{mynode} % {sqrtNnodes}}
int myynum = {{mynode} / {sqrtNnodes}}
int myregion, thisregion
int minx, maxx, miny, maxy
str regionnodes = ""
str distantnodes = ""
for (thisregion = 0; thisregion < Nregions; thisregion = thisregion + 1)
	minx = {thisregion % {sqrtNregions}} * {sqrtNnodesperregion}
	miny = {thisregion / {sqrtNregions}} * {sqrtNnodesperregion}
	maxx = minx + {{sqrtNnodesperregion}-1}
	maxy = miny + {{sqrtNnodesperregion}-1}
	//echo "thisregion = " {thisregion} "minx = " {minx} "maxx = " {maxx} "miny = " {miny} "maxy = " {maxy} 

	// If this node belongs to this region
	if ({{myxnum} >= {minx}} & {{myynum} >= {miny}} & {{myxnum} <= {maxx}} & {{myynum} <= {maxy}})
		myregion = {thisregion}
		
		// Set list of regionnodes for later connectivity purposes
		int i,j
		for (i=minx; i<=maxx; i=i+1) 
			for (j=miny; j<=maxy; j=j+1) 
				if ({regionnodes}=="") // first regionnode
					regionnodes={{{j}*{sqrtNnodes}}+{i}}
				else
					regionnodes={regionnodes} @ "," @ {{{j}*{sqrtNnodes}}+{i}}
				end
			end
		end
		// Set list of distantnodes for later connectivity purposes
		int nodex, nodey
		for (i=0; i<Nnodes; i=i+1) 
			nodex = {{i} % {sqrtNnodes}}
			nodey = {{i} / {sqrtNnodes}}
			if ({nodex < minx} | {nodex > maxx} | {nodey < miny} | {nodey > maxy})
				if ({distantnodes}=="") // first distantnode
					distantnodes={i}
				else
					distantnodes={distantnodes} @ "," @ {i}
				end
			end
		end

		//echo "Region " {thisregion} " regionnodes=" {regionnodes} " distantnodes=" {distantnodes}

	end
end
float regionoffsetx = {{regionspacing} * {{myregion}%{sqrtNregions}}}
float regionoffsety = {{regionspacing} * {{myregion}/{sqrtNregions}}}


//echo "mynode = " {mynode} " myregion = " {myregion} " regionoffsetx = " {regionoffsetx} " regionoffsety = " {regionoffsety}

//===============================
//      Function Definitions
//===============================

function step_tmax
    step {tmax} -time
end

//===============================
//          Data Out
//===============================

function do_asc_file(diskpath, srcpath, field, fd)

        create asc_file /{fd}
        setfield /{fd} filename {diskpath} flush 1 leave_open 1 append 0 float_format %0.9g

        addmsg {srcpath} /{fd}  SAVE {field}

end

//===============================
//      Set up Network
//===============================

//Table of synaptic conductances

include syncond_traub.g

// Load cell definitions

include celldefs.g

// Define soma SPIKE outputs

include spikedefs.g

// CREATE NETWORK CONNECTIONS

// Network definitions

barrierall

include config_neuron/spatiallayout/P23RSa.g
include config_neuron/spatiallayout/P23RSb.g
include config_neuron/spatiallayout/P23RSc.g
include config_neuron/spatiallayout/P23RSd.g
include config_neuron/spatiallayout/B23FS.g
include config_neuron/spatiallayout/P5IBa.g
include config_neuron/spatiallayout/P5IBb.g
include config_neuron/spatiallayout/P5IBc.g
include config_neuron/spatiallayout/P5IBd.g
include config_neuron/spatiallayout/B5FS.g
include config_neuron/spatiallayout/P6RSa.g
include config_neuron/spatiallayout/P6RSb.g
if ({{columntype} == 0})
    include config_neuron/spatiallayout/P6RSc.g
    include config_neuron/spatiallayout/P6RSd.g
end
include config_neuron/spatiallayout/C23FS.g
include config_neuron/spatiallayout/C5FS.g
include config_neuron/spatiallayout/ST4RS.g
include config_neuron/spatiallayout/I23LTS.g
include config_neuron/spatiallayout/I5LTS.g
if ({{thalamocortical} == 1})
    include config_neuron/spatiallayout/TCR.g
    include config_neuron/spatiallayout/nRT.g
end
include config_neuron/spatiallayout/P23FRBa.g
include config_neuron/spatiallayout/P5RSa.g

if ({{mynode}==0})
//	echo "Position2 cell node region x y z rotation"
end
barrierall
str mysoma
foreach mysoma ({el /#/#[]/soma })
//	echo Position2 {el {mysoma}/..} {mynode} {myregion} {getfield {mysoma}/.. x} {getfield {mysoma}/.. y} {getfield {mysoma}/.. z} {getfield {mysoma}/.. rotation}
end

// Revert to non-node-, typenum-, and minicolumn-dependent random seed (same
// number across all cores). Adding one so that we're not re-using the same
// random numbers (just to be safe, even though they were for different
// things).
//randseed { {myrandseed} + 1 }

// Disabling prototype cells
disable /B23FS
disable /B5FS
disable /C23FS
disable /C5FS
disable /I23LTS
disable /I5LTS
//disable /nRT
disable /P23FRBa
disable /P23RSa
disable /P23RSb
disable /P23RSc
disable /P23RSd
disable /P5IBa
disable /P5IBb
disable /P5IBc
disable /P5IBd
disable /P5RSa
disable /P6RSa
disable /P6RSb
if ({{columntype} == 0})
	disable /P6RSc
	disable /P6RSd
end
disable /ST4RS
//disable /TCR

barrierall

// Synaptic weight decay parameters and delays
//include synapticprobsTraub.g
//include synapticprobsbase.g
include synapticprobsnew.g
barrierall

include synapticdelays.g
barrierall

include axonaldelays.g
barrierall

//Establish Wiring
randseed {{mynode} + {myrandseed} + 1}

if({mynode} == 0)
    echo Starting: include netdefs.g at {getdate}
end

include netdefs.g

if({mynode} == 0)
    echo Finished: include netdefs.g at {getdate}
end

barrierall

if({mynode} == 0)
    echo Made it past netdefs.g! {mynode}
end

// Create Gap Junctions

//if ({gaps == 1})
//    barrierall
//    include Gapdefs.g
//    barrierall
//end

include synchansSPIKEs.g

// Create Random Background Inputs
// Need a per-node seed so that nodes don't end up with the same random spike train
randseed {{mynode} + {myrandseed} + 2}
include randominputdefs.g
//randseed { {myrandseed} + 2 }
useclock /random#[] 2

// Output and diagnostics

//Setup messages for Data File writing
if ( {{output} == 1} )
    // Local field potential
    include config_dataoutput/LFP5e.g
    include config_dataoutput/LFP5eASCIIwrite.g

    // Vm files probedex

    // Spike Class Output ASCII history (sparse; only writes timestamp when spiking)
    include config_dataoutput/ASCIISpikeHistorywrite.g
end

barrierall

if({mynode} == 0)
    echo Completed model setup at {getdate}
end

//
// Set up hsolve
//
str cell
foreach cell ({el /#net/#[]})
	//echo "Setting up hsolve for" {cell} "@" {mynode}
    setfield {cell} chanmode 1
    call {cell} SETUP
end

setmethod 11
check
reset

barrierall

if({mynode} == 0)
    echo Completed hsolve setup at {getdate}
end

// List all connections
// Can take a long time to run!
// Sometimes, it hangs/crashes when run non-interactively. Need to debug this.
if ({{drawtree} == 1})
    include draw_tree.g
end

// Run the sim to time tmax
if({mynode} == 0)
    echo Started running at {getdate}
end

randseed {{mynode} + {myrandseed} + 3}
step_tmax
//while ({{getstat -time} < tmax}) 
//	barrierall
//	step
//end

if({mynode} == 0)
    echo Finished running at {getdate}
end

paroff

