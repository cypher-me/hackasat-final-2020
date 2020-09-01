# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a75tcsg324-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.cache/wt [current_project]
set_property parent.project_path /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files /home/user/hackthesat/flatsat/flatsat_openmsp430/test.coe
add_files /home/user/hackthesat/flatsat/flatsat_openmsp430/software/server/radio/radio.coe
add_files /home/user/hackthesat/flatsat/flatsat_openmsp430/software/test/ztex_test_board/leon3_test/leon3.coe
add_files /home/user/hackthesat/flatsat/flatsat_openmsp430/software/test/ztex_test_board/console_uart/uart.coe
read_verilog -library xil_defaultlib {
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/DebounceIO.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/openMSP430_undefines.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/openMSP430_defines.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_alu.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_clock_module.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_dbg.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_dbg_hwbrk.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_dbg_uart.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_execution_unit.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_frontend.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_gpio.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_mem_backbone.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_multiplier.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_register_file.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_sfr.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_sync_cell.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_sync_reset.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_system_1.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_timerA_undefines.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_timerA_defines.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_timerA.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_uart.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_uart2.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/omsp_watchdog.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/openMSP430.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/uspi_0.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/uspi_1.v
  /home/user/hackthesat/fpga/new_project/ztec_project/test_lx9_take2/openMSP430_fpga.v
}
read_vhdl -library work {
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/hts_fpga/designs/leon3-ztec_2_13/leon3mp.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/hts_fpga/designs/leon3-ztec_2_13/ahbrom.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/hts_fpga/designs/leon3-ztec_2_13/config.vhd
}
read_vhdl -library grlib {
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/grlib/stdlib/config_types.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/grlib/stdlib/config.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/grlib/stdlib/version.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/grlib/stdlib/stdlib.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/grlib/amba/amba.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/grlib/amba/devices.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/grlib/modgen/multlib.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/grlib/sparc/sparc.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/grlib/amba/ahbctrl.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/grlib/amba/ahbmst.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/grlib/amba/apbctrl.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/grlib/amba/apbctrlx.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/grlib/modgen/leaves.vhd
}
read_vhdl -library techmap {
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/gencomp/gencomp.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/gencomp/netcomp.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/allclkgen.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/allmem.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/allmul.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/alltap.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/unisim/buffer_unisim.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/clkand.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/clkgen.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/unisim/clkgen_unisim.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/clkmux.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/grfpw_net.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/grgates.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/grlfpw_net.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/leon3_net.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/inferred/memory_inferred.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/unisim/memory_unisim.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/memrwcol.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/inferred/mul_inferred.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/regfile_3p.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/spictrl_net.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/unisim/spictrl_unisim.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/syncram.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/syncram64.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/syncram_2p.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/syncram_dp.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/syncrambw.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/syncreg.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/tap.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/unisim/tap_unisim.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/techbuf.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/techmap/maps/techmult.vhd
}
read_vhdl -library gaisler {
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ddrpkg.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ddrintpkg.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ahb2avl_async.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ahb2avl_async_be.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/axi/axi.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/axi/ahb2axi3b.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/axi/ahb2axi4b.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/misc.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ahb2axi_mig_7series.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/axi/ahb2axib.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ahb2mig_7series_pkg.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ahb2mig_7series.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ahb2mig_7series_cpci_xc7k.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ahb2mig_7series_ddr2_dq16_ad13_ba3.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ahb2mig_7series_ddr3_dq16.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/greth/adapters/word_aligner.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/uart/uart.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3/leon3.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/tbufmem_2p.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/tbufmem.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/subsys/subsys.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/spi/spi.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/spi/spimctrl.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/spi/spictrl.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/spi/spi2ahbx.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/spi/spi2ahb_apb.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/spi/spi2ahb.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/memctrl/memctrl.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/memctrl/sdmctrl.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/memctrl/sdctrl64.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/memctrl/sdctrl.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/rstgen.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/regfile_3p_l3.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/libfpu.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/arith/arith.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/srmmu/mmuconfig.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/libiu.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/srmmu/mmuiface.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/libcache.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/libleon3.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/proc3.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/net/net.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/arith/mul32.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/srmmu/libmmu.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/srmmu/mmutlbcam.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/srmmu/mmulrue.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/srmmu/mmulru.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/mmu_icache.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/mmu_dcache.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/mmu_cache.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/mmu_acache.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/svgactrl.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/srmmu/mmu.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/logan.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/uart/libdcom.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon4/leon4.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/subsys/leon_dsu_stat_base.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/leon3x.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/leon3s.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/leon3cg.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/l3stat.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/jtag/libjtagcom.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/jtag/jtagcom2.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/greth/adapters/sgmii.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/jtag/jtagcom.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/jtag/jtag.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/iu3.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/irqmp/irqmp_bmode.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/irqmp/irqmp.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ddrphy_wrap.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/memctrl/srctrl.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/grfpwxsh.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ddr1spax.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/ahbram.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/greth/ethernet_mac.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/uart/dcom_uart.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/greth/adapters/comma_detect.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/ahbmmux.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/cmvalidbits.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ddr2spax_ahb.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/jtag/bscanregs.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/greth/adapters/rgmii.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/charrom.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ddr2spa.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3/grfpushwx.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ddr2buf.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/axi/axinullslv.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/irqmp/irqamp.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/uart/apbuart.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/grdmac/grdmac_pkg.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/grdmac/grdmac.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/greth/adapters/gmii_to_mii.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/uart/dcom.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/greth/greth_gbit.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/apb3cdc.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ddr1spax_ddr.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/i2c/i2c.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/i2c/i2cslv.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/uart/ahbuart.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/srmmu/mmutlb.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/charrom_package.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/dsu3.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/grversion.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/grdmac/apbmem.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/srmmu/mmutw.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/ahbtrace_mmb.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/ahbtrace_mb.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/ahbtrace.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ahb2mig_7series_ddr3_dq16_ad15_ba3.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/jtag/ahbjtag.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ddr2spax.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/leon3sh.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/jtag/bscanregsbd.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/ahbsmux.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/grgprbank.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/cachemem.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/spi/spictrlx.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/jtag/ahbjtag_bsd.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/l2cache/pkg/l2cache.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/i2c/i2cmst_gen.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/ahb_mst_iface.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/i2c/i2cmst.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/dsu3_mb.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/greth/greth.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/ahbstat.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/i2c/i2c2ahb.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/grgpreg.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/gracectrl.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/greth/grethm.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ddrspa.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ddr2spax_ddr.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/apbvga.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/axi/ahbm2axi4.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/i2c/i2c2ahbx.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/greth/greths_mb.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/apbps2.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/axi/ahbm2axi.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/axi/ahbm2axi3.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/grgpio.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/ahbdpram.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/grdmac/grdmac_ahbmst.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/i2c/i2c2ahb_gen.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/dsu3x.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/arith/div32.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/greth/greth_gbit_mb.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/greth/adapters/elastic_buffer.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/grlfpwx.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/grdmac/grdmac_1p.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/grdmac/grdmac_alignram.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/i2c/i2c2ahb_apb_gen.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/greth/greth_mb.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/gptimer.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/greth/grethm_mb.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/greth/greths.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/leon3v3/grfpwx.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/misc/grsysmon.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/i2c/i2c2ahb_apb.vhd
}
read_vhdl -library opencores {
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/opencores/ge_1000baseX/ge_1000baseX_comp.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/opencores/i2c/i2coc.vhd
}
read_vhdl -library eth {
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/eth/core/greth_pkg.vhd
  /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/eth/comp/ethcomp.vhd
}
read_vhdl -library xil_defaultlib /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/gaisler/ddr/ahb2mig_7series_ddr3_dq16_ad14_ba3.vhd
read_vhdl -library esa /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/imports/fpga/grlib-master/lib/esa/memoryctrl/memoryctrl.vhd
read_ip -quiet /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/ip/ram_16x16k_sp_pmem/ram_16x16k_sp_pmem.xci
set_property used_in_implementation false [get_files -all /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/ip/ram_16x16k_sp_pmem/ram_16x16k_sp_pmem_ooc.xdc]

read_ip -quiet /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/ip/mig/mig.xci
set_property used_in_implementation false [get_files -all /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/ip/mig/mig/user_design/constraints/mig.xdc]
set_property used_in_implementation false [get_files -all /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/ip/mig/mig/user_design/constraints/mig_ooc.xdc]

read_ip -quiet /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/ip/ram_16x16k_sp_dmem/ram_16x16k_sp_dmem.xci
set_property used_in_implementation false [get_files -all /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/sources_1/ip/ram_16x16k_sp_dmem/ram_16x16k_sp_dmem_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/constrs_1/imports/leon3-ztec_2_13/leon3mp.xdc
set_property used_in_implementation false [get_files /home/user/hackthesat/fpga/new_project/ztec_project/ztec_project.srcs/constrs_1/imports/leon3-ztec_2_13/leon3mp.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top openMSP430_fpga -part xc7a75tcsg324-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef openMSP430_fpga.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file openMSP430_fpga_utilization_synth.rpt -pb openMSP430_fpga_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]