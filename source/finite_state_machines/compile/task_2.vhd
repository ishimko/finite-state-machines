-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : finite_state_machines
-- Author      : User
-- Company     : Home
--
-------------------------------------------------------------------------------
--
-- File        : D:\Programming\VHDL\finite-state-machines\source\finite_state_machines\compile\task_2.vhd
-- Generated   : 10/28/17 13:52:40
-- From        : D:\Programming\VHDL\finite-state-machines\source\finite_state_machines\src\task_2.asf
-- By          : FSM2VHDL ver. 5.0.7.2
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity task_2 is 
	port (
		CLK: in STD_LOGIC;
		IP: in STD_LOGIC_VECTOR (3 downto 0);
		RST: in STD_LOGIC;
		OP: out STD_LOGIC_VECTOR (1 downto 0));
end task_2;

architecture task_2_arch of task_2 is

-- SYMBOLIC ENCODED state machine: state
type state_type is (
    S0, S1, S2, S3, S4
);
-- attribute enum_encoding of state_type: type is ... -- enum_encoding attribute is not supported for symbolic encoding

signal state: state_type;

begin


----------------------------------------------------------------------
-- Machine: state
----------------------------------------------------------------------
state_machine: process (CLK, rst)
begin
	if RST='0' then	
		state <= S0;
		-- Set default values for outputs, signals and variables
		-- ...
		OP <= "00";
	elsif CLK'event and CLK = '1' then
		-- Set default values for outputs, signals and variables
		-- ...
		case state is
			when S0 =>
				OP <= "00";
				if IP="0000" then	
					state <= S1;
				elsif IP="0001" then	
					state <= S2;
				elsif IP="0010" then	
					state <= S3;
				elsif IP="0100" then	
					state <= S4;
				end if;
			when S1 =>
				OP <= "01";
			when S2 =>
				OP <= "10";
			when S3 =>
				OP <= "00";
			when S4 =>
				OP <= "11";
--vhdl_cover_off
			when others =>
				null;
--vhdl_cover_on
		end case;
	end if;
end process;

end task_2_arch;
