onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tbw_mips/clk
add wave -noupdate -format Literal -radix hexadecimal /tbw_mips/inw0
add wave -noupdate -format Literal -radix hexadecimal /tbw_mips/inw1
add wave -noupdate -format Literal -radix hexadecimal /tbw_mips/outw0
add wave -noupdate -format Literal /tbw_mips/uut/pc
add wave -noupdate -format Literal /tbw_mips/uut/instr
add wave -noupdate -format Literal /tbw_mips/uut/u_regs/rdreg1
add wave -noupdate -format Literal /tbw_mips/uut/rddata1
add wave -noupdate -format Literal /tbw_mips/uut/u_regs/rdreg2
add wave -noupdate -format Literal /tbw_mips/uut/rddata2
add wave -noupdate -format Literal /tbw_mips/uut/u_alu/faddr
add wave -noupdate -format Logic /tbw_mips/uut/alusrc
add wave -noupdate -format Literal /tbw_mips/uut/aluop
add wave -noupdate -format Literal /tbw_mips/uut/alu_out
add wave -noupdate -format Literal /tbw_mips/uut/memout
add wave -noupdate -format Logic /tbw_mips/uut/memwr
add wave -noupdate -format Logic /tbw_mips/uut/regwr
add wave -noupdate -format Logic /tbw_mips/uut/mem2reg
add wave -noupdate -format Literal /tbw_mips/uut/wrdata
add wave -noupdate -format Logic /tbw_mips/uut/regdest
add wave -noupdate -format Literal /tbw_mips/uut/u_muxregd/i1
add wave -noupdate -format Literal /tbw_mips/uut/wrreg
add wave -noupdate -format Literal /tbw_mips/uut/u_regs/s32regs32
add wave -noupdate -format Literal /tbw_mips/uut/new_pc
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
configure wave -namecolwidth 171
configure wave -valuecolwidth 100
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1018987 ps}
