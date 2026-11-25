
execute at @s run execute if entity @s[tag=door_left] run tp @s ^0.2 ^ ^

execute at @s run execute if entity @s[tag=door_right] run tp @s ^-0.2 ^ ^

execute at @s run particle minecraft:crit ~ ~1 ~ 0.1 0.5 0.1 0 1

execute at @s run execute if entity @s[tag=door_left] as @e[tag=door_right,distance=..0.6] at @s run function akasword:jackpot_door_slam

execute at @e[tag=door_root] run effect give @a[tag=luckybastard,distance=..1] jump_boost 2 10 true

scoreboard players add @s door_age 1
execute if score @s door_age matches 30.. run kill @s
