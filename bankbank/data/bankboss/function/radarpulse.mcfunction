# 1. Apply the 1-second glowing effect to everything up to 32 blocks away (ignoring players)
effect give @e[distance=..16,type=minecraft:armor_stand] minecraft:glowing 5 0 true
effect give @e[distance=..32,type=!player,type=!armor_stand ] minecraft:glowing 5 0 true

# 2. Immersive effects: Play a sonar sound and spawn a subtle expanding circle of particles
execute at @s run playsound minecraft:block.bell.resonate voice @s ~ ~ ~ 150 1.5
execute at @s run playsound minecraft:block.bell.resonate voice @s ~ ~ ~ 150 1.5
execute at @s run playsound minecraft:block.bell.resonate voice @s ~ ~ ~ 150 1.5

execute as @s at @s if entity @e[tag=bankspawnarmorstand,limit=1,distance=..1] run function bankboss:bankstartspawn

execute as @s at @s run effect give @s blindness 5 1 true
# 3. Trigger 10-second cooldown (10 seconds * 20 ticks = 200)
scoreboard players set @s radarcd 200
