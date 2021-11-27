
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name VGA -dir "G:/jesus/dlps/VGA/planAhead_run_1" -part xc3s500efg320-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "G:/jesus/dlps/VGA/main.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {G:/jesus/dlps/VGA} }
set_param project.paUcfFile  "pines.ucf"
add_files "pines.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
