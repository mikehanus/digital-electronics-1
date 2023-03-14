# Lab 5: Michal Hanus

### D & T Flip-flops

1. Screenshot with simulated time waveforms. Try to simulate both D- and T-type flip-flops in a single testbench with a maximum duration of 350 ns, including reset. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

![output_t_d.png](output_t_d.png)

### JK Flip-flop

1. Listing of VHDL architecture for JK-type flip-flop. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture behavioral of t_ff_rst is
    signal sig_q : std_logic;
begin
    p_t_ff_rst : process (clk) is
    begin
        if rising_edge(clk) then
            if t = '1' then
                sig_q <= sig_q nor rst;
            end if;
        end if;
    end process p_t_ff_rst;

    q     <= sig_q;
    q_bar <= not sig_q;
end architecture behavioral;
```

### Shift register

1. Image of `top` level schematic of the 4-bit shift register. Use four D-type flip-flops and connect them properly. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components and internal signals!

![output_shifter.pngfigure](output_shifter.png)
