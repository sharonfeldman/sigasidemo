#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3

#**************************************************************
# Create Clocks
#**************************************************************

create_clock –name sys_clk -period 5  [ get_ports { sys_clk } ]
create_clock –name mem_clk -period 2  [ get_ports { mem_clk } ]
create_clock –name vidin_clk -period 37 [ get_ports { vidin_clk } ]
create_clock –name vidout_clk -period 37 [ get_ports { vidout_clk } ]
create_clock –name datain_clk -period 10 [ get_ports { datain_clk } ]

set_clock_groups -asynchronous -group [get_clocks –include_generated_clocks sys_clk] \
-group [get_clocks –include_generated_clocks mem_clk} ] \
-group [get_clocks –include_generated_clocks vidin_clk} ] \
-group [get_clocks –include_generated_clocks vidout_clk} ] \
-group [get_clocks –include_generated_clocks datain_clk} ]

#**************************************************************
# Automatically apply a generate clock on the output of phase-locked loops (PLLs) 
# This command can be safely left in the SDC even if no PLLs exist in the design
#**************************************************************

derive_pll_clocks


#create_generated_clocks

#set_property ASYNC_REG TRUE [get_cells [list sync0_reg sync1_reg]]
#**************************************************************
# Constrain the input I/O path
#**************************************************************

set_input_delay  -clock vidin_clk  -max 3 [ get_ports { vidin* vidin_v vidin_sf vidin_ef } ]

set_input_delay  -clock vidin_clk  -min 2 [ get_ports { vidin* vidin_v vidin_sf vidin_ef } ]

#**************************************************************
# Constrain the output I/O path
#**************************************************************

set_output_delay -clock vidout_clk -max 3 [get_ports { vidout* vidout_v vidout_sf vidout_ef } ]

set_output_delay -clock vidout_clk -min 2 [get_ports { vidout* vidout_v vidout_sf vidout_ef } ]

set_input_delay  -clock datain_clk -max 3 [get_ports { datain* datain_v datain_sf datain_ef } ]

set_input_delay  -clock datain_clk -min 2 [get_ports { datain* datain_v datain_sf datain_ef } ]

