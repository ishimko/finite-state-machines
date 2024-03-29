-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : finite_state_machines
-- Author      : User
-- Company     : Home
--
-------------------------------------------------------------------------------
--
-- File        : d:\Programming\VHDL\finite-state-machines\source\finite_state_machines\compile\task_2.vhd
-- Generated   : 10/28/17 14:54:03
-- From        : d:\Programming\VHDL\finite-state-machines\source\finite_state_machines\src\task 2\task_2.asf
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

architecture beh of task_2 is

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
	elsif CLK'event and CLK = '1' then
		-- Set default values for outputs, signals and variables
		-- ...
		case state is
			when S0 =>
				if IP="0000" then	
					state <= S1;
				elsif IP="0001" then	
					state <= S2;
				elsif IP="0010" then	
					state <= S3;
				elsif IP="0100" then	
					state <= S4;
				end if;
--vhdl_cover_off
			when others =>
				null;
--vhdl_cover_on
		end case;
	end if;
end process;

-- signal assignment statements for combinatorial outputs
OP_assignment:
OP <= "00" when (state = S0) else
      "01" when (state = S1) else
      "10" when (state = S2) else
      "00" when (state = S3) else
      "11" when (state = S4) else
      "00";

end beh;
