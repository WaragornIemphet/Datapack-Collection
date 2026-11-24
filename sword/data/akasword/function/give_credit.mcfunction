# 1. Revoke the advancement so it can be triggered again next time
advancement revoke @s only akasword:craft_credit

# 2. Remove the proxy book (target it via the custom_data tag)
clear @s minecraft:knowledge_book[custom_data={credit_id:1b}] 1

# 3. Give the actual sword
give @s guster_banner_pattern[custom_name=[{"text":"Credit Card","italic":false,"color":"yellow"}],lore=[[{"text":"Someone might be needing this.","italic":false,"color":"white"}],"",["",{"text":"Press ","italic":false,"color":"dark_red"},{"text":"[ F ]","bold":true,"italic":false,"color":"dark_red"},{"text":" to interact","italic":false,"color":"dark_red"}]],enchantments={infinity:1},unbreakable={},item_model="syn:credit"]