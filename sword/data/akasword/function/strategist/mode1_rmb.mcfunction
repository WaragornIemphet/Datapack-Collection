execute if score @s spacepull_cd matches 1.. run return 0
execute unless entity @e[tag=spacetarget,distance=..64] run return 0

scoreboard players set @s spacepull_cd 60

tp @e[tag=spacetarget] @s

execute at @s run particle reverse_portal ~ ~1 ~ 0.5 1 0.5 0.1 30 normal
playsound minecraft:entity.enderman.teleport voice @a[distance=..16] ~ ~ ~ 100 1.0
