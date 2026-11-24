# Function: namespace:chainsaw/start_link

# 1. Ensure Player has a Unique ID
execute unless score @s chain_id matches 1.. run function akasword:chainsawassignid

# 2. Link the Victim (The entity you just hurt)
# We assume this runs 'as' the player. We find the nearest entity being hurt.
# (Because this runs ON the hit event, the victim is usually very close and has high HurtTime)
tag @e[distance=..6,limit=1,sort=nearest,nbt={HurtTime:10s}] add chainsaw_victim_temp

# Copy Player's ID to the Victim's Link ID
execute as @e[tag=chainsaw_victim_temp] run scoreboard players operation @s chain_link_id = @p[distance=..6,tag=!chainsaw_victim_temp] chain_id

# Finalize Tags
tag @s add chainsaw_active
tag @e[tag=chainsaw_victim_temp] add chainsaw_victim
tag @e[tag=chainsaw_victim_temp] remove chainsaw_victim_temp

# 3. Start Timers
scoreboard players set @s chainsaw_timer 80
scoreboard players set @s chain_cooldown 300
