
execute unless score @s chain_id matches 1.. run function akasword:chainsawassignid

tag @e[distance=..6,limit=1,sort=nearest,nbt={HurtTime:10s}] add chainsaw_victim_temp

execute as @e[tag=chainsaw_victim_temp] run scoreboard players operation @s chain_link_id = @p[distance=..6,tag=!chainsaw_victim_temp] chain_id

tag @s add chainsaw_active
tag @e[tag=chainsaw_victim_temp] add chainsaw_victim
tag @e[tag=chainsaw_victim_temp] remove chainsaw_victim_temp

scoreboard players set @s chainsaw_timer 80
scoreboard players set @s chain_cooldown 300
