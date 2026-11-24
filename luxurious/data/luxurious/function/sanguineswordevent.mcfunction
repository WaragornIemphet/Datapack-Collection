advancement revoke @s only luxurious:sanguinesword
effect give @s instant_health 1 1 true
effect give @s saturation 1 1 true
summon experience_orb ~ ~ ~
summon experience_orb ~ ~ ~
summon experience_orb ~ ~ ~
summon experience_orb ~ ~ ~
summon experience_orb ~ ~ ~
execute at @s run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0.4 0.4 0.4 1 100 normal
execute at @s run playsound minecraft:entity.player.levelup voice @a[distance=..16] ~ ~ ~ 100 2
execute at @s run playsound minecraft:block.beacon.activate voice @a[distance=..16] ~ ~ ~ 100 1
title @s actionbar [{"text":"LIFE STEAL","color":"red","bold":true}]