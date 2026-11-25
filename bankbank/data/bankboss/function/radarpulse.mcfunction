effect give @e[distance=..16,type=minecraft:armor_stand] minecraft:glowing 5 0 true
effect give @e[distance=..32,type=!player,type=!armor_stand ] minecraft:glowing 5 0 true

execute at @s run playsound minecraft:block.bell.resonate voice @s ~ ~ ~ 150 1.5
execute at @s run playsound minecraft:block.bell.resonate voice @s ~ ~ ~ 150 1.5
execute at @s run playsound minecraft:block.bell.resonate voice @s ~ ~ ~ 150 1.5

execute as @s at @s if entity @e[tag=bankspawnarmorstand,limit=1,distance=..1] run function bankboss:bankstartspawn

execute as @s at @s run effect give @s blindness 5 1 true
scoreboard players set @s radarcd 200
