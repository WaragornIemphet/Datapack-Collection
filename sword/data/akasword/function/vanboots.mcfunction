tag @e[type=item,tag=vanadium_boot] remove vanadium_boot


execute at @e[type=item,nbt={Item:{id:"minecraft:chainmail_boots"}}] as @e[type=item,distance=..2] run tag @s add vanadium_boot



execute at @e[type=item,nbt={Item:{id:"minecraft:chainmail_boots"}}] \
    if items entity @e[tag=vanadium_boot,distance=..2] contents minecraft:iron_ingot[custom_data~{vadingot:1b}] \
    if items entity @e[tag=vanadium_boot,distance=..2] contents minecraft:iron_ingot \
    if items entity @e[tag=vanadium_boot,distance=..2] contents minecraft:iron_block[count=1] \
    if items entity @e[tag=vanadium_boot,distance=..2] contents minecraft:chainmail_boots \
    run function akasword:craft_vanadiumboots
