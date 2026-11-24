# 1. Payment
clear @s *[minecraft:custom_data~{recover:1}] 1

# 2. Lock the Player
tag @s add akasword_rolling

# 3. Visuals & Audio
title @s times 10 150 3
title @s title [{"text":"7 7 7","color":"gray","obfuscated":true}]
execute at @s run playsound minecraft:music_disc.roll voice @a[distance=..128] ~ ~ ~ 1 1

# 4. START TIMER (7.2 Seconds)
# 144 Ticks + 1 buffer tick = 145
scoreboard players set @s akasword_roll_timer 145
