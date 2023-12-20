library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity main is
    Port ( clk : in  STD_LOGIC;
           x : out  STD_LOGIC_VECTOR (19 downto 0));
end main;

architecture Behavioral of main is

component lsfr32bit is
	 Generic (initial_value : STD_LOGIC_VECTOR(15 downto 0) := (others=>'1')); 
    Port ( clk : in  STD_LOGIC;
           x : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

signal f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15,f16 : STD_LOGIC_VECTOR (15 downto 0) := (others=>'0');
signal a1,a2,a3,a4,a5,a6,a7,a8 : UNSIGNED(16 downto 0) := (others=>'0');
signal b1,b2,b3,b4 : UNSIGNED(17 downto 0) := (others=>'0');
signal c1,c2 : UNSIGNED(18 downto 0) := (others=>'0');

begin

unit1 : lsfr32bit
	generic map ( initial_value => std_logic_vector(to_unsigned(26529000 ,16)))
	port map ( clk => clk,
				  x   => f1);
unit2 : lsfr32bit
	generic map ( initial_value => std_logic_vector(to_unsigned(36913000 ,16)))
	port map ( clk => clk,
				  x   => f2);
unit3 : lsfr32bit
	generic map ( initial_value => std_logic_vector(to_unsigned(34596000 ,16)))
	port map ( clk => clk,
				  x   => f3);
unit4 : lsfr32bit
	generic map ( initial_value => std_logic_vector(to_unsigned(24770000 ,16)))
	port map ( clk => clk,
				  x   => f4);
unit5 : lsfr32bit
	generic map ( initial_value => std_logic_vector(to_unsigned(785646024 ,16)))
	port map ( clk => clk,
				  x   => f5);
unit6 : lsfr32bit
	generic map ( initial_value => std_logic_vector(to_unsigned(103050000 ,16)))
	port map ( clk => clk,
				  x   => f6);
unit7 : lsfr32bit
	generic map ( initial_value => std_logic_vector(to_unsigned(380750000 ,16)))
	port map ( clk => clk,
				  x   => f7);				  
unit8 : lsfr32bit
	generic map ( initial_value => std_logic_vector(to_unsigned(123154548 ,16)))
	port map ( clk => clk,
				  x   => f8);
unit9 : lsfr32bit
	generic map ( initial_value => std_logic_vector(to_unsigned(210410000 ,16)))
	port map ( clk => clk,
				  x   => f9);
unit10 : lsfr32bit
	generic map ( initial_value => std_logic_vector(to_unsigned(721241599 ,16)))
	port map ( clk => clk,
				  x   => f10);
unit11 : lsfr32bit
	generic map ( initial_value => std_logic_vector(to_unsigned(420340000 ,16)))
	port map ( clk => clk,
				  x   => f11);
unit12 : lsfr32bit
	generic map ( initial_value => std_logic_vector(to_unsigned(306100000 ,16)))
	port map ( clk => clk,
				  x   => f12);
unit13 : lsfr32bit
	generic map ( initial_value => std_logic_vector(to_unsigned(214950000 ,16)))
	port map ( clk => clk,
				  x   => f13);
unit14 : lsfr32bit
	generic map ( initial_value => std_logic_vector(to_unsigned(202330000 ,16)))
	port map ( clk => clk,
				  x   => f14);
unit15 : lsfr32bit
	generic map ( initial_value => std_logic_vector(to_unsigned(256061087 ,16)))
	port map ( clk => clk,
				  x   => f15);
unit16 : lsfr32bit
	generic map ( initial_value => std_logic_vector(to_unsigned(292900000 ,16)))
	port map ( clk => clk,
				  x   => f16);
a1 <= unsigned(f1(15)&f1) + unsigned(f2(15)&f2);
a2 <= unsigned(f3(15)&f3) + unsigned(f4(15)&f4);
a3 <= unsigned(f5(15)&f5) + unsigned(f6(15)&f6);
a4 <= unsigned(f7(15)&f7) + unsigned(f8(15)&f8);
a5 <= unsigned(f9(15)&f9) + unsigned(f10(15)&f10);
a6 <= unsigned(f11(15)&f11) + unsigned(f12(15)&f12);
a7 <= unsigned(f13(15)&f13) + unsigned(f14(15)&f14);
a8 <= unsigned(f15(15)&f15) + unsigned(f16(15)&f16);

b1 <= (a1(16)&a1) + (a2(16)&a2);
b2 <= (a3(16)&a3) + (a4(16)&a4);
b3 <= (a5(16)&a5) + (a6(16)&a6);
b4 <= (a7(16)&a7) + (a8(16)&a8);

c1 <= (b1(17)&b1) + (b2(17)&b2);
c2 <= (b3(17)&b3) + (b4(17)&b4);

x <= std_logic_vector((c1(18)&c1) + (c2(18)&c2));

end Behavioral;