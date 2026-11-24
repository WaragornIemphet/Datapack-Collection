# 1. Stop on hitting an enemy (centered 1x1x1 ray check)
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,dy=0,dz=0,tag=!lightbane,type=!minecraft:armor_stand,type=!minecraft:mannequin,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:arrow,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:area_effect_cloud,type=!minecraft:item_display,type=!minecraft:block_display,type=!minecraft:text_display,type=!minecraft:painting,type=!minecraft:item_frame,type=!minecraft:glow_item_frame] run return run summon minecraft:marker ~0.5 ~-0.5 ~0.5 {Tags:["ropaim"]}

# 2. Stop on hitting a solid block
execute unless block ~ ~ ~ #minecraft:replaceable run return run summon minecraft:marker ~ ~-1.0 ~ {Tags:["ropaim"]}

# 3. Stop at max range (36 blocks)
scoreboard players remove #ropdist lb_math 1
execute if score #ropdist lb_math matches ..0 run return run summon minecraft:marker ~ ~-1.0 ~ {Tags:["ropaim"]}

# 4. Advance raycast 1 block forward
execute positioned ^ ^ ^1 run function akasword:ropaim