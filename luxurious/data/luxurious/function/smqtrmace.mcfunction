tag @s add smqtr_air_attack
scoreboard players add world SmqtrSkill 1

effect give @s slowness 7 255 true
effect give @s weakness 7 255 true
effect give @s jump_boost 7 250 true

scoreboard players set @s SmqtrSkillTimer 140
effect give @s levitation 1 30 true

particle minecraft:gust_emitter_large ~ ~ ~ 0.5 0.5 0.5 0 1
playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ 2 1
