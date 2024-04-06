library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity source is
    Port ( sw0 : in STD_LOGIC;
           sw1 : in STD_LOGIC;
           clk : in STD_LOGIC;
           led0 : out STD_LOGIC;
           led1 : out STD_LOGIC;
           led2 : out STD_LOGIC;
           led3 : out STD_LOGIC);
end source;

architecture Behavioral of source is

signal timer : std_logic_vector(27 downto 0);

begin

led0 <= sw0 AND sw1;
led1 <= sw0 OR sw1;
led2 <= timer(25);
led3 <= timer(26);

process (clk) is
begin
    if (rising_edge(clk)) then
    timer <= timer+1;
    end if;
end process;

end Behavioral;
