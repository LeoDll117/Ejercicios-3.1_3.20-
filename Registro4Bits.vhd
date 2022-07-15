----------------------------------------------------------------------------------
--Ejercicio 3.3 registro 4 bits
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registro4Bits is
    Port ( D : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end Registro4Bits;

architecture Behavioral of Registro4Bits is
	signal D1, D2, D3, D4 : STD_LOGIC;
	begin
		process(clk, D)
		begin
			if(rising_edge(clk))then
				D1<=D(0);
				D2<=D(1);
				D3<=D(2);
				D4<=D(3);
			else
			end if;
		end process;
				Q(0)<=D1;
				Q(1)<=D2;
				Q(2)<=D3;
				Q(3)<=D4;
end Behavioral;





















