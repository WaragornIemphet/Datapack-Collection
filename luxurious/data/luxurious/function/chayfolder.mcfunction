function luxurious:chayfx
function luxurious:smqtrmacetick
function luxurious:chaymacetick

execute as @e[tag=chay2,tag=!chayp2,tag=!chay_air_attack,tag=!chay_stunned,tag=!chay_landed] at @s run scoreboard players add world ChaySkill 1
execute as @e[tag=chay2,tag=!chayp2] at @s if score world ChaySkill matches 200 run function luxurious:chaymace
execute as @e[tag=chay2,tag=!chayp2] at @s if score world ChaySkill matches 300.. run scoreboard players set world ChaySkill 0

execute as @e[tag=chay2,tag=!chay_defeated,tag=chayp2,tag=!chay_air_attack,tag=!chay_stunned,tag=!chay_landed] at @s run scoreboard players add world ChayP2Skill 1
execute as @e[tag=chayls,tag=!chay_defeated,tag=!chay_air_attack,tag=!chay_stunned,tag=!chay_landed] at @s run scoreboard players add world ChayP2Skill 1
execute as @e[tag=chay2] at @s if score world ChayP2Skill matches 1 run function luxurious:chayspin
execute as @e[tag=chay2] at @s if score world ChayP2Skill matches 40 run function luxurious:chayaxe
execute as @e[tag=chay2] at @s if score world ChayP2Skill matches 80 run function luxurious:chayspin
execute as @e[tag=chay2] at @s if score world ChayP2Skill matches 100 run function luxurious:chaymace
execute as @e[tag=chay2] at @s if score world ChayP2Skill matches 120 run function luxurious:chayaxe
execute as @e[tag=chay2] at @s if score world ChayP2Skill matches 160 run function luxurious:chayspin
execute as @e[tag=chay2] at @s if score world ChayP2Skill matches 200 run function luxurious:chaymace
execute as @e[tag=chay2] at @s if score world ChayP2Skill matches 240 run function luxurious:chaymace
execute as @e[tag=chay2] at @s if score world ChayP2Skill matches 280 run function luxurious:chayspin
execute as @e[tag=chay2] at @s if score world ChayP2Skill matches 300 run function luxurious:chaymace
execute as @e[tag=chay2] at @s if score world ChayP2Skill matches 340 run function luxurious:chayaxe
execute as @e[tag=chay2,tag=chayp2] at @s if score world ChayP2Skill matches 400.. run scoreboard players set world ChayP2Skill 0

execute as @e[tag=smq2,tag=!smqtr_air_attack] at @s run scoreboard players add world SmqtrSkill 1
execute as @e[tag=smq2] at @s if score world SmqtrSkill matches 100 run function luxurious:smqtrmace
execute as @e[tag=smq2] at @s if score world SmqtrSkill matches 200 run function luxurious:lunge
execute as @e[tag=smq2] at @s if score world SmqtrSkill matches 200.. run scoreboard players set world SmqtrSkill 0

execute as @e[tag=maw2] at @s run scoreboard players add world MawcelSkill 1
execute as @e[tag=maw2] at @s if score world MawcelSkill matches 50 run function luxurious:mawceltp
execute as @e[tag=maw2] at @s if score world MawcelSkill matches 250 run function luxurious:mawcel
execute as @e[tag=maw2] at @s if score world MawcelSkill matches 360 run function luxurious:mawceltp
execute as @e[tag=maw2] at @s if score world MawcelSkill matches 400.. run scoreboard players set world MawcelSkill 0

execute unless entity @e[tag=smq2] at @e[tag=smq] run function luxurious:smqtrdeath
execute unless entity @e[tag=maw2] at @e[tag=maw] run function luxurious:mawceldeath

execute unless entity @e[tag=chay2] as @e[tag=chay,tag=!chay_phase2] at @s run function luxurious:chayphase2
execute unless entity @e[tag=chay2] as @e[tag=chay,tag=chay_phase2,tag=!chay_dead] run tag @s add chay_dead

execute if score world LuxBackups matches 0 if entity @e[tag=chay,tag=chay_phase2] at @e[tag=chay] run function luxurious:chayreinforcement
execute if score world LuxBackups matches 0 unless entity @e[tag=smq2] unless entity @e[tag=maw2] at @e[tag=chay] run function luxurious:chayreinforcement

execute if score world LuxBackups matches 1 run function luxurious:reinforcementfolder2
execute if score world ChayPatience matches 5 as @e[tag=chay,tag=chay_dead,tag=!chay_laststand] at @s run function luxurious:chaylaststand

execute unless entity @e[tag=chay2] as @e[tag=chay,tag=chay_laststand,tag=!chay_defeated] at @s run function luxurious:chaytext