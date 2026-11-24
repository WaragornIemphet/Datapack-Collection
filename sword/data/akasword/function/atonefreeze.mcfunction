effect give @s minecraft:slowness 2 255 true
effect give @s minecraft:jump_boost 2 128 true
effect give @s minecraft:weakness 2 255 true
effect give @s minecraft:mining_fatigue 2 255 true
execute if entity @s[type=!minecraft:player] run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}