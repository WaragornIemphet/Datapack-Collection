particle minecraft:dust_color_transition{from_color:[1.0,0.94,0.38],to_color:[1.0,1.0,1.0],scale:1.1} ~ ~1.0 ~ 0.04 0.04 0.04 0 1 normal

execute positioned ~-0.7 ~0.3 ~-0.7 if entity @e[dx=0.4,dy=0.4,dz=0.4,tag=!lightbane,type=!#akasword:atoneignore] at @s run return run function akasword:atoneimpact
execute positioned ~-0.7 ~0.3 ~-0.7 if entity @a[dx=0.4,dy=0.4,dz=0.4,tag=!lightbane,gamemode=!spectator,scores={lightbane_combohits=1..}] at @s run return run function akasword:atoneimpact

execute positioned ~ ~1.0 ~ unless block ~ ~ ~ #minecraft:replaceable at @s run return run function akasword:atonewall

scoreboard players remove #atonestep lb_math 1
execute if score #atonestep lb_math matches 1.. run function akasword:atonestep
