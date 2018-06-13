LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY updown_counter is
PORT(CLK, DIR: IN STD_LOGIC;
Q :OUT STD_LOGIC_VECTOR(0 TO 6));
END updown_counter;

ARCHITECTURE BEHAVIORAL OF updown_counter IS
	SIGNAL counter : std_logic_vector(3 downto 0) := (OTHERS => '0');
BEGIN
	process(clk)
	BEGIN
		IF CLK'event AND CLK='1' THEN
			IF DIR='1' THEN
				counter <= counter + 1;
			ELSE
				counter <= counter - 1;
			END IF;
		END IF;
	END PROCESS;

	with counter select
Q <="0000001" when "0000",
	"1001111" when "0001",
	"0010010" when "0010",
	"0000110" when "0011",
	"1001100" when "0100",
	"0100100" when "0101",
	"0100000" when "0110",
	"0001111" when "0111",
	"0000000" when "1000",
	"0000100" when "1001",
	"0001000" when "1010",
	"1100000" when "1011",
	"0110001" when "1100",
	"1000010" when "1101",
	"0110000" when "1110",
	"0111000" when others;
END BEHAVIORAL;
