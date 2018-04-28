##return list {f l}
proc rd_csv_file {} {
    set retfll [list]
    set pp {toplevel_order.csv}
    #library,file
    set regex {^(.*)[,][ ]((?:[A-Za-z0-9\_\:\\\/ ]+)(?:[.](?:VHD|V|SV|vhd|v|sv)))}
    set fp [open $pp r]
    set file_data [read $fp]    
    close $fp
    
    set data [split $file_data "\n"]
    foreach line $data {
        set fl [list]
        if {[regexp $regex $line value first second]} {
            lappend fl $second $first 
            lappend retfll $fl
        }
    }
    return $retfll
}

## return all libs found in csv file
proc get_libs_from_csv_file {} {
    set llist [rd_csv_file]
    set libsl [list]
    foreach ll $llist {
        set lib [lindex $ll 1]
        if { !($lib in $libsl) } {
            lappend libsl [lindex $ll 1]
        }
    }
    return $libsl
}

#vhdl
#verilog
proc findlang { file }
{
    #vhdl regex
    set regex {^((?:[A-Za-z0-9\_\:\\\/ ]+)(?:[.](?:VHD|vhd)))}
    if {[regexp $regex $file value first second]} {
        return VHDL
    } else {
        return Verilog
    }
}

## Technology Settings
setup_design -manufacturer Altera -family "Cyclone V" -part 5CGXFC7D7F31C -speed 8_H7


set files [rd_csv_file]
set libraries [get_libs_from_csv_file]
set top_level_file [ genpath  [lindex [lindex $files [expr [llength $files]-1]] 0]]

## Input File Settings
set_input_dir [pwd/precision]


#Add files to projects
foreach fi $files {
    set precsisioncmd ""
    set f [lindex $fi 0]
    set l [lindex $fi 1]
    set lang [ findlang $f ]
    append precsisioncmd "add_input_file -format "
    append precsisioncmd $lang
    append precsisioncmd " -work "
    append precsisioncmd $l 
    append precsisioncmd " "
    append precsisioncmd $f
    append precsisioncmd "\n" 
    puts $precsisioncmd
}         

add_input_file -format Verilog -work work {./src/bcd2led.v}
add_input_file -format VHDL -work work {./src/bin2bcd.vhd}
add_input_file -format Verilog -work work {./src/bjack_c.v}
add_input_file -format Verilog -work work {./src/blackjack.v}
add_input_file -format Verilog -work work {./src/gates.v}
add_input_file -format Verilog -work work {./src/gen.v}
add_input_file -format VHDL -work work {./src/johnson8.vhd}
add_input_file -format Verilog -work work {./src/mux.v}

## Output File Settings
setup_design -basename="MIXED_BJACK"


## Design Settings
setup_design -addio
setup_design -addio_unused=false
setup_design -vhdl=false
setup_design -verilog=false
setup_design -edif=false
setup_design -vqm
setup_design -vendor_constraint_file
setup_design -transformations
setup_design -retiming=false
setup_design -altera_dsp_retiming=false
setup_design -pa_io_pin_location
setup_design -advanced_fsm_optimization
setup_design -compile_for_area=false
setup_design -compile_for_timing=false
setup_design -safe_fsm_type="none"
setup_design -encoding="auto"
setup_design -resource_sharing
setup_design -array_bounds_check=false
setup_design -preserve_user_encoding=false
setup_design -transform_tristates="auto"
setup_design -process_tristates=false
setup_design -edif_bus_extraction_style="%s(%d:%d)"
setup_design -black_box_flow=false
setup_design -bottom_up_flow=false
setup_design -white_box_flow
setup_design -retain_inouts
setup_design -frequency=""
setup_design -radhardmethod="none"
setup_design -input_delay=""
setup_design -output_delay=""
setup_design -boundary_opt
setup_design -partition_size="80000"
setup_design -global_clock_limit=""
setup_design -infer_gsr
setup_design -infer_muxed_arith_operators
setup_design -clearbox=false
setup_design -search_path {}
setup_design -libext=""
setup_design -y {}
setup_design -mem_init_path {}
setup_design -altera_mangle_prefix="_MGC"
setup_design -enable_synthoff_regions=false
setup_design -overrides {}
setup_design -hdl { verilog systemverilog vhdl_2002 }
setup_design -defines {}
setup_design -automap_work=false
setup_design -error_design_contention=false
setup_design -all_file_cunit_scope=false
setup_design -sv31acompat=false
setup_design -vcs_compat=false
setup_design -compile_udps=false
setup_design -relaxed_compile=false
setup_design -vendor_override_lib="altera"
setup_design -max_loop_count=5000
setup_design -ignore_ram_rw_collision=false
setup_design -altera_netlist_opt=false
set_path_compression_options -run_during_physical_synthesis=false
setup_design -sta_time_resolution=-12
setup_design -gated_clock=1
setup_design -auto_save_placement
setup_design -auto_resource_allocation_ram=false
setup_design -enable_incr_synth=false
setup_design -enable_incr_pnr=false
setup_design -dsp_across_hier
setup_design -extensive_dsp_drc
setup_design -relax_dsp_drc=false
setup_design -flatten_small_rtl_modules=false
setup_design -timequest_sdc
setup_design -reencode_fsm_outputs
setup_design -dont_pass_synthesis_define=false
setup_design -max_fanout=1000
setup_design -pa_max_fanout=1000
setup_design -max_fanout_strategy="AUTO"
setup_design -compile_initial_values=false
setup_design -block_ram_cutoff=0
setup_design -block_rom_cutoff=0
setup_design -infer_ram
setup_design -infer_rom
setup_design -control_set_optimize
setup_design -control_set_threshold=6
setup_design -modgen="auto"
setup_design -modgen_mode="auto"
setup_design -lut_combine="auto"
setup_design -sdc_version="2"
setup_design -processors="auto"
setup_design -fv_flow="none"
setup_design -enable_force_distributed_ram=false
setup_design -enable_merge_equal_op_b4_modgen_resolve=false
setup_design -gate_level_opt=false
setup_design -assured_synthesis=false
setup_design -flatten_small_blocks
setup_design -write_verilog_escape_names
setup_design -use_dffenable
setup_design -adv_seq_opt
setup_design -ignore_utilization=false
setup_design -dont_retime_dsp_flops=false
setup_design -prioritize_out_flop_over_pipeline=false
setup_design -new_dsp_retiming=false
setup_design -propagate_keep_hierarchy
setup_design -fast_synthesis=false
setup_design -operator_cutoff=""


