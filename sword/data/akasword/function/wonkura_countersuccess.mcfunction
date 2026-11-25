tag @s remove akasword_counter_active
tag @s add akasword_counter_success

scoreboard players set @s akasword_counter_timer 1200

effect give @s minecraft:instant_health 1 255 true
effect give @s minecraft:strength 5 2 true
effect give @s minecraft:speed 5 1 true
effect give @s minecraft:saturation 5 4 true
effect give @s minecraft:regeneration 5 4 true

execute at @s run tag @e[type=!armor_stand,type=!mannequin,type=!item,type=!experience_orb,distance=..12,limit=1,sort=nearest,tag=!wongkura_singular] add akasword_counter_target
execute as @e[tag=akasword_counter_target,limit=1] run effect give @s slowness 2 255 true
execute as @e[tag=akasword_counter_target,limit=1] run effect give @s weakness 2 255 true
execute as @e[tag=akasword_counter_target,limit=1] run effect give @s mining_fatigue 2 255 true
scoreboard players set @s akasword_dmg_taken 0
scoreboard players set @s akasword_dmg_resisted 0
scoreboard players set @s akasword_dmg_absorbed 0

playsound minecraft:entity.player.attack.crit player @a[distance=..64] ~ ~ ~ 1 0.8
particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.1 25


