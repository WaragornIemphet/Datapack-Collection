execute if score @s pistol_stage matches ..0 if items entity @s weapon.offhand minecraft:gunpowder run scoreboard players set @s pistol_timer 40

execute if score @s pistol_stage matches 1 if items entity @s weapon.offhand minecraft:paper run scoreboard players set @s pistol_timer 40

execute if score @s pistol_stage matches 2 if items entity @s weapon.offhand minecraft:iron_nugget run scoreboard players set @s pistol_timer 40
