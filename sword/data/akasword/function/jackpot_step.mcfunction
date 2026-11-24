# 1. MOVEMENT
tp @s ^ ^ ^1.75
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0 1 force

# 2. WALL COLLISION (FIXED)
# We check ~ ~ ~ (Feet/Center) instead of ~ ~0.5 ~ (Head/Ceiling)


# Wall Hit Effect

# 3. ENTITY HIT
# Check radius 1.2m. Exclude self, items, and the OWNER (luckybastard) so you don't hit yourself.
execute as @e[type=!armor_stand,type=!item,tag=!luckybastard,distance=..1.2,sort=nearest,limit=1] run tag @s add jackpot_hit

# 4. PAYLOAD
execute if entity @e[tag=jackpot_hit] as @e[tag=jackpot_hit] run effect give @s minecraft:slowness 4 255 true
execute if entity @e[tag=jackpot_hit] as @e[tag=jackpot_hit] run effect give @s minecraft:glowing 4 0 true
execute as @e[tag=jackpot_hit] at @s if entity @s run kill @e[tag=jackpot_ball]
execute if entity @e[tag=jackpot_hit] as @e[tag=jackpot_hit] run damage @s 20 minecraft:player_attack by @a[tag=luckybastard,limit=1]



execute if entity @e[tag=jackpot_hit] as @e[tag=jackpot_hit] at @s run playsound minecraft:block.anvil.land voice @a[distance=..60] ~ ~ ~ 100 2
execute if entity @e[tag=jackpot_hit] as @e[tag=jackpot_hit] at @s run particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.5 20 force

# 5. CLEANUP
tag @e[tag=jackpot_hit] remove jackpot_hit