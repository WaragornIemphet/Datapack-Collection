# 1. Set Cooldown (3 Seconds = 60 Ticks)
scoreboard players set @s vanadium_dash_cd 60

# 2. Visual & Sound Effects (Wind Burst)
execute at @e[tag=wongkura_challenger,limit=1] run particle minecraft:cloud ~ ~0.5 ~ 0.2 0.2 0.2 0.1 30 force
execute at @e[tag=wongkura_challenger,limit=1] run playsound minecraft:item.trident.riptide_1 voice @a[distance=..60] ~ ~ ~ 100 2

# 3. The Dash (Teleport 3 blocks in looking direction)
# We use execute at @s to ensure the caret notation (^ ^ ^) works relative to the player's rotation
execute at @s run tp @s ^ ^0.5 ^5

# 4. Optional: Add a little forward momentum incase they were in the air (smooths the landing)
# This requires the player to be looking somewhat horizontally to feel effective
# (If you want strictly teleport, you can remove this line)
execute at @e[tag=wongkura_challenger] run particle minecraft:poof ~ ~ ~ 0 0 0 0.2 10
