compile:
	vlib work;
	vlog top_code.sv

simulate:
	vsim top -l top_log.log -c -do "run -all;exit;"

all:
	clear
	vlib work;
	vlog top_code.sv
	vsim top -l top_log.log -c -do "run -all;exit;"

