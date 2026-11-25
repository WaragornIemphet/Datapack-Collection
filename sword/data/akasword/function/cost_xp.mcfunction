experience add @s -500 points
effect give @a[distance=..5] instant_health 1 0
playsound minecraft:block.glass.break master @s ~ ~ ~ 1 0.5
particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 1 50
scoreboard players set @s healstaff_cd 100
