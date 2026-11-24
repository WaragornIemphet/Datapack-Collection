
tag @s add chainsaw_active

tag @e[distance=..4,nbt={HurtTime:10s},sort=nearest,limit=1,tag=!chainsaw_active] add chainsaw_victim

scoreboard players set @s chainsaw_timer 80

scoreboard players set @s chain_cooldown 301
