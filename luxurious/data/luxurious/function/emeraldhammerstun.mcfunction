effect give @s slowness 5 255 true
effect give @s weakness 5 255 true
effect give @s blindness 5 0 false

summon item ~ ~1 ~ {Item:{id:"minecraft:emerald",count:1},PickupDelay:10,Motion:[0.2, 0.3, 0.1]}
summon item ~ ~1 ~ {Item:{id:"minecraft:emerald",count:1},PickupDelay:10,Motion:[-0.2, 0.3, -0.1]}
summon experience_orb ~ ~1 ~ {Value:1,Motion:[-0.2, 0.4, 0.2]}
summon experience_orb ~ ~1 ~ {Value:1,Motion:[0.0, 0.6, 0.0]}

execute at @s run playsound minecraft:entity.player.levelup voice @a[distance=..16] ~ ~ ~ 100 2
execute at @s run playsound minecraft:entity.wither.break_block voice @a[distance=..16] ~ ~ ~ 100 1
execute at @s run particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.2 15 normal
execute at @s run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 1 1 1 1 100 normal