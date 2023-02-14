# Lab 1: Michal Hanus:

### De Morgan's laws

1. Equations of all three versions of logic function f(c,b,a):

$$f_{\textup{ORIG}}(c,b,a) = \overline{b}\cdot a + c\cdot\overline{(b+\overline{a})} = \overline{b} \cdot a $$

$$ f_{\textup{(N)AND}}(c,b,a) = \overline{b} \cdot a $$

$$f_{\textup{(N)OR}}(c,b,a) = \overline{\overline{a} + b} $$

2. Listing of VHDL architecture from design file (`design.vhd`) for all three functions. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture dataflow of gates is
begin
    f_orig_o <= (not(b_i) and a_i);
    f_nand_o <= ((b_i nand b_i) nand a_i) nand ((b_i nand b_i) nand a_i);
    f_nor_o  <= (a_i nor a_i) nor b_i;
end architecture dataflow;
```

3. Complete table with logic functions' values:

   | **c** | **b** |**a** | **f_ORIG** | **f_(N)AND** | **f_(N)OR** |
   | :-: | :-: | :-: | :-: | :-: | :-: |
   | 0 | 0 | 0 |  |  |  |
   | 0 | 0 | 1 |  |  |  |
   | 0 | 1 | 0 |  |  |  |
   | 0 | 1 | 1 |  |  |  |
   | 1 | 0 | 0 |  |  |  |
   | 1 | 0 | 1 |  |  |  |
   | 1 | 1 | 0 |  |  |  |
   | 1 | 1 | 1 |  |  |  |

### Distributive laws

1. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![signaly.pgn](signaly.png)

2. Link to your public EDA Playground example:

   [https://edaplayground.com/x/Sibu](https://edaplayground.com/x/Sibu)

