---------------------------------------------------------------------------------
--Ejercicio 3.14
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity Ejer314 is
	Port(clk : in STD_LOGIC;
		  x : in STD_LOGIC;
		  y : out STD_LOGIC_VECTOR(2 downto 0));
		  
end Ejer314;
architecture Behavioral of Ejer314 is
	type Ejer314 is(g1, g2, g3, g4, g5, g6, g7, g8);
	signal presente, futuro: Ejer314;
begin
	proces1: process (presente, x)
	begin
		case presente is 
		when g1=> y <="000";
			if x='1' then
				futuro <= g2;
			else
				futuro <= g8;
			end if;
		when g2=> y <= "001";
			if x='1' then
				futuro <= g3;
			else
				futuro <= g1;
			end if;
		when g3 => y <= "011";
			if x='1' then
				futuro <= g4;
			else
				futuro <= g2;
			end if;
		when g4 => y <="010";
			if x='1' then
				futuro<= g5;
			else
				futuro<= g3;
			end if;
		when g5 => y <="110";
			if x='1' then
				futuro<= g6;
			else
				futuro<= g4;
			end if;
		when g6 => y <="111";
			if x='1' then
				futuro<= g7;
			else
				futuro <= g5;
			end if;
		when g7 => y <= "101";
			if x='1' then
				futuro<= g8;
			else
				futuro<=g6;
			end if;
		when g8 => y <="110";
			if x='1' then
				futuro<= g1;
			else
				futuro<= g7;
			end if;
		end case;
	end process proces1;
	proces2: process(clk)
	begin
		if(clk' event and clk='1')then
			presente <= futuro;
		end if;
	end process proces2;
end Behavioral;
