
compile:
			vlog -sv +acc newDesign.sv newTb.sv
simulate:
	    vsim AND_Gate_tb -c -do "log -r /*; add wave -r /*; run -all ; exit ; " -wlf waveform.wlf
all:
			make compile && make simulate;

#For waveform view
#vsim -view waveform.wlf &
