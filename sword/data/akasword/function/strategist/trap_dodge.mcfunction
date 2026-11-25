tag @s add trap_action_done
scoreboard players set @s trapconfig_cd 100

tp @s ^ ^ ^-10

playsound minecraft:entity.enderman.teleport voice @a[distance=..16] ~ ~ ~ 100 1.5
particle poof ~ ~1 ~ 0.5 1 0.5 0.1 30 normal
