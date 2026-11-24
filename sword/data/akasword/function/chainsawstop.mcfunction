# Remove active tag from player
effect give @s speed 5 5 true
tag @s remove chainsaw_active
scoreboard players set @s chainsaw_timer 0

# Identify the victim linked to this specific player and free them
tag @s add stopping_owner
execute as @e[tag=chainsaw_victim] if score @s chain_link_id = @p[tag=stopping_owner] chain_id run tag @s remove chainsaw_victim
tag @s remove stopping_owner
