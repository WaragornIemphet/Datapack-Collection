effect give @s levitation 1 2 true
effect give @s glowing 1 2 true

execute at @s run particle minecraft:dust_color_transition{from_color:[1.0,0.94,0.38],to_color:[1.0,1.0,1.0],scale:2} ~ ~1 ~ 0.2 0.5 0.2 0.1 2
particle dust_color_transition{from_color:[1.0,0.94,0.38],to_color:[1.0,1.0,1.0],scale:4} ^ ^3 ^ 0.75 20 0.75 0.01 1000
particle end_rod ^ ^3 ^ 0.5 20 0.5 0.01 300

playsound minecraft:item.totem.use voice @a[distance=..100] ~ ~ ~ 300 0.5 1