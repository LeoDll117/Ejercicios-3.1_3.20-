--Ejercicio 3.1 flip flop jk 
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FlipFlopJK is
    Port ( j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q, qn : buffer  STD_LOGIC);
end FlipFlopJK;

architecture Behavioral of FlipFlopJK is
	begin
		process (clk) 
			begin
				if (clk' event and clk='1')then
					if(j='0' and k='0')then
						q <= q;
						qn <= qn;
					elsif(j='1' and k='0')then
						q <='1';
						qn <= '0';
					elsif(j='0' and k='1')then
						q<= '0';
						qn<= '1';
					else
						q<= not q;
						qn<= not qn;
					end if;
				end if;			
	end process;
end Behavioral;























