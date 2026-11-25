tag @e[type=item,tag=clump_helmet] remove clump_helmet

execute at @e[type=item,nbt={Item:{id:"minecraft:poisonous_potato"}}] as @e[type=item,distance=..2] run tag @s add clump_helmet

execute at @e[type=item,nbt={Item:{id:"minecraft:poisonous_potato"}}] \
    if items entity @e[tag=clump_helmet,distance=..2] contents minecraft:poisonous_potato[custom_data~{clump:1},count=5] \
    if items entity @e[tag=clump_helmet,distance=..2] contents minecraft:iron_helmet \
    if items entity @e[tag=clump_helmet,distance=..2] contents minecraft:fermented_spider_eye[custom_data~{froot:1}] \
    run function country:craft_helmet


tag @e[type=item,tag=clump_chest] remove clump_chest

execute at @e[type=item,nbt={Item:{id:"minecraft:poisonous_potato"}}] as @e[type=item,distance=..2] run tag @s add clump_chest

execute at @e[type=item,nbt={Item:{id:"minecraft:poisonous_potato"}}] \
    if items entity @e[tag=clump_chest,distance=..2] contents minecraft:poisonous_potato[custom_data~{clump:1},count=8] \
    if items entity @e[tag=clump_chest,distance=..2] contents minecraft:iron_chestplate \
    if items entity @e[tag=clump_chest,distance=..2] contents minecraft:fermented_spider_eye[custom_data~{froot:1}] \
    run function country:craft_chest


tag @e[type=item,tag=clump_legs] remove clump_legs

execute at @e[type=item,nbt={Item:{id:"minecraft:poisonous_potato"}}] as @e[type=item,distance=..2] run tag @s add clump_legs

execute at @e[type=item,nbt={Item:{id:"minecraft:poisonous_potato"}}] \
    if items entity @e[tag=clump_legs,distance=..2] contents minecraft:poisonous_potato[custom_data~{clump:1},count=7] \
    if items entity @e[tag=clump_legs,distance=..2] contents minecraft:iron_leggings \
    if items entity @e[tag=clump_legs,distance=..2] contents minecraft:fermented_spider_eye[custom_data~{froot:1}] \
    run function country:craft_leggings


tag @e[type=item,tag=clump_boots] remove clump_boots

execute at @e[type=item,nbt={Item:{id:"minecraft:poisonous_potato"}}] as @e[type=item,distance=..2] run tag @s add clump_boots

execute at @e[type=item,nbt={Item:{id:"minecraft:poisonous_potato"}}] \
    if items entity @e[tag=clump_boots,distance=..2] contents minecraft:poisonous_potato[custom_data~{clump:1},count=4] \
    if items entity @e[tag=clump_boots,distance=..2] contents minecraft:iron_boots \
    if items entity @e[tag=clump_boots,distance=..2] contents minecraft:fermented_spider_eye[custom_data~{froot:1}] \
    run function country:craft_boots


tag @e[type=item,tag=clump_shield] remove clump_shield

execute at @e[type=item,nbt={Item:{id:"minecraft:poisonous_potato"}}] as @e[type=item,distance=..2] run tag @s add clump_shield

execute at @e[type=item,nbt={Item:{id:"minecraft:poisonous_potato"}}] \
    if items entity @e[tag=clump_shield,distance=..2] contents minecraft:poisonous_potato[custom_data~{clump:1}] \
    if items entity @e[tag=clump_shield,distance=..2] contents minecraft:shield \
    if items entity @e[tag=clump_shield,distance=..2] contents minecraft:fermented_spider_eye[custom_data~{froot:1}] \
    run function country:craft_shield


tag @e[type=item,tag=clump_stick] remove clump_stick

execute at @e[type=item,nbt={Item:{id:"minecraft:poisonous_potato"}}] as @e[type=item,distance=..2] run tag @s add clump_stick

execute at @e[type=item,nbt={Item:{id:"minecraft:poisonous_potato"}}] \
    if items entity @e[tag=clump_stick,distance=..2] contents minecraft:poisonous_potato[custom_data~{clump:1},count=3] \
    if items entity @e[tag=clump_stick,distance=..2] contents minecraft:stick \
    run function country:craft_dagger


tag @e[type=item,tag=clump_sword] remove clump_sword

execute at @e[type=item,nbt={Item:{id:"minecraft:poisonous_potato"}}] as @e[type=item,distance=..2] run tag @s add clump_sword

execute at @e[type=item,nbt={Item:{id:"minecraft:poisonous_potato"}}] \
    if items entity @e[tag=clump_sword,distance=..2] contents minecraft:poisonous_potato[custom_data~{clump:1},count=2] \
    if items entity @e[tag=clump_sword,distance=..2] contents minecraft:iron_sword \
    if items entity @e[tag=clump_sword,distance=..2] contents minecraft:fermented_spider_eye[custom_data~{froot:1}] \
    run function country:craft_sword
