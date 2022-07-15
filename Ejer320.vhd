----------------------------------------------------------------------------------
--Ejercicio 3.20
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejer320 is
	Port(clk: in STD_LOGIC;
			coin: inout STD_LOGIC_VECTOR(4 downto 0);
			vuelto : inout STD_LOGIC_VECTOR(4 downto 0));
end Ejer320;

architecture Behavioral of Ejer320 is
	type state is(q0, q1, q2, q3);
	signal presente, futuro: state;
begin
	pro1: process(presente, coin)
	begin
		case presente is
		when q0=>
		vuelto<="00000";---
		if coin = "00101" then ---
			futuro<=q1;
		elsif coin ="01010" then---
			futuro<=q2;
		elsif coin ="10100" then ---
			futuro<=q3;
		else
			futuro<=q0;
		end if;
		when q1 =>
		vuelto <="00000";--
		if coin= "00101" then ---
			futuro<=q1;
		elsif coin ="01010" then ----
			futuro<=q2;
		elsif coin = "10100" then -----
			futuro<= q3;
		else
			futuro <= q0;
		end if;
		when q2 =>
		vuelto <="00101"; ---
		if coin="00101" then ---
			futuro<=q1;
		elsif coin = "01010" then ----
			futuro<=q2;
		elsif coin ="10100" then -----
			futuro<=q3;
		else
		futuro<=q0;
		end if;
		when q3 =>
		vuelto<= "01111";-----
		if coin = "00101" then ----
			futuro<=q1;
		elsif coin = "01010" then ----
			futuro<=q2;
		elsif coin = "10100" then ---
			futuro <= q3;
		else
			futuro <=q0;
		end if; 
		end case;
		end process pro1;
		pro2: process(clk) begin
		if(clk' event and clk='1')then
			presente<= futuro;
		end if;
		end process pro2;
		
end Behavioral;
