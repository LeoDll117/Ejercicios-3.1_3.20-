----------------------------------------------------------------------------------
-- Ejercicio 3.13
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity Ejer313 is
	Port(clk : in STD_LOGIC;
			  x: in STD_LOGIC;
			  S: out STD_LOGIC);
end Ejer313;
architecture Behavioral of Ejer313 is
	type Ejer313 is(A, B, C, D);
	signal presente, futuro: Ejer313;
	begin
		pro1: process(presente, x)
		begin
			case presente is 
				when A =>
					if x='1' then
						futuro <=B;
						S<='0';
					else
						futuro<=D;
						S<='0';
					end if;
				when B=>
					if x='1' then
						futuro<=C;
						S<='0';
					else
						futuro<=D;
						S<='0';
					end if;
				when C=>
					if x='0' then
						futuro<=D;
						S<='0';
					else
						futuro<=B;
						S<='0';
					end if;
				when D=>
					if x='0' then
						futuro<=D;
						S<='0';
					else
						futuro<=A;
						S<='1';
					end if;
			end case;
		end process pro1;
		pro2: process(clk)
		begin
			if(clk' event and clk='1')then
				presente<=futuro;
			end if;
		end process pro2;
end Behavioral;