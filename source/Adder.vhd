library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity Adder is
	Generic(
		inputWidth			: natural := 16;
		outputWidth			: natural := 20
	);
	Port(
		clk					: in std_logic;
		rst					: in std_logic;
		
		dataIn				: in signed(inputWidth - 1 downto 0);
		inputRdy			: in std_logic;
		
		sumOut				: out signed(outputWidth - 1 downto 0);
		outputRdy			: out std_logic
	);
end Adder;

architecture Behavioral of Adder is

begin

	--ToDo
    
end Behavioral;
