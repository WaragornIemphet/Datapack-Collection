# 1. Run damage & stack logic on the nearest hit enemy inside the blade hitbox
execute positioned ~-0.7 ~0.3 ~-0.7 as @e[dx=0.4,dy=0.4,dz=0.4,tag=!lightbane,type=!minecraft:armor_stand,type=!minecraft:mannequin,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:arrow,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:area_effect_cloud,type=!minecraft:item_display,type=!minecraft:block_display,type=!minecraft:text_display,type=!minecraft:painting,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!player,nbt={Invulnerable:0b},limit=1,sort=nearest] at @s run function akasword:rophit
execute positioned ~-0.7 ~0.3 ~-0.7 as @a[dx=0.4,dy=0.4,dz=0.4,tag=!lightbane,limit=1,sort=nearest,scores={lightbane_combohits=1..}] at @s run function akasword:rophit

# 2. Impact VFX/SFX & remove projectile
playsound minecraft:entity.player.attack.crit voice @a[distance=..32] ~ ~1.0 ~ 1.1 1.3
playsound minecraft:block.amethyst_block.break voice @a[distance=..32] ~ ~1.0 ~ 1.0 1.6
particle minecraft:crit ~ ~1.0 ~ 0.3 0.3 0.3 0.25 18 normal
particle minecraft:end_rod ~ ~1.0 ~ 0.25 0.25 0.25 0.1 15 normal
kill @s