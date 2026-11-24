# Consume the item only when the 3 seconds are up
execute if score @s pistol_stage matches 0 run clear @s minecraft:gunpowder 1
execute if score @s pistol_stage matches 1 run clear @s minecraft:paper 1
execute if score @s pistol_stage matches 2 run clear @s minecraft:iron_nugget 1

# Advance the stage
scoreboard players add @s pistol_stage 1

# Audio feedback for the player
playsound block.iron.place player @a ~ ~ ~ 1 1.5

title @s actionbar {"text":"Loaded!","color":"green"}