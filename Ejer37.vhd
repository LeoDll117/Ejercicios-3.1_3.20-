----------------------------------------------------------------------------------
--Ejercicio3.7
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity Ejer37 is
Port(clk, reset : in STD_LOGIC;
				Q   :buffer STD_LOGIC_VECTOR(3 downto 0));
end Ejer37;

architecture Behavioral of Ejer37 is

begin
process(clk, reset, Q)
begin
	if(reset='1' or Q ="1111")then
		Q<="0000";
	elsif(clk' event and clk ='1')then
		Q<=Q+1;
	end if;
end process;
end Behavioral;