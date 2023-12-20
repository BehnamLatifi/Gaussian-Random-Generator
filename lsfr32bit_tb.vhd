LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY lsfr32bit_tb IS
END lsfr32bit_tb;
 
ARCHITECTURE behavior OF lsfr32bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lsfr32bit
    PORT(
         clk : IN  std_logic;
         x : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal x : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lsfr32bit PORT MAP (
          clk => clk,
          x => x
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
END;
