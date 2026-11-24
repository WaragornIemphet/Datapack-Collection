tag @e[type=item,tag=vanadium_leg] remove vanadium_leg


execute at @e[type=item,nbt={Item:{id:"minecraft:chainmail_leggings"}}] as @e[type=item,distance=..2] run tag @s add vanadium_leg



execute at @e[type=item,nbt={Item:{id:"minecraft:chainmail_leggings"}}] \
    if items entity @e[tag=vanadium_leg,distance=..2] contents minecraft:iron_ingot[custom_data~{vadingot:1b}] \
    if items entity @e[tag=vanadium_leg,distance=..2] contents minecraft:iron_ingot \
    if items entity @e[tag=vanadium_leg,distance=..2] contents minecraft:iron_block[count=1] \
    if items entity @e[tag=vanadium_leg,distance=..2] contents minecraft:chainmail_leggings \
    run function akasword:craft_vanadiumleg
