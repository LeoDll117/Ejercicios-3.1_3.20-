----------------------------------------------------------------------------------
--Ejercicio 3.17
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejer317 is
		Port(x : in STD_LOGIC_VECTOR (7 downto 0);
			  z : out STD_LOGIC_VECTOR (6 downto 0));
end Ejer317;

architecture Behavioral of Ejer317 is
begin
	process(x)
	begin
	if x= "01101010" then
		z<= "1101111";
	elsif x= "01011011" then
		z<= "0000000";
	elsif x= "11100110" then
		z<= "0000000";
	else
		z<="0000000";
	end if;
	end process;
end Behavioral;


