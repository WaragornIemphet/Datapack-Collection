particle dust_color_transition{from_color:[1.0,0.94,0.38],to_color:[1.0,1.0,1.0],scale:4} ^ ^3 ^ 0.75 20 0.75 0.01 1000
particle end_rod ^ ^3 ^ 0.1 20 0.1 0.01 300
particle end_rod ^ ^0.01 ^ 1.5 0 1.5 0.01 500
playsound minecraft:item.totem.use voice @a[distance=..100] ~ ~ ~ 300 2 1
damage @s 50 minecraft:magic by @p[tag=lightbane]
execute as @e[distance=..4,tag=!lightbane,type=!armor_stand,type=!mannequin,type=!item,type=!marker,type=!interaction] at @s run damage @s 15 minecraft:magic by @p[tag=lightbane]

execute if score #lb_paid_proc lb_math matches 0 run scoreboard players set @s lightbane_combohits 0

execute if score @p[tag=lightbane] lb_mode matches 0 run scoreboard players add @p[tag=lightbane] ult_charge 1
execute if score @p[tag=lightbane] ult_charge matches 51.. run scoreboard players set @p[tag=lightbane] ult_charge 50


scoreboard players set @p[tag=lightbane] lb_ui_pause 15
execute as @a[tag=lightbane] at @s run title @s[tag=lightbane] actionbar [{"text":"Radiating Incandescence","color":"gold","bold":true},{"text":" [","color":"dark_gray"},{"score":{"name":"@s","objective":"ult_charge"},"color":"gold","bold":true},{"text":"]","color":"dark_gray"},]
