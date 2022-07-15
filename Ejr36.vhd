----------------------------------------------------------------------------------
--Ejercicio 3.6
--lEONARDO Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity Ejr36 is
	Port(clk :in STD_LOGIC;
		 reset:in STD_LOGIC;
		 q 	:buffer STD_LOGIC_VECTOR(4 downto 0));
end Ejr36;

architecture Behavioral of Ejr36 is
begin
	process(clk, reset, q)
		begin
			if(reset='1' or q = "11111")then
				q<="00000";
			elsif(clk' event and clk='1')then
				q<=q+1;
			end if;
		end process;
end Behavioral;

