# --- 1. UPDATE TIMERS ---
scoreboard players remove @s fbullet_life 1
scoreboard players add @s fbullet_age 1

# --- 2. MOVEMENT ---
# Move forward 2 blocks/tick
tp @s ^ ^ ^2

# Trail
particle minecraft:smoke ~ ~0.5 ~ 0 0 0 0 1 force

# --- 3. HIT DETECTION (With Safety) ---
# ONLY run hit detection if the bullet is older than 3 ticks
# This prevents it from hitting the shooter instantly
execute if score @s fbullet_age matches 3.. run function akasword:bullet_collision_check

# --- 4. CLEANUP ---
execute if score @s fbullet_life matches ..0 run kill @s
execute at @s unless block ~ ~ ~ #minecraft:replaceable run kill @s
