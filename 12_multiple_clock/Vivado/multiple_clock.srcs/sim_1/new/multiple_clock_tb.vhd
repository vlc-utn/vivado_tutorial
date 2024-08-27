library work;
library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use STD.textio.all;
	use IEEE.std_logic_textio.all;
	use IEEE.NUMERIC_STD.ALL;

entity multiple_clock_tb is
--  Port ( );
end multiple_clock_tb;

architecture Behavioral of multiple_clock_tb is
    constant PATH: string := "data.mem";
	constant PERIOD : time := 10ns;
	
	-- Component signals
	signal clk :           std_logic;
	signal input_0 :       std_logic_vector(7 downto 0);
	signal out_0 :         std_logic;
	signal sys_clk :       std_logic := '0';
	signal valid_in_0 :    std_logic;
	signal valid_out_0 :   std_logic;
	signal rst_0 :         std_logic := '0';
	    
begin

ip_instance: entity work.design_1_wrapper
PORT MAP (
    clk => clk,
    input_0 => input_0,
    out_0 => out_0,
    sys_clk => sys_clk,
    valid_in_0 => valid_in_0,
    valid_out_0 => valid_out_0,
    rst_0 => rst_0
);

clock: process begin
    sys_clk <= not sys_clk; wait for PERIOD/2;
end process;

fileIO : process
    -- Variables used to read the flile
	file file_handler:     text;
	variable file_status:  file_open_status;
	variable buffer_line:  line;               -- Holds a line from the file
	variable spacer:       character;          -- Placeholder to discard the spacer between values
	variable file_rows:    integer := 1;       -- Current row of the file. Starts at 1 because line zero is used as metadata
	
    -- These variables should be identical to the component signals, but with the "file_xx" prefix.
	variable file_valid_in:    std_logic;
	variable file_input:       std_logic_vector (7 downto 0);
	variable file_valid_out:   std_logic;	
	variable file_output:      std_logic;
    
begin
    -- Reset system
    rst_0 <= '0';
    wait until rising_edge(clk);
    rst_0 <= '1';
    wait until rising_edge(clk); wait until rising_edge(clk);

	file_open (file_status, file_handler, PATH, READ_MODE);
	assert (file_status = OPEN_OK) report ">>> Could not open the file" severity failure;
	readLine (file_handler, buffer_line);  -- Discard header
	wait until falling_edge(clk);          --Load values before next clock cycle
    
    
	file_reading_loop: while (not endfile(file_handler) ) loop
    	readLine (file_handler, buffer_line);
   	 
   	    -- Values are stored in the file like: value_a;value_b;value_c
    	read (buffer_line, file_valid_in);
    	read (buffer_line, spacer);
    	read (buffer_line, file_input);
    	read (buffer_line, spacer);
    	read (buffer_line, file_valid_out);
    	read (buffer_line, spacer);
    	read (buffer_line, file_output);
   	 
   	    -- Assign variables to component's inputs
    	valid_in_0 <= file_valid_in;
    	input_0 <= file_input;
    	   	 
    	wait until rising_edge(clk);
    	
    	-- Compare outputs
       assert (file_output = out_0) 
       report ">>> Output mismatch on line: " & INTEGER'image(file_rows)
       severity failure;
 
    	file_rows := file_rows + 1;
   	 
	end loop file_reading_loop;
    
    report ">>> Test Successful!" severity note;
    
	file_close (file_handler);
	wait;
end process;

end Behavioral;
