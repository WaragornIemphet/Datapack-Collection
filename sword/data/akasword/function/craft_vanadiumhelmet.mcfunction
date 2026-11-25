kill @e[tag=vanadium_hel,distance=..3]
give @p iron_helmet[trim={pattern:spire,material:iron},custom_name=[{"text":"Vanadium Helmet","italic":false}],lore=[[{"text":"exceptional structural strength, shock resistance,","italic":false,"color":"gray"}],[{"text":"and corrosion resistance.","italic":false,"color":"gray"}]],attribute_modifiers=[{type:armor_toughness,amount:2,slot:head,operation:add_value,id:"1781507372831"},{type:armor,amount:2,slot:head,operation:add_value,id:"1781507372832"}],custom_data={vanadiumhel:1},max_damage=300,tooltip_display={hidden_components:[trim]}]

particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0.1 5
playsound minecraft:block.anvil.use block @a[distance=..50] ~ ~ ~
