scoreboard players remove @s atonelife 1
execute if score @s atonelife matches ..0 run particle minecraft:end_rod ~ ~1.0 ~ 0.2 0.2 0.2 0.05 8 normal
execute if score @s atonelife matches ..0 run kill @s
execute if score @s atonelife matches ..0 run return 0

scoreboard players set #atonestep lb_math 8
function akasword:atonestep