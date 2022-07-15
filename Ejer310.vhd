----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
--Ejercicio 3.10
--Leonardo Peralta 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity Ejer310 is
    Port ( C: in  STD_LOGIC;
           SAL1 : out  STD_LOGIC;
           SAL2 : out  STD_LOGIC;
			  Q : inout STD_LOGIC_VECTOR(3 downto 0):="0000";
			  clk: in STD_LOGIC);
			  
end Ejer310;

architecture Behavioral of Ejer310 is
begin
	process(clk, C)
	begin
		if(clk'event and clk='1')then
			if(C='0')then
				Q<=Q+1;
			if(Q="10001")then
				Q<="0000";
			end if;
			else
			Q<=Q-1;
			if(Q="0000")then
				Q<="1001";
			end if;
		end if;
	end if;
	end process;
	--
	process(Q) begin
	case Q is
	when "0000" =>
	if C ='0' then
		SAL1<='1';
		SAL2<='0';
	ELSE
		SAL1<='0';
		SAL2<='0';
	END IF;
	WHEN "0001" =>
	IF C='0' THEN
		SAL1<='0';
		SAL2<='0';
	ELSE
		SAL1<='0';
		SAL2<='1';
	END IF;
	WHEN "0010"=>
	IF C='0' THEN
		SAL1<='1';
		SAL2<='0';
	ELSE
		SAL1<='0';
		SAL2<='0';
	END IF;
	WHEN "0011"=>
	IF C='0' THEN
		SAL1<='0';
		SAL2<='0';
	ELSE
		SAL1<='0';
		SAL2<='1';
	END IF;                                    ---
	WHEN "0100"=>
	IF C= '0' THEN
		SAL1<='1';
		SAL2<='0';
	ELSE
		SAL1<='0';
		SAL2<='0';
	END IF;
	WHEN "0101" => 
	if C='0' then
		SAL1<='0';
		SAL2<='0';
	ELSE
		SAL1<='0';
		SAL2<='1';
	END IF;
	WHEN "0110" =>
	IF C='0' THEN
		SAL1<='1';
		SAL2<='0';
	ELSE
		SAL1<='0';
		SAL2<='0';
	END IF;
	WHEN "0111" =>
	IF C='0' THEN
		SAL1<='0';
		SAL2<='0';
	ELSE
		SAL1<='0';
		SAL2<='1';
	END IF;
	WHEN "1000" =>
		SAL1<='0';
		SAL2<='0';
	WHEN "1001" =>
	IF C='0' THEN
		SAL1<='0';
		SAL2<='0';
	ELSE
		SAL1<='0';
		SAL2<='1';
	END IF;
	when others =>
		SAL1<='0';
		SAL2<='0';
	END CASE;
	END PROCESS;
end Behavioral;
