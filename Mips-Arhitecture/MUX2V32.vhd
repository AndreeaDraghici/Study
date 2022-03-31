----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:42:57 03/15/2021 
-- Design Name: 
-- Module Name:    MUX2V32 - Behavioral 
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

entity MUX2V32 is
    Port ( I0 : in  STD_LOGIC_VECTOR (31 downto 0);
           I1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Sel : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX2V32;

architecture Behavioral of MUX2V32 is

begin

Y<= I0 when Sel='0' else I1;

end Behavioral;

