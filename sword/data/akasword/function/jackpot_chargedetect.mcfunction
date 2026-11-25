execute positioned ^ ^ ^1.5 as @e[distance=..1.5,sort=nearest,type=!interaction,type=!#redirectable_projectile,type=!item,type=!experience_orb,tag=!luckybastard,type=!armor_stand,type=!mannequin,type=!text_display] run function akasword:jackpot_targetfound

execute if entity @e[tag=drag_target] run tag @s remove skill_charging

execute if entity @e[tag=drag_target] run scoreboard players set @s drag_time 60
