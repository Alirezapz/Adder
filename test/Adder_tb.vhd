library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
 
ENTITY Adder_tb IS
	Generic(
		inputWidth			: natural;
		outputWidth			: natural
	);
END Adder_tb;
 
ARCHITECTURE behavior OF Adder_tb IS 
 
COMPONENT Adder
    Generic(
		inputWidth			: natural;
		outputWidth			: natural
	);
	Port(
		clk					: in std_logic;
		rst					: in std_logic;
		
		dataIn				: in signed(inputWidth - 1 downto 0);
		inputRdy			: in std_logic;
		
		sumOut				: out signed(outputWidth - 1 downto 0);
		outputRdy			: out std_logic
	);
END COMPONENT;
    
   constant clk_period 			: time := 10 ns;

	signal clk					: std_logic;
	signal rst					: std_logic;
								  
	signal dataIn				: signed(inputWidth - 1 downto 0);
	signal inputRdy				: std_logic;
	
	signal sumOut				: signed(outputWidth - 1 downto 0);
	signal outputRdy			: std_logic;
 
BEGIN
 
adderInst: Adder 
    Generic Map(
		inputWidth			=> inputWidth,
		outputWidth			=> outputWidth
	)
	Port Map(
		clk					=> clk,
		rst					=> rst,
		
		dataIn				=> dataIn,
		inputRdy			=> inputRdy,
		
		sumOut				=> sumOut,
		outputRdy			=> outputRdy
	);

	clk_gen :process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process;
 
	process
		file input_file 	: text open read_mode is "../test/input_data.txt";
		variable dataLine 	: line;
		variable data 		: integer;
	begin
		
		--ToDo
		
		wait;
	end process;
	
	process(clk)
		file output_file 	: text open write_mode is "../test/output_data.txt";
		variable dataLine 	: line;
		variable data 		: integer;
	begin
		if rising_edge(clk) then
			
			--ToDo
			
		end if;
	end process;

END;
