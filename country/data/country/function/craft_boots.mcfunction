execute as @e[tag=clump_boots,distance=..2] if items entity @s contents minecraft:poisonous_potato[custom_data~{clump:1}] run kill @s
execute as @e[tag=clump_boots,distance=..2] if items entity @s contents minecraft:iron_boots run kill @s
execute as @e[tag=clump_boots,distance=..2] if items entity @s contents minecraft:fermented_spider_eye[custom_data~{froot:1}] run kill @s

give @p leather_boots[trim={pattern:silence,material:lapis},dyed_color=3949738,custom_name=[{"text":"Caligae PCRi","italic":false,"color":"blue"}],lore=[[{"text":"Fungus Boots","italic":false,"color":"gray"}]],attribute_modifiers=[{type:armor,amount:2,slot:feet,operation:add_value,id:"1785228491156"},{type:armor_toughness,amount:1,slot:feet,operation:add_value,id:"1785228491157"},{type:max_health,amount:1,slot:feet,operation:add_value,id:"1785228491158"}],max_damage=200,custom_data={fungusboot:1}]
