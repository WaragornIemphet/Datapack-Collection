# 1. Keep all marked targets frozen every tick
execute as @e[tag=atonemark] run function akasword:atonefreeze

# 2. Refresh end_rod pillars every 12 ticks (0.6s) without replaying the mark sound
scoreboard players add @s atonetimer 1
scoreboard players operation #atonemod lb_math = @s atonetimer
scoreboard players set #12 lb_math 12
scoreboard players operation #atonemod lb_math %= #12 lb_math
execute if score #atonemod lb_math matches 0 as @e[tag=atonemark] at @s run particle minecraft:end_rod ~ ~ ~ 0.0 10.0 0.0 0.01 25

# 3. Mark the next nearest valid target every 2 ticks (0.1s)
scoreboard players operation #atonepulse lb_math = @s atonetimer
scoreboard players set #2 lb_math 2
scoreboard players operation #atonepulse lb_math %= #2 lb_math
execute if score #atonepulse lb_math matches 0 run function akasword:atonemarkstep