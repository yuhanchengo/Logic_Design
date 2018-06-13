library ieee;
use ieee.std_logic_1164.all;


entity mul2 is
port ( a,b:in std_logic_vector(1 downto 0);
x:out std_logic_vector(3 downto 0));
End mul2;


architecture dataflow of mul2 is begin
x(0)<=a(0) and b(0);
x(1)<=(a(1) and b(0)) xor (a(0) and b(1));
x(2)<=(a(1) and b(1)) xor (a(1) and a(0) and b(1) and b(0)); x(3)<=a(1) and a(0) and b(1) and b(0);
end dataflow;
