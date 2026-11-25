execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,dy=0,dz=0,tag=!lightbane,type=!#akasword:atoneignore] run return run summon minecraft:marker ~0.5 ~-0.5 ~0.5 {Tags:["atoneaim"]}
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,dy=0,dz=0,tag=!lightbane,gamemode=!spectator,scores={lightbane_combohits=1..}] run return run summon minecraft:marker ~0.5 ~-0.5 ~0.5 {Tags:["atoneaim"]}

execute unless block ~ ~ ~ #minecraft:replaceable run return run summon minecraft:marker ~ ~-1.0 ~ {Tags:["atoneaim"]}

scoreboard players remove #atonedist lb_math 1
execute if score #atonedist lb_math matches ..0 run return run summon minecraft:marker ~ ~-1.0 ~ {Tags:["atoneaim"]}

execute positioned ^ ^ ^1 run function akasword:atoneaim
