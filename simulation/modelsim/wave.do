onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Itype_tb/clk
add wave -noupdate /Itype_tb/reset
add wave -noupdate /Itype_tb/instr_addr
add wave -noupdate /Itype_tb/ALU_result
add wave -noupdate /Itype_tb/UUT/ScrB
add wave -noupdate /Itype_tb/UUT/sahan/ScrA
add wave -noupdate /Itype_tb/UUT/register_file/read_addr_1
add wave -noupdate /Itype_tb/UUT/register_file/read_addr_2
add wave -noupdate /Itype_tb/UUT/register_file/write_addr
add wave -noupdate /Itype_tb/UUT/register_file/write_data
add wave -noupdate /Itype_tb/UUT/register_file/read_data_1
add wave -noupdate /Itype_tb/UUT/register_file/read_data_2
add wave -noupdate /Itype_tb/UUT/instruction_parser/imm
add wave -noupdate /Itype_tb/UUT/instruction_parser/instruction
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {153146 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 249
configure wave -valuecolwidth 199
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {58277 ps} {171262 ps}
