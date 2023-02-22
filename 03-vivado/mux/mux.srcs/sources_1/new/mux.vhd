------------------------------------------------------------
--
--! @title Binary comparator
--! @author Tomas Fryza
--! Dept. of Radio Electronics, Brno Univ. of Technology, Czechia
--!
--! @copyright (c) 2020 Tomas Fryza
--! This work is licensed under the terms of the MIT license
--!
--! Four-bit binary comparator using when/else
--! assignments. The comparator can distinguish three states
--! between two 4-bit inputs: greater than, equal, and less than.
--!
--! Wavedrom example:
--! {signal: [
--! {name: 'b[3:0]', wave: 'x333333', data: ['0','3','8','9','a','7']},
--! {name: 'a[3:0]', wave: 'x333333', data: ['0','c','9','3','a','6']},
--! {},
--! {name: 'B_greater_A', wave: 'xl..hlh'},
--! {name: 'B_equals_A',  wave: 'xhl..hl'},
--! {name: 'B_less_A',    wave: 'xlh.l..'},
--! ]}
--
-- Hardware: Nexys A7-50T, xc7a50ticsg324-1L
-- Software: TerosHDL
--
------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for 4-bit binary comparator
------------------------------------------------------------

entity comparator_4bit is
  port (
    d           : in    std_logic_vector(2 downto 0); --! Input data D[2:0]
    c           : in    std_logic_vector(2 downto 0); --! Input data C[2:0]
    b           : in    std_logic_vector(2 downto 0); --! Input data B[2:0]
    a           : in    std_logic_vector(2 downto 0); --! Input data A[2:0]
    
    sel         : in    std_logic_vector(1 downto 0); --! Input data sel[1:0]
    
    f           : out    std_logic_vector(2 downto 0) --! Output data F[2:0]
  );
end entity comparator_4bit;

------------------------------------------------------------
-- Architecture body for 4-bit binary comparator
------------------------------------------------------------

architecture behavioral of comparator_4bit is

begin
  p_mux : process(a,b,c,d,sel)
  begin
      case sel is
        when "00" => f <= a ;
        when "01" => f <= b ;
        when "10" => f <= c ;
        when others => f <= d;
      end case;
  end process p_mux;

end architecture behavioral;