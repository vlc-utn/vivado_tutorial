library work;
library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use STD.textio.all;
	use IEEE.std_logic_textio.all;
	use IEEE.NUMERIC_STD.ALL;

entity file_tb is
--  Port ( );
end file_tb;

architecture Behavioral of file_tb is
    constant PATH: string := "input_data.mem";
	constant PERIOD : time := 8ns;
	
	-- Component signals
    signal in_a :       std_logic_vector (15 downto 0);
    signal in_b :       std_logic_vector (15 downto 0);
    signal output :     std_logic_vector (15 downto 0);
    signal clk :        std_logic;
    signal clk_in :     std_logic := '0';
begin

multiplier_instance: entity work.multipliers_wrapper
PORT MAP (
    A_0 => in_a,
    B_0 => in_b,
    P_0 => output,
    clk => clk,
    sys_clock => clk_in
);

clock: process begin
    clk_in <= not clk_in; wait for PERIOD/2;
end process;

fileIO : process
    -- Variables used to read the flile
	file file_handler:     text;
	variable file_status:  file_open_status;
	variable buffer_line:  line;               -- Holds a line from the file
	variable spacer:       character;          -- Placeholder to discard the spacer between values
	variable file_rows:    integer := 1;       -- Current row of the file. Starts at 1 because line zero is used as metadata
	
    -- These variables should be identical to the component signals, but with the "file_xx" prefix.
	variable file_in_a:    std_logic_vector (15 downto 0);
	variable file_in_b:    std_logic_vector (15 downto 0);
	variable file_output:  std_logic_vector (15 downto 0);	
    
begin
	file_open (file_status, file_handler, PATH, READ_MODE);
	assert (file_status = OPEN_OK) report ">>> Could not open the file" severity failure;
	readLine (file_handler, buffer_line);  -- Discard header
	wait until falling_edge(clk);          --Load values before next clock cycle
    
    
	file_reading_loop: while (not endfile(file_handler) ) loop
    	readLine (file_handler, buffer_line);
   	 
   	    -- Values are stored in the file like: value_a;value_b;value_c
    	read (buffer_line, file_in_a);
    	read (buffer_line, spacer);
    	read (buffer_line, file_in_b);
    	read (buffer_line, spacer);
    	read (buffer_line, file_output);
   	 
   	    -- Assign variables to component's inputs
    	in_a <= file_in_a;
    	in_b <= file_in_b;
    	   	 
    	wait until rising_edge(clk);
    	assert (file_output = output) 
    	   report ">>> Output mismatch on line: " & INTEGER'image(file_rows) & 
    	       ". Output = " & INTEGER'image(to_integer(signed(output))) & 
    	       " ExpectedOut = " & INTEGER'image(to_integer(signed(file_output)))
    	   severity failure;
 
    	file_rows := file_rows + 1;
   	 
	end loop file_reading_loop;
    
    report ">>> Test Successful!" severity note;
    
	file_close (file_handler);
	wait;
end process;

end Behavioral;
