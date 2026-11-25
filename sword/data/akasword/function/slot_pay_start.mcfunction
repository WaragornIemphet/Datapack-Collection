clear @s *[minecraft:custom_data~{recover:1}] 1

tag @s add akasword_rolling

title @s times 10 150 3
title @s title [{"text":"7 7 7","color":"gray","obfuscated":true}]
execute at @s run playsound minecraft:music_disc.roll voice @a[distance=..128] ~ ~ ~ 1 1

scoreboard players set @s akasword_roll_timer 145
