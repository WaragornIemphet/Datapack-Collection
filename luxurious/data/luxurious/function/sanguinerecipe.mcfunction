execute at @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] as @e[type=item,distance=..2] run tag @s add sanrecipe1

execute at @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] \
    if items entity @e[tag=sanrecipe1,distance=..2] contents minecraft:emerald[custom_data~{sanguineemerald:1},count=1] \
    if items entity @e[tag=sanrecipe1,distance=..2] contents minecraft:leather_helmet[custom_data~{fungushelmet:1}] \
    run function luxurious:craft_sanhel

execute at @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] as @e[type=item,distance=..2] run tag @s add sanrecipe2

execute at @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] \
    if items entity @e[tag=sanrecipe2,distance=..2] contents minecraft:emerald[custom_data~{sanguineemerald:1},count=1] \
    if items entity @e[tag=sanrecipe2,distance=..2] contents minecraft:leather_chestplate[custom_data~{funguschest:1}] \
    run function luxurious:craft_sanchest

execute at @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] as @e[type=item,distance=..2] run tag @s add sanrecipe3

execute at @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] \
    if items entity @e[tag=sanrecipe3,distance=..2] contents minecraft:emerald[custom_data~{sanguineemerald:1},count=1] \
    if items entity @e[tag=sanrecipe3,distance=..2] contents minecraft:leather_leggings[custom_data~{fungusleg:1}] \
    run function luxurious:craft_sanleg

execute at @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] as @e[type=item,distance=..2] run tag @s add sanrecipe4

execute at @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] \
    if items entity @e[tag=sanrecipe4,distance=..2] contents minecraft:emerald[custom_data~{sanguineemerald:1},count=1] \
    if items entity @e[tag=sanrecipe4,distance=..2] contents minecraft:leather_boots[custom_data~{fungusboot:1}] \
    run function luxurious:craft_sanboot

execute at @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] as @e[type=item,distance=..2] run tag @s add sanrecipe5

execute at @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] \
    if items entity @e[tag=sanrecipe5,distance=..2] contents minecraft:emerald[custom_data~{sanguineemerald:1},count=1] \
    if items entity @e[tag=sanrecipe5,distance=..2] contents minecraft:iron_sword[custom_data~{fsword:1}] \
    run function luxurious:craft_sansword

execute at @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] as @e[type=item,distance=..2] run tag @s add sanrecipe6

execute at @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] \
    if items entity @e[tag=sanrecipe6,distance=..2] contents minecraft:emerald[custom_data~{sanguineemerald:1},count=4] \
    if items entity @e[tag=sanrecipe6,distance=..2] contents minecraft:bone[count=16] \
    if items entity @e[tag=sanrecipe6,distance=..2] contents minecraft:soul_sand[count=4] \
    run function luxurious:craft_sanscythe