kill @e[tag=vanadium_recipe,limit=4,nbt={Item:{id:"minecraft:iron_ingot"}}]
kill @e[tag=vanadium_recipe,limit=2,nbt={Item:{id:"minecraft:gold_ingot"}}]
kill @e[tag=vanadium_recipe,limit=1,nbt={Item:{id:"minecraft:diamond"}}]

give @p golden_nautilus_armor[custom_name=[{"text":"Accursed Crown","italic":false,"color":"dark_aqua"}],lore=[[{"text":"I should put this ","italic":false,"color":"gray"},{"text":"r","italic":false,"color":"gray"},{"text":"e","italic":false,"color":"gray"},{"text":"g","italic":false,"color":"gray"},{"text":"u","italic":false,"color":"gray"},{"text":"l","italic":false,"color":"gray"},{"text":"a","italic":false,"color":"gray"},{"text":"r","italic":false,"color":"gray"},{"text":" crown somewhere else","italic":false,"color":"gray"}],[{"text":"to where it belongs","italic":false,"color":"yellow"}]],enchantments={vanishing_curse:1},equippable={slot:head,damage_on_hurt:0b},unbreakable={},item_model="syn:crown"]

particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0.1 5
playsound minecraft:block.anvil.use block @a[distance=..50] ~ ~ ~
