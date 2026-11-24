kill @e[tag=chainsawrecipe,limit=20]

give @p netherite_axe[custom_name=[{"text":"Chainsaw","italic":false,"color":"gold"}],lore=[[{"text":"Forged by those who had too much free time","italic":false,"color":"gray"}],[{"text":"and too little respect for nature.","italic":false,"color":"gray"}],[{"text":"It rips through oak, spruce, and the occasional zombie","italic":false,"color":"gray"}],[{"text":"with terrifying efficiency.","italic":false,"color":"gray"}]],enchantment_glint_override=false,enchantments={efficiency:20},attribute_modifiers=[{type:attack_speed,amount:100,slot:mainhand,operation:add_value,id:"1781615870666"},{type:attack_damage,amount:7,slot:mainhand,operation:add_value,id:"1781615870667"},{type:entity_interaction_range,amount:2,slot:mainhand,operation:add_value,id:"1781615870668"}],max_damage=1651,item_model="syn:chainsaw",custom_data={chainsaw:1},tooltip_display={hidden_components:[enchantments]}]

playsound item.shears.snip voice @a[distance=..50] ^ ^ ^ 120 0.1 1
playsound block.piston.contract voice @a[distance=..50] ^ ^ ^ 120 1.5 1
particle large_smoke ^ ^1 ^ 0 0 0 0 5 force