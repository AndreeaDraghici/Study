----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:34:45 03/13/2021 
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

architecture Behavioral of ROM32x32 is
  type tROM is array(0 to 31) of std_logic_vector(31 downto 0);
  constant ROM : tROM :=(
									x"00000001", --0
									x"00000002", --1
									x"00000004", --2
									x"00000008", --3
									x"00000010", --4
									x"00000020", --5
									x"00000040", --6
									x"00000080", --7
									x"00000100", --8
									x"00000200", --9
									x"00000400", --10
									x"00000800", --11
									x"00001000", --12
									x"00002000", --13
									x"00004000", --14
									x"00008000", --15
									x"00010000", --16
									x"00020000", --17
									x"00040000", --18
									x"00080000", --19
									x"00100000", --20
									x"00200000", --21
									x"00400000", --22
									x"00800000", --23
									x"01000000", --24
									x"02000000", --25
									x"04000000", --26
									x"08000000", --27
									x"10000000", --28
									x"20000000", --29
									x"40000000", --30
									x"80000000" --31
									);  
begin
Data <= ROM(conv_integer(Addr));

end Behavioral;

