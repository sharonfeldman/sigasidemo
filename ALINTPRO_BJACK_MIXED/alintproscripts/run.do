# vlib sharon
# vmap sharon sharon
# vcom sharon.vhd -work sharon
# vcom sharon_tb.vhd -work sharon_tb
# vsim -L sharon -L sharon_tb sharon_tb
add wave -position insertpoint sim:/test_bench/*
# Run simulation
run 5 us