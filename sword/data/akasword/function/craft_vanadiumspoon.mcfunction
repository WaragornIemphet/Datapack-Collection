# Kill the ingredients by their specific IDs/Data
kill @e[tag=vanadium_recipe1,limit=1,nbt={Item:{id:"minecraft:iron_ingot"}}]
kill @e[tag=vanadium_recipe1,limit=2,nbt={Item:{id:"minecraft:iron_nugget"}}]


# Summon the Spoon
give @p iron_shovel[custom_name=[{"text":"Vanadium Spoon","italic":false}],lore=[[{"text":"You can dig and knock someone out","italic":false,"color":"blue"}],[{"text":"at the same time.","italic":false,"color":"blue"}]],attribute_modifiers=[{type:attack_damage,amount:7,slot:mainhand,id:"1777105805690",operation:add_value}],max_damage=500,item_model="syn:spoon",custom_data={vanad:1}]

# Sound/Visuals
particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0.1 5
playsound minecraft:block.anvil.use block @a[distance=..50] ~ ~ ~
