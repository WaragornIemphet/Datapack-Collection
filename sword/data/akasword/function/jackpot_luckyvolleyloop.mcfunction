scoreboard players operation #loop_check jp_time = @s jp_time

scoreboard players operation #loop_check jp_time %= #five jp_time

execute if score @s jp_time matches 0..45 if score #loop_check jp_time matches 0 run function akasword:jackpot_luckyvolley

scoreboard players remove @s jp_time 1

execute if score @s jp_time matches -20 run function akasword:jackpot_luckyvolleylast

execute as @s anchored eyes at @s run tp @e[tag=luckyvolleyrange] ^ ^-1 ^3
