execute as @e[tag=clump_sword,distance=..2] if items entity @s contents minecraft:poisonous_potato[custom_data~{clump:1}] run kill @s
execute as @e[tag=clump_sword,distance=..2] if items entity @s contents minecraft:iron_sword run kill @s
execute as @e[tag=clump_sword,distance=..2] if items entity @s contents minecraft:fermented_spider_eye[custom_data~{froot:1}] run kill @s

give @p iron_sword[custom_name=[{"text":"Gladius PCRi","italic":false,"color":"blue"}],lore=[[{"text":"A sword made out of fungus","italic":false,"color":"dark_blue"}]],attribute_modifiers=[{type:attack_damage,amount:6,slot:mainhand,operation:add_value,id:"1785223875289"},{type:attack_speed,amount:-1.2,slot:mainhand,operation:add_value,id:"1785223875290"},{type:water_movement_efficiency,amount:1,slot:mainhand,operation:add_value,id:"1785223875291"}],max_damage=300,item_model="syn:ffword",custom_data={fsword:1},tooltip_display={hidden_components:[attribute_modifiers]}]
