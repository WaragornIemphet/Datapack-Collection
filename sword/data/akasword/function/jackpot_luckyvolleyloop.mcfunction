# Copy the player's current timer for math
scoreboard players operation #loop_check jp_time = @s jp_time

# Divide by 5 and keep the remainder
scoreboard players operation #loop_check jp_time %= #five jp_time

# Run the 10 effects (only when score is 0 or above)
execute if score @s jp_time matches 0..45 if score #loop_check jp_time matches 0 run function akasword:jackpot_luckyvolley

# Tick the player's personal timer down by 1
scoreboard players remove @s jp_time 1

# WAIT 1.5 SECONDS: Trigger the final function 30 ticks after the last effect
execute if score @s jp_time matches -20 run function akasword:jackpot_luckyvolleylast

execute as @s anchored eyes at @s run tp @e[tag=luckyvolleyrange] ^ ^-1 ^3