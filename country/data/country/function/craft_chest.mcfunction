execute as @e[tag=clump_chest,distance=..2] if items entity @s contents minecraft:poisonous_potato[custom_data~{clump:1}] run kill @s
execute as @e[tag=clump_chest,distance=..2] if items entity @s contents minecraft:iron_chestplate run kill @s
execute as @e[tag=clump_chest,distance=..2] if items entity @s contents minecraft:fermented_spider_eye[custom_data~{froot:1}] run kill @s

give @p leather_chestplate[trim={pattern:silence,material:lapis},dyed_color=3949738,custom_name=[{"text":"Lorica PCRi","italic":false,"color":"blue"}],lore=[[{"text":"Fungus Chestplate","italic":false,"color":"gray"}]],attribute_modifiers=[{type:armor,amount:6,slot:chest,operation:add_value,id:"1785228055082"},{type:armor_toughness,amount:1,slot:chest,operation:add_value,id:"1785228055083"},{type:max_health,amount:1,slot:chest,operation:add_value,id:"1785228055084"}],max_damage=310,custom_data={funguschest:1}]
