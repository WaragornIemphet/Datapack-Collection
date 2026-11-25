tag @s add current_victim

execute if score @p[tag=lightbane] lb_mode matches 1 if score @p[tag=lightbane] ult_charge matches 1.. run return run function akasword:lightbane_purify_hit

scoreboard players add @s lightbane_combohits 1
scoreboard players set @s lightbane_timer 0

scoreboard players set #lb_paid_proc lb_math 0
execute if score @s lightbane_combohits matches 5.. run return run function akasword:lightbane_trigger

scoreboard players set @p[tag=lightbane] lb_ui_pause 15
execute if score @s lightbane_combohits matches 1..4 run title @p[tag=lightbane] actionbar [{"text":"Mark of Condemnation: ","color":"yellow"},{"score":{"name":"@s","objective":"lightbane_combohits"},"color":"gold"}]
