# 1. Teleport the anchor to a random player within 64 blocks
execute as @e[tag=falseaka] at @s run tp @s @a[distance=..64,limit=1,sort=random]

# 2. Visuals & Audio (A sinister teleport sound and a burst of particles to telegraph the landing)
execute at @e[tag=falseaka] run playsound minecraft:entity.enderman.teleport voice @a[distance=..64] ~ ~ ~ 1 0.8
execute at @e[tag=falseaka] run particle minecraft:large_smoke ~ ~1 ~ 1.5 0.5 1.5 0.05 100 normal
execute at @e[tag=falseaka] run particle minecraft:sweep_attack ~ ~1 ~ 1.5 0.5 1.5 0 5 normal

# 3. Deal 5 Magic damage to anyone caught within 3 blocks of the landing zone
execute at @e[tag=falseaka] as @a[distance=..3,gamemode=!spectator,gamemode=!creative] run damage @s 5.0 minecraft:magic by @e[tag=falseaka,limit=1]