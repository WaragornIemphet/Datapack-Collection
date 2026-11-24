effect give @a[distance=..25] nausea 10 3 false
effect give @a[distance=..25] hunger 10 0 false
execute as @a[distance=..50] run playsound minecraft:entity.elder_guardian.curse voice @s ~ ~ ~ 1 0.5
execute at @s run particle dust_color_transition{from_color:[0.0,0.0,0.0],to_color:[0.32,0.14,0.3],scale:4} ^ ^0.5 ^-0.5 10 10 10 0.5 1000 normal