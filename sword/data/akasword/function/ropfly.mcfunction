# 1. Expire after 16 ticks (96 blocks max flight range)
scoreboard players remove @s roplife 1
execute if score @s roplife matches ..0 run particle minecraft:end_rod ~ ~1.0 ~ 0.2 0.2 0.2 0.05 10 normal
execute if score @s roplife matches ..0 run kill @s
execute if score @s roplife matches ..0 run return 0

# 2. Run 8 movement sub-steps per tick (0.75 blocks each = 6.0 blocks/tick)
scoreboard players set #ropstep lb_math 8
function akasword:ropstep