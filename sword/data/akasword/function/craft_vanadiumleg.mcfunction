kill @e[tag=vanadium_leg,distance=..3]
give @p iron_leggings[trim={pattern:spire,material:iron},custom_name=[{"text":"Vanadium Leggings","italic":false}],lore=[[{"text":"exceptional structural strength, shock resistance,","italic":false,"color":"gray"}],[{"text":"and corrosion resistance.","italic":false,"color":"gray"}]],attribute_modifiers=[{type:armor_toughness,amount:2,slot:legs,operation:add_value,id:"1781507596773"},{type:armor,amount:6,slot:legs,operation:add_value,id:"1781507596774"}],custom_data={vanadiumleg:1},max_damage=400,tooltip_display={hidden_components:[trim]}]

particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0.1 5
playsound minecraft:block.anvil.use block @a[distance=..50] ~ ~ ~
