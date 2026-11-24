# 1. Stop if skill is on cooldown, or if there is no tagged target
execute if score @s spaceswap_cd matches 1.. run return 0
execute unless entity @e[tag=spacetarget,distance=..64] run return 0

# 2. Set the 10-second cooldown (200 ticks)
scoreboard players set @s spaceswap_cd 200

# 3. Play particles at BOTH starting locations before teleporting
execute at @s run particle portal ~ ~1 ~ 0.5 1 0.5 0.1 30 normal
execute at @e[tag=spacetarget] run particle portal ~ ~1 ~ 0.5 1 0.5 0.1 30 normal

# 4. SWAP LOGIC: Place a marker at the user's current location
execute at @s run summon marker ~ ~ ~ {Tags:["strategist_swap"]}

# 5. SWAP LOGIC: Move the user to the target
tp @s @e[tag=spacetarget,limit=1]

# 6. SWAP LOGIC: Move the target to the marker (where the user used to be)
execute as @e[tag=spacetarget] run tp @s @e[type=marker,tag=strategist_swap,limit=1]

# 7. Cleanup the temporary marker
kill @e[type=marker,tag=strategist_swap]

# 8. Audio
playsound minecraft:entity.enderman.teleport voice @a[distance=..16] ~ ~ ~ 100 1.0