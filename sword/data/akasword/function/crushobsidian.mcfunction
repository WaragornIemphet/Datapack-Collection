playsound minecraft:block.anvil.land block @a ~ ~ ~ 1 0.8
particle minecraft:reverse_portal ~ ~-1 ~ 0.3 0.3 0.3 0.05 30
particle block{block_state:{Name:crying_obsidian}} ~ ~ ~ 1 1 1 0.1 50

setblock ~ ~-1 ~ minecraft:air

summon item ~ ~-1 ~ {Item:{id:"minecraft:flint",count:2,components:{"minecraft:custom_name":{"text":"Crying Obsidian Shard","italic":false,"color":"light_purple"},"minecraft:lore":[{"text":"Sharp and Mystical","italic":false,"color":"gray"}],"minecraft:item_model":"syn:cryingobsidianshard","minecraft:custom_data":{crying:1}}}}


