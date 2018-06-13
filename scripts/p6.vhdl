library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY half_adder IS
PORT(X, Y: IN STD_LOGIC;
CARRY, SUM: OUT STD_LOGIC);
END half_adder;

ARCHITECTURE behavior OF half_adder IS
BEGIN
  PROCESS (X,Y)
  begin
    IF X='0' AND Y='0' THEN CARRY<='0'; SUM<='0';
    ELSIF X='0' AND Y='1' THEN CARRY <='0'; SUM<='1';
    ELSIF X='1' AND Y='0' THEN CARRY <='0'; SUM<='1';
    ELSIF X='1' AND Y='1' THEN CARRY <='1'; SUM<='0';
    END IF;
  END PROCESS;
END behavior;
