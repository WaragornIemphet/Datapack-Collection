tag @s add trap_action_done
scoreboard players set @s trapconfig_cd 200

execute at @s run particle portal ~ ~1 ~ 0.5 1 0.5 0.1 30 normal
execute at @e[type=armor_stand,tag=trapsentry,distance=..64,limit=1,sort=nearest] run particle portal ~ ~1 ~ 0.5 1 0.5 0.1 30 normal
playsound minecraft:entity.enderman.teleport voice @a[distance=..16] ~ ~ ~ 100 1.0

tag @s add swap_caster
tag @e[type=armor_stand,tag=trapsentry,distance=..64,limit=1,sort=nearest] add trap_swapping

execute at @s run summon marker ~ ~ ~ {Tags:["trap_swap_mark"]}

execute at @e[tag=trap_swapping,limit=1] run tp @s ~ ~ ~

execute as @e[tag=trap_swapping,limit=1] at @e[type=marker,tag=trap_swap_mark,limit=1] rotated as @a[tag=swap_caster,limit=1] run tp @s ~ ~ ~ ~ 0

kill @e[type=marker,tag=trap_swap_mark]
tag @e[tag=trap_swapping] remove trap_swapping
tag @a[tag=swap_caster] remove swap_caster
