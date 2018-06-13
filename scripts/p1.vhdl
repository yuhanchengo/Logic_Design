library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY decoder_2_4 IS
PORT(S1, S0: IN STD_LOGIC;
m0, m1, m2, m3: OUT STD_LOGIC);
END decoder_2_4;

ARCHITECTURE dataflow OF decoder_2_4 IS
BEGIN
  m0 <= (not S1) and (not S0);
  m1 <= (not S1) and (S0);
  m2 <= (S1) and (not S0);
  m3 <= S1 and S0;
END dataflow;
