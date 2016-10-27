
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name ISE1 -dir "D:/school/SCH-IW_EI/elektronica/digitale/labo/working_directory/ISE1/planAhead_run_2" -part xc6slx4csg225-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "poorten.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {poorten.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top poorten $srcset
add_files [list {poorten.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx4csg225-3
