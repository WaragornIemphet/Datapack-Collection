scoreboard players set #atonefound lb_math 1
scoreboard players add @p[tag=lightbane] atonemarkcount 1
tag @s add atonemark
function akasword:atonefreeze

particle minecraft:end_rod ~ ~ ~ 0.0 10.0 0.0 0.01 100
playsound minecraft:block.beacon.power_select voice @a[distance=..100] ^ ^ ^ 500 1.5 1