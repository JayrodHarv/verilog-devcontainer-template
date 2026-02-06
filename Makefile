all: counter_tb.vcd

.PHONY: clean waveform

counter_tb: counter.sv counter_tb.sv
	iverilog -g2012 -o counter_tb counter.sv counter_tb.sv

counter_tb.vcd: counter_tb
	vvp counter_tb

waveform: counter_tb.vcd
	gtkwave counter_tb.vcd

clean:
	rm -f counter_tb counter_tb.vcd