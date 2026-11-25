execute as @e[tag=clump_legs,distance=..2] if items entity @s contents minecraft:poisonous_potato[custom_data~{clump:1}] run kill @s
execute as @e[tag=clump_legs,distance=..2] if items entity @s contents minecraft:iron_leggings run kill @s
execute as @e[tag=clump_legs,distance=..2] if items entity @s contents minecraft:fermented_spider_eye[custom_data~{froot:1}] run kill @s

give @p leather_leggings[trim={pattern:silence,material:lapis},dyed_color=3949738,custom_name=[{"text":"Ocreae PCRi","italic":false,"color":"blue"}],lore=[[{"text":"Fungus Leggings","italic":false,"color":"gray"}]],attribute_modifiers=[{type:armor,amount:5,slot:legs,operation:add_value,id:"1785228168258"},{type:armor_toughness,amount:1,slot:legs,operation:add_value,id:"1785228168259"},{type:max_health,amount:1,slot:legs,operation:add_value,id:"1785228168260"}],max_damage=300,custom_data={fungusleg:1}]
