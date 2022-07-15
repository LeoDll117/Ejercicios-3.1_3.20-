
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use ieee.std_logic_unsigned.all;
 
ENTITY tbEjer312 IS
END tbEjer312;
 
ARCHITECTURE behavior OF tbEjer312 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ejer312
    PORT(
         clk : IN  std_logic;
         RESET : IN  std_logic;
         ENABLE : IN  std_logic;
         SALIDA : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal RESET : std_logic := '0';
   signal ENABLE : std_logic := '0';

 	--Outputs
   signal SALIDA : std_logic_vector(5 downto 0);

   -- Clock period definitions
   constant period : time := 10 ns; ----
 
BEGIN
   process
   begin
		clk <= '0';
		wait for period/2;
		clk <= '1';
		wait for period/2;
   end process;
 
   uut: Ejer312 PORT MAP (
          clk => clk,
          RESET => RESET,
          ENABLE => ENABLE,
          SALIDA => SALIDA
        );
	process
   begin		

      wait for 50 ns;	
		
		RESET <= '1';
		wait for 30 ns;
		RESET <= '0';
		wait for 50 ns;
		
		ENABLE<='1';
		wait for 30 ns;
		ENABLE <='0';
		wait for 500 ns;
		
		ENABLE<='1';
		wait for 30 ns;
		ENABLE<='0';
		wait for 30 ns;
		
		ENABLE<='1';
		wait for 30 ns;
		ENABLE<='0';
		wait for 100 ns;
		
		RESET <='1';
		wait for 30 ns;
		RESET<='0';
		WAIT;

   end process;

END;
