# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "C:/FPGA_project/zynq_basic_system/zynq_basic_system.runs/synth_1/zynq_basys_wrapper.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

OPTRACE "synth_1" START { ROLLUP_AUTO }
set_param tcl.collectionResultDisplayLimit 0
set_param chipscope.maxJobs 6
set_param xicom.use_bs_reader 1
set_param bd.open.in_stealth_mode 1
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL-1065} -limit 10000
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7z007sclg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/FPGA_project/zynq_basic_system/zynq_basic_system.cache/wt [current_project]
set_property parent.project_path C:/FPGA_project/zynq_basic_system/zynq_basic_system.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:cora-z7-07s:part0:1.1 [current_project]
set_property ip_output_repo c:/FPGA_project/zynq_basic_system/zynq_basic_system.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_verilog -library xil_defaultlib C:/FPGA_project/zynq_basic_system/zynq_basic_system.gen/sources_1/bd/zynq_basys/hdl/zynq_basys_wrapper.v
add_files C:/FPGA_project/zynq_basic_system/zynq_basic_system.srcs/sources_1/bd/zynq_basys/zynq_basys.bd
set_property used_in_implementation false [get_files -all c:/FPGA_project/zynq_basic_system/zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_processing_system7_0_0/zynq_basys_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_project/zynq_basic_system/zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_rst_ps7_0_50M_0/zynq_basys_rst_ps7_0_50M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_project/zynq_basic_system/zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_rst_ps7_0_50M_0/zynq_basys_rst_ps7_0_50M_0.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_project/zynq_basic_system/zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_rst_ps7_0_50M_0/zynq_basys_rst_ps7_0_50M_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all c:/FPGA_project/zynq_basic_system/zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_project/zynq_basic_system/zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_project/zynq_basic_system/zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_project/zynq_basic_system/zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_system_ila_0_0/bd_0/ip/ip_0/bd_9fc8_ila_lib_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_project/zynq_basic_system/zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_system_ila_0_0/bd_0/bd_9fc8_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_project/zynq_basic_system/zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_system_ila_0_0/zynq_basys_system_ila_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_project/zynq_basic_system/zynq_basic_system.gen/sources_1/bd/zynq_basys/ip/zynq_basys_auto_pc_0/zynq_basys_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/FPGA_project/zynq_basic_system/zynq_basic_system.gen/sources_1/bd/zynq_basys/zynq_basys_ooc.xdc]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1

read_checkpoint -auto_incremental -incremental C:/FPGA_project/zynq_basic_system/zynq_basic_system.srcs/utils_1/imports/synth_1/zynq_basys_wrapper.dcp
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top zynq_basys_wrapper -part xc7z007sclg400-1
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef zynq_basys_wrapper.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
generate_parallel_reports -reports { "report_utilization -file zynq_basys_wrapper_utilization_synth.rpt -pb zynq_basys_wrapper_utilization_synth.pb"  } 
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
