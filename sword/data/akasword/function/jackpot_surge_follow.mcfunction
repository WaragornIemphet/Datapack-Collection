execute at @e[tag=current_jackpot,limit=1,sort=nearest] run tp @s ^ ^ ^-2
execute as @e[tag=current_jackpot,limit=1,sort=nearest] at @s run damage @s 35 player_attack
execute at @e[tag=current_jackpot,limit=1,sort=nearest] run particle gust_emitter_small ^ ^1.2 ^ 0.2 0.2 0.2 0 1 force
effect give @s slow_falling 8 0 true
effect give @s resistance 4 255 true


scoreboard players set @s jackpotsurge_cd 500
