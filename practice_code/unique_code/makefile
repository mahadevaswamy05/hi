
compile:
			vlib work;
			vlog -sv unique_value.sv

simulate:
			vsim randc_fu -l unique_output.log -c -do "run -all; exit;"

all:
	    vlib work;
			vlog -sv unique_value.sv
			vsim randc_fu -l unique_output.log -c -do "run -all; exit;"

