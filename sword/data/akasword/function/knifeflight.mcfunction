# akasword:mechanics/knife_flight
# Runs AS the Armor Stand @e[tag=mih_flying_knife]

# ==================================================
#  1. FLIGHT STEPS (Speed Control)
# ==================================================
# We run the 'step' function multiple times to simulate speed.
# 4 steps of 0.5 blocks = 2 blocks per tick (approx Arrow speed).
# Adjust the repeat count to make it faster/slower.

function akasword:knifestep
execute if entity @s run function akasword:knifestep
execute if entity @s run function akasword:knifestep
execute if entity @s run function akasword:knifestep

# ==================================================
#  2. LIFESPAN & GRAVITY (Optional)
# ==================================================
# Kill if it flies for too long (3 seconds = 60 ticks)
scoreboard players add @s knife_life 1
execute if score @s knife_life matches 60.. run kill @s

# (Optional) Slight Gravity: Pitch down very slowly
# tp @s ~ ~ ~ ~ 0.5
