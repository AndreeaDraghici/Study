----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:22:33 03/23/2020 
-- Design Name: 
-- Module Name:    ROM32x32 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM32x32 is
    Port ( Addr : in  STD_LOGIC_VECTOR (4 downto 0);
           Data : out  STD_LOGIC_VECTOR (31 downto 0));
end ROM32x32;

architecture ROM32x32_arch of ROM32x32 is

-- The following code must appear before the "begin" keyword in the architecture
-- body.

    type tROM is array (0 to 31) of std_logic_vector (31 downto 0);
    constant ROM : tROM :=(
									x"00000020", --0  add $0, $0, $0
									x"8c080040", --1  lw $t0, 0x40($0) #a
									x"20010003", --2  mul $t0, $t0, 3  #3 * a
									x"71014002", --3  
									x"8c090044", --4  lw $t1, 0x44($0) #b
									x"20010002", --5  mul $t1, $t1, 2 #2 * b
									x"71214802", --6  
									x"01092022", --7  sub $a0, $t0, $t1 #3a - 2
									x"ac040048", --8  sw $a0, 0x48($0)
									x"00000000", --9  
									x"00000000", --10 
									x"00000000", --11 
									x"00000000", --12
									x"00000000", --13
									x"00000000", --14
									x"00000000", --15
									x"00000000", --16
									x"00000000", --17
									x"00000000", --18
									x"00000000", --19
									x"00000000", --20
									x"00000000", --21
									x"00000000", --22
									x"00000000", --23
									x"00000000", --24
									x"00000000", --25
									x"00000000", --26
									x"00000000", --27
									x"00000000", --28
									x"00000000", --29
									x"00000000", --30
									x"00000000" --31
									);  

begin

Data <= ROM(conv_integer(Addr));

end ROM32x32_arch;