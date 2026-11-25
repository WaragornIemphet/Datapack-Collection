execute if score @s musket_stage matches 0 run clear @s minecraft:gunpowder 1
execute if score @s musket_stage matches 1 run clear @s minecraft:paper 1
execute if score @s musket_stage matches 2 run clear @s minecraft:iron_nugget 1

scoreboard players add @s musket_stage 1

playsound block.iron.place player @a ~ ~ ~ 1 1.5

title @s actionbar {"text":"Loaded!","color":"green"}
