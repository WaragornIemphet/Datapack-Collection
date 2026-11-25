execute at @a as @e[tag=ratking] unless entity @s run bossbar set hantaking players
execute at @a as @e[tag=ratking] if entity @s run bossbar set hantaking players @a

execute at @a as @e[tag=finalrat] unless entity @s run bossbar set hantafinalboss players
execute at @a as @e[tag=finalrat] if entity @s run bossbar set hantafinalboss players @a

scoreboard players add world ratskill 1
execute if score world ratskill matches 400 run function ratraid:ratskill
execute if score world ratskill matches 400.. run scoreboard players set world ratskill 0

execute store result bossbar hantaking value run data get entity @e[tag=ratboss,limit=1] Health
execute store result bossbar hantafinalboss value run data get entity @e[tag=finalrat,limit=1] Health
