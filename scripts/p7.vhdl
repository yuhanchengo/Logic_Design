library ieee;
use ieee.std_logic_1164.all; 


Entity diff_all is
port (A, CLK : in std_logic;
UP_out,DN_out,UD_out: out std_logic);
end diff_all;


architecture behavior of diff_all is
signal D0,D1: std_logic;
BEGIN
PROCESS (clk)
	begin
		if CLK'event and CLK='1' then
			D0 <= A;
			D1 <= D0;
		end if;
	END PROCESS;
	UP_out<=D0 and (not D1); 
	DN_out<=(not D0) and D1;
	UD_out<=D0 xor D1;
end behavior;
