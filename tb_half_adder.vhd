-- https://vhdlguide.readthedocs.io/en/latest/vhdl/testbench.html#fig-half-adder-simple-tb

library ieee;
use ieee.std_logic_1164.all;

entity tb_half_adder is 
end tb_half_adder;

architecture tb of tb_half_adder is 
   signal a,b :std_logic;
   signal sum,carry: std_logic;

begin 
   UUT : entity work.half_adder port map (a => a, b => b, sum => sum, carry => carry);
   
   a <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns;
   b <= '0', '1' after 40 ns;
end tb;
