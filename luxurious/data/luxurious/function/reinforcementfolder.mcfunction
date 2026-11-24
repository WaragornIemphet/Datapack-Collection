function luxurious:smqtrmacetick
function luxurious:chaymacetick
function luxurious:chayfx

execute as @e[tag=chay2,tag=!chay_air_attack,tag=!chay_stunned,tag=!chay_landed] at @s run scoreboard players add world ChaySkill 1

execute as @e[tag=chay2] at @s if score world ChaySkill matches 200 run function luxurious:chaymace

execute as @e[tag=chay2] at @s if score world ChaySkill matches 300.. run scoreboard players set world ChaySkill 0

execute as @e[tag=smq2,tag=!smqtr_air_attack] at @s run scoreboard players add world SmqtrSkill 1

execute as @e[tag=smq2] at @s if score world SmqtrSkill matches 100 run function luxurious:smqtrmace
execute as @e[tag=smq2] at @s if score world SmqtrSkill matches 200 run function luxurious:lunge
execute as @e[tag=smq2] at @s if score world SmqtrSkill matches 200.. run scoreboard players set world SmqtrSkill 0

execute as @e[tag=maw2] at @s run scoreboard players add world MawcelSkill 1

execute as @e[tag=maw2] at @s if score world MawcelSkill matches 50 run function luxurious:mawceltp

execute as @e[tag=maw2] at @s if score world MawcelSkill matches 250 run function luxurious:mawcel

execute as @e[tag=maw2] at @s if score world MawcelSkill matches 360 run function luxurious:mawceltp

execute as @e[tag=maw2] at @s if score world MawcelSkill matches 400.. run scoreboard players set world MawcelSkill 0