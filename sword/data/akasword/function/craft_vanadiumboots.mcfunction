kill @e[tag=vanadium_boot,distance=..3]
give @p iron_boots[trim={pattern:spire,material:iron},custom_name=[{"text":"Vanadium Boots","italic":false}],lore=[[{"text":"exceptional structural strength, shock resistance,","italic":false,"color":"gray"}],[{"text":"and corrosion resistance.","italic":false,"color":"gray"}]],attribute_modifiers=[{type:armor_toughness,amount:1,slot:feet,operation:add_value,id:"1781507652406"},{type:armor,amount:2,slot:feet,operation:add_value,id:"1781507652407"}],custom_data={vanadiumboot:1},max_damage=200,tooltip_display={hidden_components:[trim]}]

particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0.1 5
playsound minecraft:block.anvil.use block @a[distance=..50] ~ ~ ~