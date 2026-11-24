# 1. Revoke the advancement so it can be triggered again next time
advancement revoke @s only akasword:craft_brokeluger

# 2. Remove the proxy book (target it via the custom_data tag)
clear @s minecraft:knowledge_book[custom_data={brokeluger_id:1b}] 1

# 3. Give the actual sword
give @s bow[custom_name=[{"text":"Broken P08 Luger","italic":false,"color":"gold"}],lore=[[{"text":"Surprisingly, there's still 1 bullet left","italic":false,"color":"dark_gray"}],[{"text":"in the chamber. The firearm itself looks","italic":false,"color":"dark_gray"}],[{"text":"suspicious, like it's owned by someone you","italic":false,"color":"dark_gray"}],[{"text":"didn't want to mess with.","italic":false,"color":"dark_gray"}],"",["",{"text":"Press ","italic":false,"color":"dark_red"},{"text":"[ F ]","bold":true,"italic":false,"color":"dark_red"},{"text":" to interact","italic":false,"color":"dark_red"}]],enchantments={vanishing_curse:1},item_model="syn:luger",custom_data={gordlaygun:1b}]