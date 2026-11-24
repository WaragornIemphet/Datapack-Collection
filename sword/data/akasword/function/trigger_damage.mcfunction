damage @s 8 minecraft:generic

# 2. Play a "blood" particle effect at the player's chest height
execute at @s run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0 0 0 1 50 force

# 3. Play a sharp sound
execute as @s at @s run playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 1 1

# 4. CRITICAL: Mark the player so this doesn't run again next tick
tag @s add syn.holding_cutter

