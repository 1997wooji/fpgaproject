library verilog;
use verilog.vl_types.all;
entity folder is
    port(
        valid           : out    vl_logic;
        clk             : in     vl_logic;
        pushen          : in     vl_logic;
        led             : out    vl_logic_vector(7 downto 0);
        oneseg          : out    vl_logic_vector(6 downto 0);
        slidesw         : in     vl_logic_vector(7 downto 0);
        regout          : out    vl_logic_vector(7 downto 0);
        threeseg        : out    vl_logic_vector(6 downto 0);
        twoseg          : out    vl_logic_vector(6 downto 0)
    );
end folder;
