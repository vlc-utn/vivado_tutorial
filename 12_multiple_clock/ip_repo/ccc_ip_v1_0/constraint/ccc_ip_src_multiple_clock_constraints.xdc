# Multicycle constraints for clock enable: multiple_clock_tc.u1_d8_o0
set enbregcell [get_cells -hier -filter {mcp_info=="multiple_clock_tc.u1_d8_o0"}]
set enbregnet [get_nets -of_objects [get_pins -of_objects $enbregcell -filter {DIRECTION == OUT}]]
set reglist1 [get_cells -of [filter [all_fanout -flat -endpoints_only $enbregnet] IS_ENABLE]]
set_multicycle_path 8 -setup -from $reglist1 -to $reglist1 -quiet
set_multicycle_path 7 -hold -from $reglist1 -to $reglist1 -quiet

