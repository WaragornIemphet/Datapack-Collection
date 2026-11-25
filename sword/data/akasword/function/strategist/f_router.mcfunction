item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air

execute if score @s tabletmode matches ..0 run scoreboard players set @s tabletmode 1
execute if score @s tabletmode matches 1 run function akasword:strategist/mode1_f
execute if score @s tabletmode matches 2 run function akasword:strategist/mode2_f
execute if score @s tabletmode matches 3 run function akasword:strategist/mode3_f
