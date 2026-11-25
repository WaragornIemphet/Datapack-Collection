
execute as @a[tag=chainsaw_active] at @s run function akasword:chainsawanimate

execute as @a if items entity @s weapon.mainhand *[custom_data~{chainsaw:1}] at @s run function akasword:chainsawdisplay
execute as @a if score @s chain_cooldown matches 1.. if score @s chainsaw_timer matches 0 run scoreboard players remove @s chain_cooldown 1


tag @e[type=item,tag=chainsawrecipe] remove chainsawrecipe

execute at @e[type=item,nbt={Item:{id:"minecraft:iron_chain"}}] as @e[type=item,distance=..2] run tag @s add chainsawrecipe



execute at @e[type=item,nbt={Item:{id:"minecraft:iron_chain"}}] \
    if items entity @e[tag=chainsawrecipe,distance=..2] contents minecraft:iron_ingot[custom_data~{vadingot:1b}] \
    if items entity @e[tag=chainsawrecipe,distance=..2] contents minecraft:iron_ingot[count=5] \
    if items entity @e[tag=chainsawrecipe,distance=..2] contents minecraft:iron_chain[count=10] \
    if items entity @e[tag=chainsawrecipe,distance=..2] contents minecraft:coal_block \
    if items entity @e[tag=chainsawrecipe,distance=..2] contents minecraft:copper_nugget[custom_data~{wire:1}] \
    if items entity @e[tag=chainsawrecipe,distance=..2] contents minecraft:copper_nugget[count=4] \
    if items entity @e[tag=chainsawrecipe,distance=..2] contents minecraft:copper_ingot[custom_data~{battery:1}] \
    if items entity @e[tag=chainsawrecipe,distance=..2] contents minecraft:copper_ingot \
    run function akasword:craft_chainsaw
