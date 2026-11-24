tag @s add chay_air_attack
scoreboard players add world ChaySkill 1
execute if entity @s[tag=chayp2] run scoreboard players add world ChayP2Skill 1
execute if entity @s[tag=chayls] run scoreboard players add world ChayP2Skill 1

effect give @s slowness 7 255 true
effect give @s weakness 7 255 true
effect give @s jump_boost 7 250 true

scoreboard players set @s ChaySkillTimer 140
effect give @s levitation 1 30 true

particle minecraft:gust_emitter_large ~ ~ ~ 0.5 0.5 0.5 0 1
playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ 2 1