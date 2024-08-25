library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;

entity multipliers_tb is
--  Port ( );
end multipliers_tb;

architecture Behavioral of multipliers_tb is
    signal in_a :       std_logic_vector (15 downto 0);
    signal in_b :       std_logic_vector (15 downto 0);
    signal output :     std_logic_vector (15 downto 0);
    signal clk_in :     std_logic := '0';
    signal clk :        std_logic;
    constant PERIOD :   TIME := 8ns;
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

input: process begin
    in_a <= x"0000"; in_b <= x"0000"; wait for (500 ns);
    in_a <= x"0003"; in_b <= x"0005"; wait for (500 ns);
    in_a <= x"0004"; in_b <= x"0006"; wait;
end process;

end Behavioral;
