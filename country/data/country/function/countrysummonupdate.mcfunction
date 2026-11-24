# 1. Increase the timer for this specific clone
scoreboard players add @s clone_timer 1

execute if score @s clone_timer matches 400.. run particle dust{color:[0.0,0.03,1.0],scale:2} ~ ~1 ~ 0.5 0.5 0.5 0 20 normal
execute if score @s clone_timer matches 400.. at @a[limit=1,sort=random,distance=..50] run function country:countrysummontp

# 3. Reset the timer back to 0 so it can loop and attack again in another 15 seconds
execute if score @s clone_timer matches 400.. run scoreboard players set @s clone_timer 0

# 4. Save the currently executing Husk's ID
scoreboard players operation #current_husk pair_id = @s pair_id

# 5. Find the specific mannequin with the matching ID and snap it to the Husk's new location
execute as @e[tag=countrysummon] if score @s pair_id = #current_husk pair_id run tp @s ~ ~ ~ ~ ~

# 6. Send the heartbeat: confirm the Husk is alive by setting the matched mannequin's alive_check to 1
execute as @e[tag=countrysummon] if score @s pair_id = #current_husk pair_id run scoreboard players set @s alive_check 1