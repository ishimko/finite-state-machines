-------------------------------------------------------------------------------
--
-- Title       : Task 3
-- Design      : finite_state_machines
-- Author      : User
-- Company     : Home
--
-------------------------------------------------------------------------------
--
-- File        : d:\Programming\VHDL\finite-state-machines\source\finite_state_machines\compile\task 3.vhd
-- Generated   : 10/28/17 14:11:32
-- From        : d:\Programming\VHDL\finite-state-machines\source\finite_state_machines\src\task 3\task 3.asf
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

entity \task 3\ is 
	port (
		CLK: in STD_LOGIC;
		IP: in STD_LOGIC_VECTOR (3 downto 0);
		RST: in STD_LOGIC;
		OP: out STD_LOGIC_VECTOR (1 downto 0));
end \task 3\;

architecture \task 3_arch\ of \task 3\ is

-- SYMBOLIC ENCODED state machine: state
type state_type is (
    S0, S1, S2, S3
);
-- attribute enum_encoding of state_type: type is ... -- enum_encoding attribute is not supported for symbolic encoding

signal state: state_type;

begin


----------------------------------------------------------------------
-- Machine: state
----------------------------------------------------------------------
state_machine: process (CLK, rst)
begin
	if RST='1' then	
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
				if IP="0001" then	
					state <= S1;
				end if;
			when S1 =>
				OP <= "10";
				if IP="0011" then	
					state <= S0;
				elsif IP="0010" then	
					state <= S2;
				end if;
			when S2 =>
				OP <= "01";
				if IP="0011" then	
					state <= S1;
				elsif IP="0100" then	
					state <= S3;
				end if;
			when S3 =>
				OP <= "11";
				if IP="0101" then	
					state <= S2;
				end if;
--vhdl_cover_off
			when others =>
				null;
--vhdl_cover_on
		end case;
	end if;
end process;

end \task 3_arch\;
