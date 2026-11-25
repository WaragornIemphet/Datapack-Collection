execute at @e[tag=v_radar,nbt={Item:{id:"minecraft:iron_block"}},limit=1] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:knowledge_book",count:1,components:{"minecraft:custom_name":'{"text":"Tactical Radio","italic":false,"color":"gold"}',"minecraft:custom_data":{radar_proxy:1}}}}

execute at @e[tag=v_radar,nbt={Item:{id:"minecraft:iron_block"}},limit=1] run kill @e[tag=v_radar,distance=..2.1]

particle electric_spark ~ ~ ~ 0 0 0 0 1
execute at @s run playsound minecraft:block.bell.resonate voice @s ~ ~ ~ 150 1.5
execute at @s run playsound minecraft:block.bell.resonate voice @s ~ ~ ~ 150 1.5
execute at @s run playsound minecraft:block.bell.resonate voice @s ~ ~ ~ 150 1.5
