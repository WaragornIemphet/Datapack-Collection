# 1. Expanded 10-Block 360-Degree Golden Cleave Ring (Inner & Outer Sweeps)
particle minecraft:sweep_attack ~4.5 ~1 ~ 0 0 0 0 1 normal
particle minecraft:sweep_attack ~-4.5 ~1 ~ 0 0 0 0 1 normal
particle minecraft:sweep_attack ~ ~1 ~4.5 0 0 0 0 1 normal
particle minecraft:sweep_attack ~ ~1 ~-4.5 0 0 0 0 1 normal
particle minecraft:sweep_attack ~6.5 ~1 ~6.5 0 0 0 0 1 normal
particle minecraft:sweep_attack ~-6.5 ~1 ~6.5 0 0 0 0 1 normal
particle minecraft:sweep_attack ~6.5 ~1 ~-6.5 0 0 0 0 1 normal
particle minecraft:sweep_attack ~-6.5 ~1 ~-6.5 0 0 0 0 1 normal
particle minecraft:sweep_attack ~9 ~1 ~ 0 0 0 0 1 normal
particle minecraft:sweep_attack ~-9 ~1 ~ 0 0 0 0 1 normal
particle minecraft:sweep_attack ~ ~1 ~9 0 0 0 0 1 normal
particle minecraft:sweep_attack ~ ~1 ~-9 0 0 0 0 1 normal

particle minecraft:dust_color_transition{from_color:[1.0,0.94,0.38],to_color:[1.0,1.0,1.0],scale:2.0} ~ ~1 ~ 4.5 0.2 4.5 0.02 140 normal
particle minecraft:end_rod ~ ~1 ~ 4.5 0.25 4.5 0.05 60 normal

# 2. Hit all enemies within 10 blocks around the user
execute as @e[distance=..10,tag=!lightbane,type=!minecraft:armor_stand,type=!minecraft:mannequin,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:arrow,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:area_effect_cloud,type=!minecraft:item_display,type=!minecraft:block_display,type=!minecraft:text_display,type=!minecraft:painting,type=!minecraft:item_frame,type=!minecraft:glow_item_frame] at @s run function akasword:trinity_cleave_hit