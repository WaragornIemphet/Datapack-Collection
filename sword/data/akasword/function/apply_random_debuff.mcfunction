# 1. Pick a random number 0-9
execute as @s at @s store result score @s mih_math run random value 0..15

# 2. Apply effect based on result (using check from last random roll)
execute if score @s mih_math matches 0 at @s run effect give @s minecraft:blindness 12000 0 true
execute if score @s mih_math matches 1 at @s run effect give @s minecraft:wither 12000 5 true
execute if score @s mih_math matches 2 at @s run effect give @s minecraft:levitation 12000 10 true
execute if score @s mih_math matches 3 at @s run effect give @s minecraft:slowness 12000 4 true
execute if score @s mih_math matches 4 at @s run effect give @s minecraft:nausea 12000 0 true
execute if score @s mih_math matches 5 at @s run effect give @s minecraft:hunger 12000 30 true
execute if score @s mih_math matches 6 at @s run effect give @s minecraft:glowing 12000 0 true
execute if score @s mih_math matches 7 at @s run effect give @s minecraft:mining_fatigue 12000 250 true
execute if score @s mih_math matches 8 at @s run effect give @s minecraft:poison 12000 10 true
execute if score @s mih_math matches 9 at @s run effect give @s minecraft:weakness 12000 100 true
execute if score @s mih_math matches 10 at @s run effect give @s minecraft:instant_damage 12000 5 true
execute if score @s mih_math matches 11 at @s run effect give @s minecraft:unluck 12000 250 true
execute if score @s mih_math matches 12 at @s run effect give @s minecraft:wind_charged 12000 250 true
execute if score @s mih_math matches 13 at @s run effect give @s minecraft:infested 12000 250 true
execute if score @s mih_math matches 14 at @s run effect give @s minecraft:weaving 12000 250 true
execute if score @s mih_math matches 15 at @s run effect give @s minecraft:oozing 12000 250 true