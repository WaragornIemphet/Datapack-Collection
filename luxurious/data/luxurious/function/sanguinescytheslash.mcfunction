execute at @s run playsound minecraft:entity.player.attack.sweep master @a[distance=..16] ^ ^ ^ 1.5 0.8
execute at @s run playsound minecraft:entity.player.attack.crit master @a[distance=..16] ^ ^ ^ 1.5 0.5
execute at @s run particle sweep_attack ^ ^1 ^ 1.5 0 1.5 0 8 force
execute at @s run particle dust{color:[0.8, 0.0, 0.0], scale:1.5} ^ ^1 ^ 1.5 0.2 1.5 0.1 30 force
execute as @e[distance=..5,type=!minecraft:interaction,type=!armor_stand,type=!mannequin,type=!item_frame,type=!glow_item_frame,type=!item,tag=!sanguinescytheuser] run damage @s 5 minecraft:player_attack by @a[tag=sanguinescytheuser,limit=1]
tag @s remove sanguinescytheuser

