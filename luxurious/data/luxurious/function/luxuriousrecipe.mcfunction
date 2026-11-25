execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] as @e[type=item,distance=..2] run tag @s add luxrecipe

execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] \
    if items entity @e[tag=luxrecipe,distance=..2] contents minecraft:iron_ingot[custom_data~{vadingot:1b}] \
    if items entity @e[tag=luxrecipe,distance=..2] contents minecraft:iron_ingot[count=1] \
    if items entity @e[tag=luxrecipe,distance=..2] contents minecraft:bone[count=4] \
    if items entity @e[tag=luxrecipe,distance=..2] contents minecraft:redstone[count=1] \
    run function luxurious:craft_calcium

execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] as @e[type=item,distance=..2] run tag @s add luxrecipe1

execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] \
    if items entity @e[tag=luxrecipe1,distance=..2] contents minecraft:emerald[custom_data~{luxuriousemerald:1},count=1] \
    if items entity @e[tag=luxrecipe1,distance=..2] contents minecraft:iron_helmet[custom_data~{vanadiumhel:1}] \
    run function luxurious:craft_luxhelm

execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] as @e[type=item,distance=..2] run tag @s add luxrecipe2

execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] \
    if items entity @e[tag=luxrecipe2,distance=..2] contents minecraft:emerald[custom_data~{luxuriousemerald:1},count=1] \
    if items entity @e[tag=luxrecipe2,distance=..2] contents minecraft:iron_chestplate[custom_data~{vanadiumchest:1}] \
    run function luxurious:craft_luxchest

execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] as @e[type=item,distance=..2] run tag @s add luxrecipe3

execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] \
    if items entity @e[tag=luxrecipe3,distance=..2] contents minecraft:emerald[custom_data~{luxuriousemerald:1},count=1] \
    if items entity @e[tag=luxrecipe3,distance=..2] contents minecraft:iron_leggings[custom_data~{vanadiumleg:1}] \
    run function luxurious:craft_luxleg

execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] as @e[type=item,distance=..2] run tag @s add luxrecipe4

execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] \
    if items entity @e[tag=luxrecipe4,distance=..2] contents minecraft:emerald[custom_data~{luxuriousemerald:1},count=1] \
    if items entity @e[tag=luxrecipe4,distance=..2] contents minecraft:iron_boots[custom_data~{vanadiumboot:1}] \
    run function luxurious:craft_luxboot

execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] as @e[type=item,distance=..2] run tag @s add luxrecipe5

execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] \
    if items entity @e[tag=luxrecipe5,distance=..2] contents minecraft:emerald[custom_data~{luxuriousemerald:1},count=1] \
    if items entity @e[tag=luxrecipe5,distance=..2] contents minecraft:iron_sword[custom_data~{vanadiumsword:1}] \
    run function luxurious:craft_luxsword

execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] as @e[type=item,distance=..2] run tag @s add luxrecipe6

execute at @e[type=item,nbt={Item:{id:"minecraft:emerald_block"}}] \
    if items entity @e[tag=luxrecipe6,distance=..2] contents minecraft:emerald[custom_data~{luxuriousemerald:1},count=4] \
    if items entity @e[tag=luxrecipe6,distance=..2] contents minecraft:breeze_rod[count=4] \
    run function luxurious:craft_luxhammer
