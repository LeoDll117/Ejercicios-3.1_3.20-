----------------------------------------------------------------------------------
--Ejercicio 3.18
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ejer318 is
    Port ( clk : in  STD_LOGIC;
           x : in  STD_LOGIC;
           Q : inout  STD_LOGIC_VECTOR (2 downto 0);
           z : out  STD_LOGIC);
end Ejer318;

architecture Behavioral of Ejer318 is
	type state is (A, B,C,D,E);
	signal presente, futuro: state;
begin
proce1: process(presente, x) begin
	case presente is
		when A=> ----
		if x='1' then
			futuro <= E;
			z<='0';
		else
			futuro <=B;
			z<='0';
		end if;
		when B=> ---
		if x='1' then
			futuro <=C;
			z<='1';
		else
			futuro<=A;
			z<='1';
		end if;
		when C=> ----
		if x='1' then
			futuro <=C;
			z<='1';
		else
			futuro<=B;
			z<='0';
		end if;
		when D=> ----
		if x='1' then
			futuro<=E;
			z<='0';
		else
			futuro<=C;
			z<='0';
		end if;
		when E => ----
		if x='1' then
			futuro<=A;
			z<='0';
		else
			futuro<=D;
			z<='1';
		end if;
	end case;
end process proce1;

proce2: process(clk)
begin
	if(clk' event and clk ='1')then
		presente <= futuro;
	end if;
end process proce2;
proce3: process(presente) 
begin
	case presente is 
		when A=> Q <="000";
		when B=> Q <="001";
		when C=> Q <="010";
		when D=> Q <="011";
		when E=> Q <="100";
	end case;
	end process proce3;

end Behavioral;






























