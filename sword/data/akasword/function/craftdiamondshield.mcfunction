kill @e[tag=diamond_shield,distance=..3]
give @p shield[banner_patterns=[{pattern:gradient,color:white},{pattern:border,color:cyan}],base_color=light_blue,custom_name=[{"text":"Diamond Shield","italic":false,"color":"aqua"}],attribute_modifiers=[{type:armor,amount:6,slot:offhand,operation:add_value,id:"1788181934861"},{type:armor_toughness,amount:3,slot:offhand,operation:add_value,id:"1788181934862"},{type:knockback_resistance,amount:0.2,slot:offhand,operation:add_value,id:"1788181934863"}],max_damage=800,repairable={items:[diamond]},custom_data={diamondshield:1}]

particle minecraft:end_rod ~ ~ ~ 0.5 0.5 0.5 0.1 5
playsound minecraft:item.armor.equip_diamond block @a[distance=..50] ~ ~ ~ 150 1.2 1