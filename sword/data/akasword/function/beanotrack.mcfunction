# --- 1. WALL CHECKS ---
# Current block
execute as @s[tag=!exploded] unless block ~ ~ ~ #minecraft:replaceable at @s run function akasword:beanoexplode

# Look-ahead block (0.5 blocks ahead)
execute as @s[tag=!exploded] unless block ^ ^ ^0.5 #minecraft:replaceable at @s run function akasword:beanoexplode


# --- 2. ENTITY PROXIMITY FUSE ---
# Temporarily tag the person who threw it
execute as @s[tag=!exploded] on owner run tag @s add thrower

# If any entity (that isn't an item, a snowball, or the thrower) gets within 1.5 blocks, detonate!
execute as @s[tag=!exploded] if entity @e[type=!snowball,type=!item,tag=!thrower,distance=..1.5] at @s run function akasword:beanoexplode

# Remove the thrower tag so the player can be hurt by the blast in the next step
execute on owner run tag @s remove thrower