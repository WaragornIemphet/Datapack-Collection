execute if entity @s[tag=base_netherite_set,scores={NethCooldown=1..}] run tag @s add last_stand_interrupted

execute if entity @s[tag=last_stand_interrupted] run scoreboard players set @s NethCooldown 1200
execute if entity @s[tag=last_stand_interrupted] run title @s actionbar {"text":"Last Stand Interrupted !","color":"red","bold":true}

execute if entity @s[tag=base_netherite_set,scores={PlayerHealth=..6, NethCooldown=0}] run tag @s add trigger_last_stand

execute if entity @s[tag=trigger_last_stand] run effect give @s resistance 10 3 true
execute if entity @s[tag=trigger_last_stand] run effect give @s strength 10 4 true
execute if entity @s[tag=trigger_last_stand] run effect give @s regeneration 10 5 true
execute if entity @s[tag=trigger_last_stand] run effect give @s absorption 10 9 true
execute if entity @s[tag=trigger_last_stand] at @s run particle minecraft:flame ~ ~1 ~ 0 0 0 1 150 normal
execute if entity @s[tag=trigger_last_stand] at @s run playsound minecraft:item.totem.use player @a ~ ~ ~ 100 1.2

execute if entity @s[tag=trigger_last_stand] run scoreboard players set @s NethCooldown 1200

tag @s remove last_stand_interrupted
tag @s remove trigger_last_stand
