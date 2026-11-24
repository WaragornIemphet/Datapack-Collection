# Damage the victim (Arrow type damage ignores armor partially)
damage @s 25 minecraft:arrow

# Play hit sound
playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1 1

# Visual confirmation
particle minecraft:crit ~ ~1 ~ 0.2 0.2 0.2 0.1 10 force
particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0 0 0 1 50 force

# Kill the bullet (The bullet is the closest armor stand to the victim)
execute as @e[type=armor_stand, tag=akasword.fbullet, distance=..3, limit=1, sort=nearest] run kill @s
