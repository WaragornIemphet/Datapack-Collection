# Stage 0: Check Gunpowder
execute if score @s musket_stage matches ..0 if items entity @s weapon.offhand minecraft:gunpowder run scoreboard players set @s musket_timer 70

# Stage 1: Check Paper
execute if score @s musket_stage matches 1 if items entity @s weapon.offhand minecraft:paper run scoreboard players set @s musket_timer 70

# Stage 2: Check Iron Nugget
execute if score @s musket_stage matches 2 if items entity @s weapon.offhand minecraft:iron_nugget run scoreboard players set @s musket_timer 70
