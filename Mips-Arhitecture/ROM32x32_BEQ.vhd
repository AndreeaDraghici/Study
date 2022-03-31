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
									x"8c020040", --0  lw $2, 0x40($0)
									x"8c030044", --1  lw $3, 0x44($0)
									x"00432020", --2  add $4, $2, $3
									x"00432822", --3  sub $5, $2, $3
									x"00433024", --4  and $6, $2, $3
									x"00433825", --5  or $7, $2, $3
									x"ac020048", --6  sw $2, 0x48($0)
									x"ac030048", --7  sw $3, 0x48($0)
									x"ac040048", --8  sw $4, 0x48($0)
									x"ac050048", --9  sw $5, 0x48($0)
									x"ac060048", --10 sw $6, 0x48($0)
									x"ac070048", --11 sw $7, 0x48($0)
									x"1043fff3", --12 beq $2, $3, rep
									x"1000fff2", --13 beq $0, $0, rep
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