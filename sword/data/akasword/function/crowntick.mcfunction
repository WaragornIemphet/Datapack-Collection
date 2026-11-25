tag @e[type=item,tag=vanadium_recipe] remove vanadium_recipe

execute at @e[type=item,nbt={Item:{id:"minecraft:diamond"}}] as @e[type=item,distance=..2] run tag @s add vanadium_recipe



execute at @e[type=item,nbt={Item:{id:"minecraft:diamond"}}] \
    if items entity @e[tag=vanadium_recipe,distance=..2] contents minecraft:iron_ingot[custom_data~{vadingot:1b}] \
    if items entity @e[tag=vanadium_recipe,distance=..2] contents minecraft:iron_ingot[count=4] \
    if items entity @e[tag=vanadium_recipe,distance=..2] contents minecraft:gold_ingot[count=2] \
    run function akasword:craft_vanadiumcrown
