# 1. Revoke the advancement so it can be triggered again next time
advancement revoke @s only akasword:craft_plunger

# 2. Remove the proxy book (target it via the custom_data tag)
clear @s minecraft:knowledge_book[custom_data={plunger_id:1b}] 1

# 3. Give the actual sword
give @s wooden_spear[custom_name=[{"text":"Plunger","italic":false}],lore=[[{"text":"A handheld plumbing tool designed to clear drain blockages using pressure, featuring a rubber suction cup on a shaft","italic":false,"color":"gray"},{"text":".","italic":false,"color":"gray"},{"text":" ","italic":false,"color":"gray"}]],attribute_modifiers=[{type:attack_damage,amount:3.5,slot:mainhand,operation:add_value,id:"1776953169165"},{type:attack_knockback,amount:3.2,slot:mainhand,operation:add_value,id:"1776953169166"}],item_model="syn:plunger"]
