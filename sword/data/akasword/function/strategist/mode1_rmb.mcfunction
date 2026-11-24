# 1. Stop if skill is on cooldown, or if there is no tagged target
execute if score @s spacepull_cd matches 1.. run return 0
execute unless entity @e[tag=spacetarget,distance=..64] run return 0

# 2. Set the 3-second cooldown (60 ticks)
scoreboard players set @s spacepull_cd 60

# 3. Teleport target to the user
tp @e[tag=spacetarget] @s

# 4. Visuals & Audio
execute at @s run particle reverse_portal ~ ~1 ~ 0.5 1 0.5 0.1 30 normal
playsound minecraft:entity.enderman.teleport voice @a[distance=..16] ~ ~ ~ 100 1.0