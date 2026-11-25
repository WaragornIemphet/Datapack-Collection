kill @e[tag=vanadium_chest,distance=..3]
give @p iron_chestplate[trim={pattern:snout,material:iron},custom_name=[{"text":"Vanadium Chestplate","italic":false}],lore=[[{"text":"exceptional structural strength, shock resistance,","italic":false,"color":"gray"}],[{"text":"and corrosion resistance.","italic":false,"color":"gray"}]],attribute_modifiers=[{type:armor_toughness,amount:1,slot:chest,operation:add_value,id:"1781507526027"},{type:armor,amount:7,slot:chest,operation:add_value,id:"1781507526028"}],custom_data={vanadiumchest:1},max_damage=500,tooltip_display={hidden_components:[trim]}]

particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0.1 5
playsound minecraft:block.anvil.use block @a[distance=..50] ~ ~ ~
