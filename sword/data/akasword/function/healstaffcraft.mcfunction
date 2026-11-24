# 1. Clear tags so we don't have leftovers from last tick
tag @e[type=item,tag=healcraft] remove healcraft

# 2. Find a "core" item (Diamond) and tag everything nearby
execute at @e[type=item,nbt={Item:{id:"minecraft:stick"}}] as @e[type=item,distance=..2] run tag @s add healcraft



execute at @e[type=item,nbt={Item:{id:"minecraft:stick"}}] \
    if items entity @e[tag=healcraft] contents minecraft:emerald[custom_data~{recover:1}] \
    if items entity @e[tag=healcraft] contents minecraft:emerald \
    if items entity @e[tag=healcraft] contents minecraft:warped_planks[count=2] \
    run function akasword:craft_healstaff
