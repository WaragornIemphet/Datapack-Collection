execute as @a if items entity @s weapon.mainhand minecraft:player_head[minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHBzOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzM4NzA4NzYxYzVhMDIxYmUwMTQ1MDk3ZDYwYzBhZWQ1MjMzNjE4NmNjN2VkNGY0MDUxNjFmYjhhNWVjNTBiOTUifX19"}]},minecraft:custom_name="False Savior"] run item replace entity @s weapon.mainhand with red_dye[custom_name=[{"text":"Chaos Infusion","italic":false,"color":"dark_red"}],lore=[[{"text":"A swirling, violently glitching energy contained in a reinforced ","italic":false,"color":"red"}],[{"text":"device. It is equal parts dark sorcery and corrupted player ","italic":false,"color":"red"}],[{"text":"data mixed with raw, unfiltered hostility.","italic":false,"color":"red"}],"",["",{"text":"Press ","italic":false,"color":"dark_red"},{"text":"[ F ]","bold":true,"italic":false,"color":"dark_red"},{"text":" to interact","italic":false,"color":"dark_red"}]],enchantment_glint_override=true,enchantments={vanishing_curse:1},item_model="syn:chaos_infusion",custom_data={chaosinfused:1},tooltip_display={hidden_components:[enchantments]}]
execute as @a if items entity @s weapon.offhand *[custom_data~{chaosinfused:1}] run function akaclone:akaclonesummon

tag @e[type=item,tag=v_ingredient3] remove v_ingredient3
execute at @e[type=item,nbt={Item:{id:"minecraft:redstone_block"}}] as @e[type=item,distance=..2] run tag @s add v_ingredient3

execute at @e[type=item,nbt={Item:{id:"minecraft:redstone_block"}}] \
    if items entity @e[tag=v_ingredient3,distance=..2] contents minecraft:iron_ingot[custom_data~{vadingot:1b},count=2] \
    if items entity @e[tag=v_ingredient3,distance=..2] contents minecraft:nether_brick[custom_data~{nazium:1},count=4] \
    if items entity @e[tag=v_ingredient3,distance=..2] contents minecraft:copper_nugget[custom_data~{wire:1},count=4] \
    if items entity @e[tag=v_ingredient3,distance=..2] contents minecraft:ghast_tear[custom_data~{wongash:1},count=1] \
    if items entity @e[tag=v_ingredient3,distance=..2] contents minecraft:nether_star[custom_data~{argent:1},count=1] \
    if items entity @e[tag=v_ingredient3,distance=..2] contents minecraft:prismarine_shard[custom_data~{circuit:1},count=1] \
    if items entity @e[tag=v_ingredient3,distance=..2] contents minecraft:paper[custom_data~{catastrophe:1},count=1] \
    run function akaclone:akaclonecraft
