# 1. Revoke the advancement so it can be triggered again next time
advancement revoke @s only akasword:craft_cutter

# 2. Remove the proxy book (target it via the custom_data tag)
clear @s minecraft:knowledge_book[custom_data={cutter_id:1b}] 1

# 3. Give the actual sword
give @s stone_sword[custom_name=[{"text":"Cutter","italic":false}],lore=[[{"text":"Razor sharp, famous among students","italic":false,"color":"gray"}]],attribute_modifiers=[{type:attack_damage,amount:4,slot:mainhand,operation:add_value,id:"1776950531173"},{type:attack_speed,amount:4,slot:mainhand,operation:add_value,id:"1776950531174"}],item_model="syn:cutter"]
