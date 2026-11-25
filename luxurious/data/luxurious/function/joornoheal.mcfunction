effect give @e[distance=..20,tag=!joor2,tag=!powp2p2,type=!player,tag=!joorshadow,type=!iron_golem,type=!snow_golem,type=!wolf] instant_health 1 3 false
execute as @a[distance=..50] run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ 1 0.5
execute at @s run particle dust_color_transition{from_color:[0.0,1.0,0.33],to_color:[0.0,1.0,0.33],scale:4} ^ ^0.5 ^-0.5 10 10 10 0.5 1000 normal
