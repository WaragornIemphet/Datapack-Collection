scoreboard players set @s tabletswitch_cd 10

execute if score @s tabletmode matches ..0 run scoreboard players set @s tabletmode 1
scoreboard players add @s tabletmode 1
execute if score @s tabletmode matches 4.. run scoreboard players set @s tabletmode 1

playsound minecraft:ui.button.click voice @a[distance=..16] ~ ~ ~ 100 1.2
