tag @e[tag=atonecand] remove atonecand
execute positioned ~-0.7 ~0.3 ~-0.7 as @e[dx=0.4,dy=0.4,dz=0.4,tag=!lightbane,type=!#akasword:atoneignore] run tag @s add atonecand
execute positioned ~-0.7 ~0.3 ~-0.7 as @a[dx=0.4,dy=0.4,dz=0.4,tag=!lightbane,gamemode=!spectator,scores={lightbane_combohits=1..}] run tag @s add atonecand
execute as @e[tag=atonecand,limit=1,sort=nearest] at @s run function akasword:atonehit
tag @e[tag=atonecand] remove atonecand

kill @s