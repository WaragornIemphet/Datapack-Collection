# 1. Reset HurtTime so all 4 swords deal full damage on focus-fire (tweak 25 to adjust damage)
data modify entity @s HurtTime set value 0s
tag @p[tag=lightbane] add lb_skill_dmg
damage @s 25 minecraft:trident by @p[tag=lightbane]

# 2. Apply +1 Mark of Condemnation stack & refresh decay timer
scoreboard players add @s lightbane_combohits 1
scoreboard players set @s lightbane_timer 0

# 3. Trigger Radiating Incandescence at 5+ stacks (or show stack count 1..4)
scoreboard players set #lb_paid_proc lb_math 0
execute if score @s lightbane_combohits matches 5.. run data modify entity @s HurtTime set value 0s
execute if score @s lightbane_combohits matches 5.. run function akasword:lightbane_trigger

execute if score @s lightbane_combohits matches 1..4 run scoreboard players set @p[tag=lightbane] lb_ui_pause 15
execute if score @s lightbane_combohits matches 1..4 run title @p[tag=lightbane] actionbar [{"text":"Mark of Condemnation: ","color":"yellow"},{"score":{"name":"@s","objective":"lightbane_combohits"},"color":"gold"}]

# 4. Remove skill damage guard
tag @p[tag=lightbane] remove lb_skill_dmg