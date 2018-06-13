library ieee;
use ieee.std_logic_1164.all;

ENTITY moore IS
PORT( clk,x:IN STD_LOGIC;
		output		:OUT std_logic);
END moore;


-- S0: 001 --S1: 010 --S2: 011 --S3: 100
ARCHITECTURE behavior OF moore IS
TYPE State IS (s0,s1,s2,s3);
SIGNAL present_state: State;
SIGNAL next_state: State;
BEGIN
	state_comp: PROCESS(present_state)
	BEGIN
		CASE present_state IS
			WHEN s0 =>
				IF x='0' THEN
					next_state <= s0;
				ELSE
					next_state <= s1;
				END IF;
				output <= '1';
		 WHEN s1 =>
		 	IF  x='0' THEN
				next_state <= s3;
			ELSE
				next_state <= s2;
			END IF;
			output <= '0';
		 WHEN s2 =>
		 	IF x='0' THEN
				next_state <= s2;
			ELSE
				next_state <= s3;
			END  IF;
			output <= '1';
		 WHEN s3 =>
		 	IF x='0' THEN
				next_state <= s3;
			ELSE
				next_state <= s0;
			END IF;
		 	output <= '0';
	  END CASE;
	END PROCESS state_comp;

	state_clocking: PROCESS(clk)
	BEGIN
		IF clk'event and clk='1' THEN
			present_state <= next_state;
		END IF;
	END PROCESS state_clocking;
END behavior;
