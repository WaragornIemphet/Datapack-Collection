# 1. Crisp golden streak at blade height (reduced count from 2 -> 1 to match 8x sub-steps)
particle minecraft:dust_color_transition{from_color:[1.0,0.94,0.38],to_color:[1.0,1.0,1.0],scale:1.1} ~ ~1.0 ~ 0.04 0.04 0.04 0 1 normal
particle minecraft:end_rod ~ ~1.0 ~ 0.03 0.03 0.03 0.01 1 normal

# 2. Check for enemy impact (1.4x1.4x1.4 box centered on blade at ~ ~1.0 ~)
execute positioned ~-0.7 ~0.3 ~-0.7 if entity @e[dx=0.4,dy=0.4,dz=0.4,tag=!lightbane,type=!minecraft:armor_stand,type=!minecraft:mannequin,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:arrow,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:area_effect_cloud,type=!minecraft:item_display,type=!minecraft:block_display,type=!minecraft:text_display,type=!minecraft:painting,type=!minecraft:item_frame,type=!minecraft:glow_item_frame] at @s run return run function akasword:ropimpact

# 3. Check for solid block collision at blade height
execute positioned ~ ~1.0 ~ unless block ~ ~ ~ #minecraft:replaceable at @s run return run function akasword:ropwall

# 4. Continue remaining sub-steps
scoreboard players remove #ropstep lb_math 1
execute if score #ropstep lb_math matches 1.. run function akasword:ropstep