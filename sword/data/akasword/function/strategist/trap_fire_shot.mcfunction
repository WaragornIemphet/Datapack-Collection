# 1. Reset timer for the next shot
scoreboard players set @s trap_timer 0

# 2. Visuals & Audio
particle minecraft:flame ^-0.4 ^1.6 ^1.1 0.05 0.05 0.05 0.00001 10 force
particle minecraft:smoke ^-0.4 ^1.55 ^2 0.0 0.5 1 0.01 100 force
playsound minecraft:entity.generic.explode voice @a[distance=..64] ^ ^ ^ 100 2 1
playsound minecraft:entity.ghast.shoot voice @a[distance=..64] ^ ^ ^ 100 1.5 1

# 3. Dynamic Target Damage & Glowing (Calculated fresh on EVERY shot)
# MOBS
execute if entity @s[tag=trap_mobs] as @e[type=!player,type=!minecraft:armor_stand,type=!mannequin,type=!minecraft:mannequin,type=!minecraft:wind_charge,type=!minecraft:breeze_wind_charge,type=!minecraft:arrow,type=!minecraft:snowball,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:painting,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:area_effect_cloud,distance=..10,limit=1,sort=nearest] run effect give @s glowing 20 0 true
execute if entity @s[tag=trap_mobs] as @e[type=!player,type=!minecraft:armor_stand,type=!mannequin,type=!minecraft:mannequin,type=!minecraft:wind_charge,type=!minecraft:breeze_wind_charge,type=!minecraft:arrow,type=!minecraft:snowball,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:painting,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:area_effect_cloud,distance=..10,limit=1,sort=nearest] run effect give @s slowness 10 255 true
execute if entity @s[tag=trap_mobs] run data modify entity @e[type=!player,type=!minecraft:armor_stand,type=!mannequin,type=!minecraft:mannequin,type=!minecraft:wind_charge,type=!minecraft:breeze_wind_charge,type=!minecraft:arrow,type=!minecraft:snowball,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:painting,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:area_effect_cloud,distance=..10,limit=1,sort=nearest] HurtTime set value 0s
execute if entity @s[tag=trap_mobs] run damage @e[type=!player,type=!minecraft:armor_stand,type=!mannequin,type=!minecraft:mannequin,type=!minecraft:wind_charge,type=!minecraft:breeze_wind_charge,type=!minecraft:arrow,type=!minecraft:snowball,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:painting,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:area_effect_cloud,distance=..10,limit=1,sort=nearest] 20 minecraft:arrow by @s from @a[tag=strategist,limit=1]

# PLAYERS
execute if entity @s[tag=trap_players] as @e[type=player,tag=!strategist,distance=..10,limit=1,sort=nearest] run effect give @s glowing 20 0 true
execute if entity @s[tag=trap_players] as @e[type=player,tag=!strategist,distance=..10,limit=1,sort=nearest] run effect give @s slowness 5 255 true
execute if entity @s[tag=trap_players] run data modify entity @e[type=player,tag=!strategist,distance=..10,limit=1,sort=nearest] HurtTime set value 0s
execute if entity @s[tag=trap_players] run damage @e[type=player,tag=!strategist,distance=..10,limit=1,sort=nearest] 20 minecraft:arrow by @s from @a[tag=strategist,limit=1]

# BOTH
execute if entity @s[tag=trap_both] as @e[type=!minecraft:armor_stand,type=!mannequin,type=!minecraft:mannequin,type=!minecraft:wind_charge,type=!minecraft:breeze_wind_charge,type=!minecraft:arrow,type=!minecraft:snowball,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:painting,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:area_effect_cloud,tag=!strategist,distance=..10,limit=1,sort=nearest] run effect give @s glowing 20 0 true
execute if entity @s[tag=trap_both] as @e[type=!minecraft:armor_stand,type=!mannequin,type=!minecraft:mannequin,type=!minecraft:wind_charge,type=!minecraft:breeze_wind_charge,type=!minecraft:arrow,type=!minecraft:snowball,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:painting,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:area_effect_cloud,tag=!strategist,distance=..10,limit=1,sort=nearest] run effect give @s slowness 5 255 true
execute if entity @s[tag=trap_both] run data modify entity @e[type=!minecraft:armor_stand,type=!mannequin,type=!minecraft:mannequin,type=!minecraft:wind_charge,type=!minecraft:breeze_wind_charge,type=!minecraft:arrow,type=!minecraft:snowball,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:painting,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:area_effect_cloud,tag=!strategist,distance=..10,limit=1,sort=nearest] HurtTime set value 0s
execute if entity @s[tag=trap_both] run damage @e[type=!minecraft:armor_stand,type=!mannequin,type=!minecraft:mannequin,type=!minecraft:wind_charge,type=!minecraft:breeze_wind_charge,type=!minecraft:arrow,type=!minecraft:snowball,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:painting,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:area_effect_cloud,tag=!strategist,distance=..10,limit=1,sort=nearest] 20 minecraft:arrow by @s from @a[tag=strategist,limit=1]


# 4. Decrease shot count
scoreboard players remove @s sentry_math 1

# 5. Cleanup when empty (Self-Destruct)
execute if score @s sentry_math matches ..0 run particle explosion ~ ~1 ~ 0 0 0 0 1 normal
execute if score @s sentry_math matches ..0 run kill @s