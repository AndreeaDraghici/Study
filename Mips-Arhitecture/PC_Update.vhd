----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:51:31 03/13/2021 
-- Design Name: 
-- Module Name:    PC_Update - Behavioral 
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

entity PC_Update is
    Port ( 
	        Zero : in STD_LOGIC;
	        Branch : in STD_LOGIC;
	        Offset : in STD_LOGIC_VECTOR(15 downto 0);
			  PC : in  STD_LOGIC_VECTOR (31 downto 0);
           New_PC : out  STD_LOGIC_VECTOR (31 downto 0));
end PC_Update;

architecture Behavioral of PC_Update is
signal PC_p4 : STD_LOGIC_VECTOR (31 downto 0);
signal depl : STD_LOGIC_VECTOR(31 downto 0);

begin

PC_p4<=PC+4;
depl <= x"000"&"00"&Offset&"00" when Offset(15)='0' else x"FFF"&"11"&Offset&"00";
New_PC <= PC_p4 + depl when Zero='1' and Branch='1' else PC_p4;

end Behavioral;