## Place and Route Settings for Flow 'Quartus II 3.0' Command 'Integrated Place and Route'
setup_place_and_route -flow "Quartus II 3.0" -command "Integrated Place and Route" -install_dir {$QUARTUS_ROOTDIR}
setup_place_and_route -flow "Quartus II 3.0" -command "Integrated Place and Route" -no_exec {0}
setup_place_and_route -flow "Quartus II 3.0" -command "Integrated Place and Route" -ba_format {None}
setup_place_and_route -flow "Quartus II 3.0" -command "Integrated Place and Route" -exe_mode {Auto}
setup_place_and_route -flow "Quartus II 3.0" -command "Integrated Place and Route" -reuse_qsf {0}


## Place and Route Settings for Flow 'Quartus II 3.0' Command 'Generate Vendor Constraint File'
setup_place_and_route -flow "Quartus II 3.0" -command "Generate Vendor Constraint File" -no_exec {0}


## Place and Route Settings for Flow 'Quartus II 3.0' Command 'Placement Only'
setup_place_and_route -flow "Quartus II 3.0" -command "Placement Only" -install_dir {$QUARTUS_ROOTDIR}
setup_place_and_route -flow "Quartus II 3.0" -command "Placement Only" -no_exec {0}
setup_place_and_route -flow "Quartus II 3.0" -command "Placement Only" -ba_format {None}
setup_place_and_route -flow "Quartus II 3.0" -command "Placement Only" -exe_mode {Auto}
setup_place_and_route -flow "Quartus II 3.0" -command "Placement Only" -reuse_qsf {0}


## Place and Route Settings for Flow 'Quartus II Modular' Command 'Integrated Place and Route'
setup_place_and_route -flow "Quartus II Modular" -command "Integrated Place and Route" -install_dir {$QUARTUS_ROOTDIR}
setup_place_and_route -flow "Quartus II Modular" -command "Integrated Place and Route" -no_exec {0}
setup_place_and_route -flow "Quartus II Modular" -command "Integrated Place and Route" -ba_format {None}
setup_place_and_route -flow "Quartus II Modular" -command "Integrated Place and Route" -exe_mode {Auto}
setup_place_and_route -flow "Quartus II Modular" -command "Integrated Place and Route" -reuse_qsf {0}


## Place and Route Settings for Flow 'Quartus II Modular' Command 'Generate Vendor Constraint File'
setup_place_and_route -flow "Quartus II Modular" -command "Generate Vendor Constraint File" -no_exec {0}


## Place and Route Settings for Flow 'Quartus II Modular' Command 'Placement Only'
setup_place_and_route -flow "Quartus II Modular" -command "Placement Only" -install_dir {$QUARTUS_ROOTDIR}
setup_place_and_route -flow "Quartus II Modular" -command "Placement Only" -no_exec {0}
setup_place_and_route -flow "Quartus II Modular" -command "Placement Only" -ba_format {None}
setup_place_and_route -flow "Quartus II Modular" -command "Placement Only" -exe_mode {Auto}
setup_place_and_route -flow "Quartus II Modular" -command "Placement Only" -reuse_qsf {0}


## Current Place and Route Flow
setup_place_and_route -flow "Quartus II Modular"
setup_analysis -clock_frequency
setup_analysis -summary
setup_analysis -num_summary_paths=10
setup_analysis -critical_paths
setup_analysis -num_critical_paths=1
setup_analysis -timing_violations
setup_analysis -net_fanout
setup_analysis -clock_domain_crossing=false
setup_analysis -missing_constraints=false

compile
synthesize
view_schematic