----------------------------------------------------------------------------------
--Ejercicio 3.2 Flip Fliop T
--Leonardo Peralta
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FlipFlopT is
    Port ( T : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end FlipFlopT;

architecture Behavioral of FlipFlopT is
	signal tmp: std_logic;
	begin
	process(clk, clr)
		begin
		if(clr ='1')then
			tmp<='0';
		elsif(clk' event and clk='1')then
			if(T='0')then
				tmp<=tmp;
			elsif(T='1')then
				tmp<= not(tmp);
			end if;
		end if;
		end process;
	Q<=tmp;
end Behavioral;

