scoreboard players remove @s bullet_life 1
scoreboard players add @s bullet_age 1

tp @s ^ ^ ^2

particle minecraft:smoke ~ ~0.5 ~ 0 0 0 0 1 force

execute if score @s bullet_age matches 3.. run function akasword:bullet_collision_check

execute if score @s bullet_life matches ..0 run kill @s
execute at @s unless block ~ ~ ~ #minecraft:replaceable if block ~ ~ ~ #minecraft:flowers run kill @s
