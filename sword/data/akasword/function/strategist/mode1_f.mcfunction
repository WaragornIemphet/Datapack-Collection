execute if score @s spaceswap_cd matches 1.. run return 0
execute unless entity @e[tag=spacetarget,distance=..64] run return 0

scoreboard players set @s spaceswap_cd 200

execute at @s run particle portal ~ ~1 ~ 0.5 1 0.5 0.1 30 normal
execute at @e[tag=spacetarget] run particle portal ~ ~1 ~ 0.5 1 0.5 0.1 30 normal

execute at @s run summon marker ~ ~ ~ {Tags:["strategist_swap"]}

tp @s @e[tag=spacetarget,limit=1]

execute as @e[tag=spacetarget] run tp @s @e[type=marker,tag=strategist_swap,limit=1]

kill @e[type=marker,tag=strategist_swap]

playsound minecraft:entity.enderman.teleport voice @a[distance=..16] ~ ~ ~ 100 1.0
