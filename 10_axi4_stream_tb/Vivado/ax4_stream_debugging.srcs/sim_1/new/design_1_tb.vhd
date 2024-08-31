library work;
library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use STD.textio.all;
	use IEEE.std_logic_textio.all;
	use IEEE.NUMERIC_STD.ALL;

entity design_1_tb is
--  Port ( );
end design_1_tb;

architecture Behavioral of design_1_tb is
    constant PATH_OUTPUT_FILE: string := "data_out.mem";
    constant PATH_INPUT_FILE: string := "data_in.mem";
	constant PERIOD : time := 10ns;
	
	-- Component signals
    signal data_out_0 :         STD_LOGIC_VECTOR ( 7 downto 0 );
    signal first_in_0 :         STD_LOGIC := '0';
    signal rst_0 :              STD_LOGIC := '1';
    signal s_axis_tdata_0 :     STD_LOGIC_VECTOR ( 7 downto 0 );
    signal s_axis_tlast_0 :     STD_LOGIC := '0';
    signal s_axis_tready_0 :    STD_LOGIC;
    signal s_axis_tvalid_0 :    STD_LOGIC := '0';
    signal sys_clk :            STD_LOGIC := '0';
    signal valid_out_0 :        STD_LOGIC;
    signal clk :                STD_LOGIC;
    
begin

design_instance: entity work.design_1_wrapper
PORT MAP (
    data_out_0 => data_out_0,
    first_in_0 => first_in_0,
    rst_0 => rst_0,
    s_axis_tdata_0 => s_axis_tdata_0,
    s_axis_tlast_0 => s_axis_tlast_0,
    s_axis_tready_0 => s_axis_tready_0,
    s_axis_tvalid_0 => s_axis_tvalid_0,
    sys_clk => sys_clk,
    valid_out_0 => valid_out_0,
    clk => clk
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
	variable file_data_in:         std_logic_vector (7 downto 0);
	variable file_data_out:        std_logic_vector (7 downto 0);
    
begin
    -- Reset IP Cores
    rst_0 <= '0'; wait until rising_edge(clk);
    rst_0 <= '1'; wait until rising_edge(clk); wait until rising_edge(clk);
    wait for PERIOD*16;
    
    ----------------------------------
    -- Read input file and load FIFO
    ----------------------------------
    file_open (file_status, file_handler, PATH_INPUT_FILE);
    assert (file_status = OPEN_OK) report ">>> Could not open input file" severity failure;
    readLine (file_handler, buffer_line); -- Discard header
    wait until falling_edge(clk);
    
    file_input_loop: while (not endfile(file_handler) ) loop
    
        -- Wait for AXI4-Stream TVALID before writing any values.
        if (s_axis_tready_0 = '0') then
            wait until rising_edge(s_axis_tready_0);
        end if;
    
        readLine(file_handler, buffer_line);
        
        -- Read values from input file
        read(buffer_line, file_data_in);
        s_axis_tdata_0 <= file_data_in;
        
        -- TLAST and TVALID are always held "up"
        s_axis_tlast_0 <= '0';
        s_axis_tvalid_0 <= '1';
        
        -- If it is the last element, rise the TLAST value;
        if (endfile(file_handler)) then
            s_axis_tlast_0 <= '1';
        end if;
        
        wait until rising_edge(clk);
        file_rows := file_rows + 1;
            
    end loop file_input_loop;
    
    -- Lower tvalid and tlast
    s_axis_tlast_0 <= '0';
    s_axis_tvalid_0 <= '0';
    file_close (file_handler);
    
    ---------------------------------
    -- Setting initialization values
    ---------------------------------
    first_in_0 <= '1';
    wait until rising_edge(clk);
    first_in_0 <= '0';

    ---------------------------------
    -- Read values from output file
    ---------------------------------
    file_rows := 1;
	file_open (file_status, file_handler, PATH_OUTPUT_FILE, READ_MODE);
	assert (file_status = OPEN_OK) report ">>> Could not open output file" severity failure;
	readLine (file_handler, buffer_line);  -- Discard header

    
	file_reading_loop: while (not endfile(file_handler) ) loop
	   
        if (valid_out_0 = '0') then
            wait until rising_edge(valid_out_0);
            wait until falling_edge(clk);
        end if;
        
    	readLine (file_handler, buffer_line);
    	read (buffer_line, file_data_out);
    	
    	-- Compare outputs
       assert (file_data_out = data_out_0) 
       report ">>> Output mismatch on line: " & INTEGER'image(file_rows)
       severity failure;

        wait until falling_edge(clk);
    	file_rows := file_rows + 1;
   	 
	end loop file_reading_loop;
    
    report ">>> Test Successful!" severity note;
    
	file_close (file_handler);
	wait;
end process;

end Behavioral;

