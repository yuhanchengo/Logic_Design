library IEEE;
use IEEE_STD_LOGIC_1164.all;

ENTITY multiplexer_4_1 IS
PORT(s1,s0,d0,d1,d2,d3: IN STD_LOGIC;
Y: OUT STD_LOGIC);
END multiplexer_4_1;

ARCHITECTURE dataflow OF multiplexer_4_1 IS
BEGIN
  Y <= ((not s1) and (not s0) and d0) or
       ((not s1) and s0 and d1) or
       (s1 and (not s0) and d2) or
       (s0 and s1 and d3);
END dataflow;
