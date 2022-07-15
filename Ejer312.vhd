----------------------------------------------------------------------------------
--Ejercicio 3.12
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ejer312 is
    Port ( clk : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           ENABLE : in  STD_LOGIC;
           SALIDA : out  STD_LOGIC_VECTOR (5 downto 0));
end Ejer312;

architecture Behavioral of Ejer312 is
	signal Q, D: STD_LOGIC_VECTOR (5 downto 0);
	begin
		process(clk)
		begin
			if(clk' event and clk='1')then
				if(RESET='1')then
					Q<="000000";
				else
					Q<=D;
				end if;
			end if;
		end process;
	D<= "000000" when Q = 245 else
	Q+'1';
	 with ENABLE select
	 SALIDA <= Q when '0',
		"000000" when others;
end Behavioral;

