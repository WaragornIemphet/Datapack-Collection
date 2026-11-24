
tag @e[type=item,tag=vanadium_sword] remove vanadium_sword


execute as @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}}] \
    unless data entity @s Item.components."minecraft:custom_data" \
    unless data entity @s Item.components."minecraft:item_model" \
    unless data entity @s Item.components."minecraft:custom_model_data" \
    run execute at @s as @e[type=item,distance=..2] run tag @s add vanadium_sword


execute at @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}}] \
    if items entity @e[tag=vanadium_sword,distance=..2] contents minecraft:iron_ingot[custom_data~{vadingot:1b}] \
    if items entity @e[tag=vanadium_sword,distance=..2] contents minecraft:iron_ingot[count=1] \
    if items entity @e[tag=vanadium_sword,distance=..2] contents minecraft:iron_block[count=1] \
    if items entity @e[tag=vanadium_sword,distance=..2] contents minecraft:iron_sword[count=1] \
    run function akasword:craft_vanadiumsword
