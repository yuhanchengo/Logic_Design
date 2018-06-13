library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_ARITH.all;

entity alu IS
PORT(A,B: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
S: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
Y: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
END alu;


ARCHITECTURE dataflow of alu IS
BEGIN
  with S SELECT
    Y <= (A+B) WHEN "000",
        (A-B) WHEN "001",
        A and B WHEN "010",
        A or B WHEN "011",
        (NOT A) WHEN "100",
        A XOR B WHEN "101",
        A WHEN others;
END dataflow;
