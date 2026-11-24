# Stage 0: Check Gunpowder
execute if score @s pistol_stage matches ..0 if items entity @s weapon.offhand minecraft:gunpowder run scoreboard players set @s pistol_timer 40

# Stage 1: Check Paper
execute if score @s pistol_stage matches 1 if items entity @s weapon.offhand minecraft:paper run scoreboard players set @s pistol_timer 40

# Stage 2: Check Iron Nugget
execute if score @s pistol_stage matches 2 if items entity @s weapon.offhand minecraft:iron_nugget run scoreboard players set @s pistol_timer 40
