execute if entity @s run function akasword:jackpot_step
execute if entity @s run function akasword:jackpot_step
execute if entity @s run function akasword:jackpot_step
execute if entity @s run function akasword:jackpot_step

execute if entity @e[tag=jackpot_hit] as @e[tag=jackpot_hit] at @s run damage @s 20 minecraft:player_attack by @a[tag=luckybastard,limit=1]
tag @e[tag=jackpot_hit,type=!slime,type=!magma_cube] remove jackpot_hit

scoreboard players add @s akasword_ball_life 1
execute if score @s akasword_ball_life matches 60.. run kill @s
