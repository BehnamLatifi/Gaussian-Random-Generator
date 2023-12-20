library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lsfr32bit is
	 Generic (initial_value : STD_LOGIC_VECTOR(15 downto 0) := (others=>'1')); 
    Port ( clk : in  STD_LOGIC;
           x : out  STD_LOGIC_VECTOR (15 downto 0));
end lsfr32bit;

architecture Behavioral of lsfr32bit is
	signal ff : STD_LOGIC_VECTOR (15 downto 0) := initial_value;
	signal s : STD_LOGIC_VECTOR (2 downto 0) := (others=>'0');
begin
	process(clk)
	begin
		if (clk'event and clk='1') then
			ff(0) <= s(2);
			ff(15 downto 1) <= ff(14 downto 0);
		end if;
	end process;
	s(0) <= ff(15) xor ff(14);
	s(1) <= s(0) xor ff(12);
	s(2) <= s(1) xor ff(3);
	x <= ff;
end Behavioral;