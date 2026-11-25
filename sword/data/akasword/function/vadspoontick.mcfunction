tag @e[type=item,tag=vanadium_recipe1] remove vanadium_recipe1

execute at @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}}] as @e[type=item,distance=..2] run tag @s add vanadium_recipe1



execute at @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}}] \
    if items entity @e[tag=vanadium_recipe1,distance=..2] contents minecraft:iron_ingot[custom_data~{vadingot:1b}] \
    if items entity @e[tag=vanadium_recipe1,distance=..2] contents minecraft:iron_ingot \
    if items entity @e[tag=vanadium_recipe1,distance=..2] contents minecraft:iron_nugget[count=2] \
    run function akasword:craft_vanadiumspoon
