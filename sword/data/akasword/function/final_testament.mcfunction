playsound minecraft:entity.lightning_bolt.thunder weather @a ~ ~ ~ 1 0.5
execute as @s run tellraw @a ["<",{"selector":"@s"},"> ",{"text":"FINAL TESTAMENT !","bold":true,"color":"yellow"}]


execute as @e[tag=current_victim,limit=1] run scoreboard players set @s ult_timer 100

execute at @e[tag=current_victim,limit=1] run particle minecraft:end_rod ^ ^1 ^ 1 1 1 0.1 200


scoreboard players remove @s ult_charge 20
scoreboard players set @s lb_ft_cd 600
