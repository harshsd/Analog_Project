transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {StringRecognizer.vho}

vcom -93 -work work {/media/harsh/8CFC3022FC30094A/IIT/Digital Lab/Digital Lab 4/String-Testbench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=StringRecognizer_vhd.sdo -L maxv -L gate_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
