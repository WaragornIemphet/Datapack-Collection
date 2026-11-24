# 1. Tag this mob as the active victim for Final Testament
tag @s add current_victim

# 2. PURIFICATION MODE (lb_mode = 1): If user has 1+ ult_charge -> Spend -1 charge & trigger Radiating Incandescence immediately
execute if score @p[tag=lightbane] lb_mode matches 1 if score @p[tag=lightbane] ult_charge matches 1.. run return run function akasword:lightbane_purify_hit

# 3. STANDARD STACK BUILD (Savior Mode, Eradication Mode, or Purification at 0 Charge)
scoreboard players add @s lightbane_combohits 1
scoreboard players set @s lightbane_timer 0

# At 5 stacks -> Trigger Radiating Incandescence (+1 charge & reset this target's stacks)
scoreboard players set #lb_paid_proc lb_math 0
execute if score @s lightbane_combohits matches 5.. run return run function akasword:lightbane_trigger

# Feedback to the player (1..4 stacks) & brief HUD pause so message is readable
scoreboard players set @p[tag=lightbane] lb_ui_pause 15
execute if score @s lightbane_combohits matches 1..4 run title @p[tag=lightbane] actionbar [{"text":"Mark of Condemnation: ","color":"yellow"},{"score":{"name":"@s","objective":"lightbane_combohits"},"color":"gold"}]