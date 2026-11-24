# 1. Revoke the advancement so it can be triggered again next time
advancement revoke @s only akasword:craft_beano

# 2. Remove the proxy book (target it via the custom_data tag)
clear @s minecraft:knowledge_book[custom_data={beano_id:1b}] 1

# 3. Give the actual sword
give @s snowball[custom_name=[{"text":"BEANO T-13","italic":false,"color":"white","shadow_color":-13948117}],lore=[["",{"text":"An experimental","italic":false,"color":"gray"},{"text":" impact hand grenade","italic":false,"color":"yellow"},{"text":",","italic":false,"color":"gray"}],"",[{"text":"It works flawlessly until you accidentally clip the edge of the","italic":false,"color":"gray"}],[{"text":"block in front of your face.","italic":false,"color":"gray"}]],max_stack_size=1,use_cooldown={seconds:2},item_model="syn:beano",custom_data={beano:1}]
