# Multicycle constraints for clock enable: Subsystem_tc.u1_d150_o0
set enbregcell [get_cells -hier -filter {mcp_info=="Subsystem_tc.u1_d150_o0"}]
set enbregnet [get_nets -of_objects [get_pins -of_objects $enbregcell -filter {DIRECTION == OUT}]]
set reglist1 [get_cells -of [filter [all_fanout -flat -endpoints_only $enbregnet] IS_ENABLE]]
set_multicycle_path 150 -setup -from $reglist1 -to $reglist1 -quiet
set_multicycle_path 149 -hold -from $reglist1 -to $reglist1 -quiet

# Multicycle constraints for clock enable: Subsystem_tc.u1_d150_o1
set enbregcell [get_cells -hier -filter {mcp_info=="Subsystem_tc.u1_d150_o1"}]
set enbregnet [get_nets -of_objects [get_pins -of_objects $enbregcell -filter {DIRECTION == OUT}]]
set reglist2 [get_cells -of [filter [all_fanout -flat -endpoints_only $enbregnet] IS_ENABLE]]
set_multicycle_path 150 -setup -from $reglist2 -to $reglist2 -quiet
set_multicycle_path 149 -hold -from $reglist2 -to $reglist2 -quiet

# Multicycle constraints from clock enable: Subsystem_tc.u1_d150_o1 to clock enable: Subsystem_tc.u1_d150_o0
set_multicycle_path 149 -setup -from $reglist2 -to $reglist1 -quiet
set_multicycle_path 149 -hold -from $reglist2 -to $reglist1 -quiet

# Multicycle constraints from clock enable: Subsystem_tc.u1_d150_o0 to clock enable: Subsystem_tc.u1_d150_o1
set_multicycle_path 151 -setup -from $reglist1 -to $reglist2 -quiet
set_multicycle_path 149 -hold -from $reglist1 -to $reglist2 -quiet

