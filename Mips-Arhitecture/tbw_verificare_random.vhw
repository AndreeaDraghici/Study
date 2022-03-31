--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : tbw_verificare_random.vhw
-- /___/   /\     Timestamp : Mon Mar 15 18:03:38 2021
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: tbw_verificare_random
--Device: Xilinx
--

library UNISIM;
use UNISIM.Vcomponents.ALL;
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY tbw_verificare_random IS
END tbw_verificare_random;

ARCHITECTURE testbench_arch OF tbw_verificare_random IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT mips
        PORT (
            Clk : In std_logic;
            INW0 : In std_logic_vector (31 DownTo 0);
            INW1 : In std_logic_vector (31 DownTo 0);
            OUTW0 : Out std_logic_vector (31 DownTo 0)
        );
    END COMPONENT;

    SIGNAL Clk : std_logic := '0';
    SIGNAL INW0 : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL INW1 : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";
    SIGNAL OUTW0 : std_logic_vector (31 DownTo 0) := "00000000000000000000000000000000";

    BEGIN
        UUT : mips
        PORT MAP (
            Clk => Clk,
            INW0 => INW0,
            INW1 => INW1,
            OUTW0 => OUTW0
        );

        PROCESS
            BEGIN
                WAIT FOR 1000 ns;

            END PROCESS;

    END testbench_arch;

