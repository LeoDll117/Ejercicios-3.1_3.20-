----------------------------------------------------------------------------------
--Ejercicio 3.16
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejer316 is
    Port ( x : in STD_LOGIC_VECTOR(5 downto 0);
           z : out STD_LOGIC);
end Ejer316;

architecture Behavioral of Ejer316 is
begin
process(x)
begin
	if x= "110011"then
		z<='1';
	elsif x = "110100" then
		z<='0';
	elsif x ="110101" then
		z<='0';
	elsif x="110111" then
		z<='0';
	elsif x="111111" then
		z<='0';
	else
		z<='0';
	end if;
end process;
end Behavioral;


