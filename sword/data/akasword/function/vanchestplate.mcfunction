tag @e[type=item,tag=vanadium_chest] remove vanadium_chest


execute at @e[type=item,nbt={Item:{id:"minecraft:chainmail_chestplate"}}] as @e[type=item,distance=..2] run tag @s add vanadium_chest



execute at @e[type=item,nbt={Item:{id:"minecraft:chainmail_chestplate"}}] \
    if items entity @e[tag=vanadium_chest,distance=..2] contents minecraft:iron_ingot[custom_data~{vadingot:1b}] \
    if items entity @e[tag=vanadium_chest,distance=..2] contents minecraft:iron_ingot \
    if items entity @e[tag=vanadium_chest,distance=..2] contents minecraft:iron_block[count=1] \
    if items entity @e[tag=vanadium_chest,distance=..2] contents minecraft:chainmail_chestplate \
    run function akasword:craft_vanadiumchest
