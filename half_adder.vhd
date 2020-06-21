--https://vhdlguide.readthedocs.io/en/latest/vhdl/testbench.html#fig-half-adder-simple-tb

library ieee;
use ieee.std_logic_1164.all;

entity half_adder is 
  port (
    a: in std_logic;
    b: in std_logic;
    sum: out std_logic;
    carry : out std_logic
);
end half_adder;

architecture arch of half_adder is 
begin 
  sum <= a xor b;
  carry <= a and b;

end arch;


