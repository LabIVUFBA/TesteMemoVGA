set_global_assignment -entity "unsaved" -library "lib_unsaved" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "unsaved" -library "lib_unsaved" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "unsaved" -library "lib_unsaved" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_unsaved" -name SPD_FILE [file join $::quartus(sip_path) "../unsaved.spd"]
set_global_assignment -library "lib_unsaved" -name MISC_FILE [file join $::quartus(sip_path) "../../unsaved.qsys"]

set_global_assignment -library "lib_unsaved" -name MISC_FILE [file join $::quartus(sip_path) "unsaved.v"]
set_global_assignment -library "lib_unsaved" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_reset_controller.v"]
set_global_assignment -library "lib_unsaved" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_reset_synchronizer.v"]
set_global_assignment -library "lib_unsaved" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_reset_controller.sdc"]
set_global_assignment -library "lib_unsaved" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_avalon_video_vga_timing.v"]
set_global_assignment -library "lib_unsaved" -name MISC_FILE [file join $::quartus(sip_path) "submodules/unsaved_video_vga_controller_0.v"]
set_global_assignment -library "lib_unsaved" -name MISC_FILE [file join $::quartus(sip_path) "submodules/unsaved_video_test_pattern_0.v"]
set_global_assignment -library "lib_unsaved" -name MISC_FILE [file join $::quartus(sip_path) "submodules/unsaved_video_rgb_resampler_0.v"]
set_global_assignment -library "lib_unsaved" -name MISC_FILE [file join $::quartus(sip_path) "submodules/unsaved_video_pll_0.v"]
set_global_assignment -library "lib_unsaved" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_avalon_reset_from_locked_signal.v"]
set_global_assignment -library "lib_unsaved" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_altpll.v"]
