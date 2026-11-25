data modify entity @s HurtTime set value 0s
tag @p[tag=lightbane] add lb_skill_dmg
damage @s 20 minecraft:magic by @p[tag=lightbane]
particle minecraft:crit ~ ~1 ~ 0.3 0.4 0.3 0.2 12 normal

execute if entity @s[type=!minecraft:player] run scoreboard players add @s lightbane_combohits 1
execute if entity @s[type=!minecraft:player] run scoreboard players set @s lightbane_timer 0

execute if entity @s[type=minecraft:player,scores={lightbane_combohits=1..}] run scoreboard players add @s lightbane_combohits 1
execute if entity @s[type=minecraft:player,scores={lightbane_combohits=1..}] run scoreboard players set @s lightbane_timer 0

scoreboard players set #lb_paid_proc lb_math 0
execute if score @s lightbane_combohits matches 5.. run data modify entity @s HurtTime set value 0s
execute if score @s lightbane_combohits matches 5.. run function akasword:lightbane_trigger

tag @p[tag=lightbane] remove lb_skill_dmg
