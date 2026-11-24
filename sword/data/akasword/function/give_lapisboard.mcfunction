# 1. Revoke the advancement so it can be triggered again next time
advancement revoke @s only akasword:craft_lapisboard

# 2. Remove the proxy book (target it via the custom_data tag)
clear @s minecraft:knowledge_book[custom_data={lapisboard_id:1b}] 1

# 3. Give the actual sword
give @s lapis_lazuli[custom_name=[{"text":"Lapis Board","italic":false,"color":"blue"}],lore=[[{"text":"Arcane board used to extract experience orbs.","italic":false,"color":"gray"}]],item_model="syn:lapisboard"]