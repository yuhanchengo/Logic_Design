library IEEE;
use IEEE_STD_LOGIC_1164.all;

ENTITY decoder_3_8 IS
PORT( d0, d1, d2: IN STD_LOGIC;
y0,y1,y2,y3,y4,y5,y6,y7,y8: OUT STD_LOGIC
);
END decoder_3_8;

ARCHITECTURE dataflow OF decoder_3_8 IS
BEGIN
y0 <= (not d0) and (not d1) and (not d2);
y1 <= (d0) and (not d1) and (not d2);
y2 <= (not d0) and d1 and (not d2);
y3 <= (not d2) and d1 and d0;
y4 <= (d2) and (not d1) and (not d0);
y5 <= (d2) and (not d1) and d0;
y6 <= (d2) and (d1) and (not d0);
y7 <= (d2) and (d1) and (d0);
END dataflow;
