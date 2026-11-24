# 1. RESET & LOCK
scoreboard players set @s jackpot_skill_uses 0
tag @s add akasword_rolling

# 2. AUDIO & VISUALS
# Show obfuscated text while spinning
title @s times 10 150 3
title @s title [{"text":"? ? ?","color":"gray","obfuscated":true}]
execute at @s run playsound minecraft:music_disc.roll voice @a[distance=..128] ~ ~ ~ 100 1 1

# 3. SET TIMER (3 Seconds = 60 Ticks)
scoreboard players set @s jackpot_roll_timer 145
execute store result score #fatelex akasword_rng run random value 1..17
execute at @a[tag=luckybastard] if score #fatelex akasword_rng matches 1 run playsound music_disc.jackpot voice @a[distance=..128] ~ ~ ~ 300 1 1