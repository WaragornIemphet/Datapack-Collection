# ==================================================
#  TRAP RADAR (TAGLESS SYSTEM)
# ==================================================
# 1. Trigger if a valid target is in range (NO tags applied to the target!)
execute if entity @s[tag=trap_mobs] if entity @e[type=!player,type=!minecraft:armor_stand,type=!mannequin,type=!minecraft:mannequin,type=!minecraft:wind_charge,type=!minecraft:breeze_wind_charge,type=!minecraft:arrow,type=!minecraft:snowball,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:painting,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:area_effect_cloud,distance=..4] run tag @s add trap_firing

execute if entity @s[tag=trap_players] if entity @e[type=player,tag=!strategist,distance=..4] run tag @s add trap_firing

execute if entity @s[tag=trap_both] if entity @e[type=!minecraft:armor_stand,type=!mannequin,type=!minecraft:mannequin,type=!minecraft:wind_charge,type=!minecraft:breeze_wind_charge,type=!minecraft:arrow,type=!minecraft:snowball,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:painting,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:area_effect_cloud,tag=!strategist,distance=..4] run tag @s add trap_firing

# 2. Setup the firing sequence
execute if entity @s[tag=trap_firing] run scoreboard players set @s sentry_math 8
execute if entity @s[tag=trap_firing] run scoreboard players set @s trap_timer 0
execute if entity @s[tag=trap_firing] run tellraw @a[tag=strategist] [{"text":"[!] ","color":"red"},{"text":"A Trap has been triggered!","color":"yellow"}]
