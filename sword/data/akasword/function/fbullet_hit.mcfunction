damage @s 25 minecraft:arrow

playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1 1

particle minecraft:crit ~ ~1 ~ 0.2 0.2 0.2 0.1 10 force
particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0 0 0 1 50 force

execute as @e[type=armor_stand, tag=akasword.fbullet, distance=..3, limit=1, sort=nearest] run kill @s
