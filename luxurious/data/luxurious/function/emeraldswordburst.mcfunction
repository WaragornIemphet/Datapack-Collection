execute store result score @s EmeraldRNG run random value 1..5

execute if score @s EmeraldRNG matches 1 run damage @s 8 minecraft:player_attack by @p[tag=emeraldsworduser,limit=1]
execute if score @s EmeraldRNG matches 1 run summon item ~ ~1 ~ {Item:{id:"minecraft:emerald",count:1},PickupDelay:10,Motion:[0.1, 0.3, 0.1]}

execute if score @s EmeraldRNG matches 2 run damage @s 9 minecraft:player_attack by @p[tag=emeraldsworduser,limit=1]
execute if score @s EmeraldRNG matches 2 run summon item ~ ~1 ~ {Item:{id:"minecraft:emerald",count:1},PickupDelay:10,Motion:[0.2, 0.3, 0.1]}
execute if score @s EmeraldRNG matches 2 run summon item ~ ~1 ~ {Item:{id:"minecraft:emerald",count:1},PickupDelay:10,Motion:[-0.2, 0.3, -0.1]}

execute if score @s EmeraldRNG matches 3 run damage @s 10 minecraft:player_attack by @p[tag=emeraldsworduser,limit=1]
execute if score @s EmeraldRNG matches 3 run summon item ~ ~1 ~ {Item:{id:"minecraft:emerald",count:1},PickupDelay:10,Motion:[0.2, 0.3, 0.1]}
execute if score @s EmeraldRNG matches 3 run summon item ~ ~1 ~ {Item:{id:"minecraft:emerald",count:1},PickupDelay:10,Motion:[-0.2, 0.3, -0.1]}
execute if score @s EmeraldRNG matches 3 run summon item ~ ~1 ~ {Item:{id:"minecraft:emerald",count:1},PickupDelay:10,Motion:[0.1, 0.4, -0.2]}

execute if score @s EmeraldRNG matches 4 run damage @s 11 minecraft:player_attack by @p[tag=emeraldsworduser,limit=1]
execute if score @s EmeraldRNG matches 4 run summon item ~ ~1 ~ {Item:{id:"minecraft:emerald",count:1},PickupDelay:10,Motion:[0.2, 0.3, 0.1]}
execute if score @s EmeraldRNG matches 4 run summon item ~ ~1 ~ {Item:{id:"minecraft:emerald",count:1},PickupDelay:10,Motion:[-0.2, 0.3, -0.1]}
execute if score @s EmeraldRNG matches 4 run summon item ~ ~1 ~ {Item:{id:"minecraft:emerald",count:1},PickupDelay:10,Motion:[0.1, 0.4, -0.2]}
execute if score @s EmeraldRNG matches 4 run summon item ~ ~1 ~ {Item:{id:"minecraft:emerald",count:1},PickupDelay:10,Motion:[-0.1, 0.4, 0.2]}

execute if score @s EmeraldRNG matches 5 run damage @s 12 minecraft:player_attack by @p[tag=emeraldsworduser,limit=1]
execute if score @s EmeraldRNG matches 5 run summon item ~ ~1 ~ {Item:{id:"minecraft:emerald",count:1},PickupDelay:10,Motion:[0.2, 0.3, 0.1]}
execute if score @s EmeraldRNG matches 5 run summon item ~ ~1 ~ {Item:{id:"minecraft:emerald",count:1},PickupDelay:10,Motion:[-0.2, 0.3, -0.1]}
execute if score @s EmeraldRNG matches 5 run summon item ~ ~1 ~ {Item:{id:"minecraft:emerald",count:1},PickupDelay:10,Motion:[0.1, 0.4, -0.2]}
execute if score @s EmeraldRNG matches 5 run summon item ~ ~1 ~ {Item:{id:"minecraft:emerald",count:1},PickupDelay:10,Motion:[-0.1, 0.4, 0.2]}
execute if score @s EmeraldRNG matches 5 run summon item ~ ~1 ~ {Item:{id:"minecraft:emerald",count:1},PickupDelay:10,Motion:[0.0, 0.5, 0.0]}

summon experience_orb ~ ~1 ~ {Value:1,Motion:[0.2, 0.4, 0.2]}
summon experience_orb ~ ~1 ~ {Value:1,Motion:[-0.2, 0.4, -0.2]}
summon experience_orb ~ ~1 ~ {Value:1,Motion:[0.2, 0.4, -0.2]}
summon experience_orb ~ ~1 ~ {Value:1,Motion:[-0.2, 0.4, 0.2]}
summon experience_orb ~ ~1 ~ {Value:1,Motion:[0.0, 0.6, 0.0]}

effect give @s slowness 1 255 true
effect give @s weakness 1 255 true

execute at @s run playsound minecraft:entity.player.levelup voice @a[distance=..16] ~ ~ ~ 100 2
execute at @s run playsound minecraft:entity.wither.break_block voice @a[distance=..16] ~ ~ ~ 100 1
execute at @s run particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.2 15 normal
execute at @s run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 1 1 1 1 100 normal
title @p[tag=emeraldsworduser] actionbar [{"score":{"name":"@s","objective":"EmeraldRNG"},"color":"green","bold":true}]

scoreboard players set @s emeraldcombo 0