execute as @e[tag=clump_shield,distance=..2] if items entity @s contents minecraft:poisonous_potato[custom_data~{clump:1}] run kill @s
execute as @e[tag=clump_shield,distance=..2] if items entity @s contents minecraft:shield run kill @s
execute as @e[tag=clump_shield,distance=..2] if items entity @s contents minecraft:fermented_spider_eye[custom_data~{froot:1}] run kill @s

give @p shield[banner_patterns=[{pattern:bricks,color:blue},{pattern:curly_border,color:cyan},{pattern:flower,color:white}],base_color=light_blue,custom_name=[{"text":"Scutum PCRi","italic":false,"color":"blue"}],lore=[[{"text":"Fungus Shield","italic":false,"color":"dark_blue"}]],attribute_modifiers=[{type:armor,amount:2,id:"1785225843983",operation:add_value}],max_damage=350,custom_data={scutum:1}]