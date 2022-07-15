----------------------------------------------------------------------------------
-- Ejercicio 3.9
-- Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Ejer39 is
    Port ( clk, Z : in  STD_LOGIC;
           Z1,Z2 : out  STD_LOGIC;
           Q: inout std_logic_vector(4 downto 0));
end Ejer39;
architecture proceso of Ejer39 is
signal integer std_a_int, res ;
begin
	 process(clk)
		begin
			 if( (clk'event and clk='1') then
				if(Z='1') then
					Q<=Q+1;
				else
					Q<=Q-1;
				end if;
			 end if;
		std_a_int<= to_integer(unsigned(Q));
		res<= std_a_int mod 2;
		
		if(res='0') then
			Z1<='1';
			Z2<='0';
		else
			Z1<='0';
			Z2<='1';
		end if;
	end process;

end proceso;

































