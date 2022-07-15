----------------------------------------------------------------------------------
--Ejercicio 3.8
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity Ejer38 is
    Port ( clk,z : in  STD_LOGIC;
           q: inout std_logic_vector(3 downto 0));
end Ejer38;
architecture Behavioral of Ejer38 is
begin
	 process(clk,z,q)
		begin
			 if(clk'event and clk='1') then
				if(Z='1') then
					q<=q+1;
				else
					q<=q-1;
				end if;
			 end if;
	end process;
end Behavioral;
