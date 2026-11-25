tag @e[type=item,tag=vanadium_hel] remove vanadium_hel


execute at @e[type=item,nbt={Item:{id:"minecraft:chainmail_helmet"}}] as @e[type=item,distance=..2] run tag @s add vanadium_hel



execute at @e[type=item,nbt={Item:{id:"minecraft:chainmail_helmet"}}] \
    if items entity @e[tag=vanadium_hel,distance=..2] contents minecraft:iron_ingot[custom_data~{vadingot:1b}] \
    if items entity @e[tag=vanadium_hel,distance=..2] contents minecraft:iron_ingot \
    if items entity @e[tag=vanadium_hel,distance=..2] contents minecraft:iron_block[count=1] \
    if items entity @e[tag=vanadium_hel,distance=..2] contents minecraft:chainmail_helmet \
    run function akasword:craft_vanadiumhelmet

tag @e[type=item,tag=vanadium_shield] remove vanadium_shield


execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] as @e[type=item,distance=..2] run tag @s add vanadium_shield



execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] \
    if items entity @e[tag=vanadium_shield,distance=..2] contents minecraft:iron_ingot[custom_data~{vadingot:1b}] \
    if items entity @e[tag=vanadium_shield,distance=..2] contents minecraft:iron_ingot \
    if items entity @e[tag=vanadium_shield,distance=..2] contents minecraft:iron_block[count=1] \
    if items entity @e[tag=vanadium_shield,distance=..2] contents minecraft:shield[!custom_data] \
    run function akasword:craft_vanadiumshield



execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] as @e[type=item,distance=..2] run tag @s add diamond_shield



execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] \
    if items entity @e[tag=diamond_shield,distance=..2] contents minecraft:diamond_block[count=1] \
    if items entity @e[tag=diamond_shield,distance=..2] contents minecraft:shield[!custom_data] \
    run function akasword:craftdiamondshield
