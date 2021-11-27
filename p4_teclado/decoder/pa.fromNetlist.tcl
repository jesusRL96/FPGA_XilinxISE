
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name decoder -dir "E:/decoder/planAhead_run_1" -part xc3s500efg320-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/decoder/keypad.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/decoder} }
set_param project.paUcfFile  "keypad.ucf"
add_files "keypad.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
