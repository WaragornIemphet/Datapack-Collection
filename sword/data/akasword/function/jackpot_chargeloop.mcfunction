execute as @e[tag=drag_target] run tp @s ^-0.5 ^-0.7 ^1.2 facing ^ ^ ^2
effect give @s minecraft:resistance 1 255 true
effect give @s minecraft:speed 1 5 true
scoreboard players remove @s drag_time 1

execute as @e[tag=drag_target] run damage @s 10 in_wall
execute as @e[tag=drag_target] run effect give @s weakness 1 255 true
execute if score @s drag_time matches 0 run function akasword:jackpot_chargefinish
