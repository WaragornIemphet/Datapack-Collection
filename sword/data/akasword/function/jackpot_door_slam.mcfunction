scoreboard players add @a[tag=luckybastard] jackpot_skill_uses 1

playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ 1 2

particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1

execute as @e[tag=door_left] at @s run tp @s ^-1.5 ^ ^
execute as @e[tag=door_right] at @s run tp @s ^1.5 ^ ^

schedule function akasword:jackpot_door_damage 0.1s

schedule function akasword:jackpot_clear_doors 7s
execute at @e[tag=door_root] if entity @e[tag=!luckybastard,type=!armor_stand,type=!item,distance=..3] run schedule function akasword:jackpot_clear_doors 3s

