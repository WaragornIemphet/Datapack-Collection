# Scan for 1 closest living entity in front of the player (excluding interactions/self)
execute positioned ^ ^ ^1.5 as @e[distance=..1.5,sort=nearest,type=!interaction,type=!#redirectable_projectile,type=!item,type=!experience_orb,tag=!luckybastard,type=!armor_stand,type=!mannequin,type=!text_display] run function akasword:jackpot_targetfound

# If a target was successfully found and tagged, stop the charging phase for the user
execute if entity @e[tag=drag_target] run tag @s remove skill_charging

# If a target was found, initialize the user's drag timer to 100 ticks (5 seconds)
execute if entity @e[tag=drag_target] run scoreboard players set @s drag_time 60
