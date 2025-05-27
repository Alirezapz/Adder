quit -sim
.main clear

set PrefMain(saveLines) 100000000000

cd ../sim
cmd /c "if exist work rmdir /S /Q work"
vlib work
vmap work


vcom -2008 ../source/*.vhd
vcom -2008 ../test/Adder_tb.vhd

vsim -t 100ps -vopt Adder_tb -voptargs=+acc

config wave -signalnamewidth 1

add wave -format Logic -radix decimal sim:/Adder_tb/adderInst/*

run 10us
