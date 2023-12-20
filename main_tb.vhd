LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;
 
ENTITY main_tb IS
END main_tb;
 
ARCHITECTURE behavior OF main_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT main
    PORT(
         clk : IN  std_logic;
         x : OUT  std_logic_vector(19 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal x : std_logic_vector(19 downto 0);

   -- Clock period definitions
   constant clk_period : time := 2 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: main PORT MAP (
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
 
	output_fetch_process :process
	file     LogFile    : TEXT open WRITE_MODE is "logfile.log";
	variable LineBuffer : LINE;
	begin
		wait for 2 ns;
		write(LineBuffer, to_integer(signed(x)));
		writeline(LogFile, LineBuffer);
	end process;

end_process: process
begin
	--for i in 1 to 262144 loop
		--wait for 65535 ns;
	--end loop;
	wait for 131072 ns;
	wait for 1 ns;
	assert false
		report "Simulation completed"
	severity failure;
end process;
END;