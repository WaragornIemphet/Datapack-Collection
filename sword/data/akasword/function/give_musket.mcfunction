# 1. Revoke the advancement so it can be triggered again next time
advancement revoke @s only akasword:craft_musket

# 2. Remove the proxy book (target it via the custom_data tag)
clear @s minecraft:knowledge_book[custom_data={musket_id:1b}] 1

# 3. Give the actual sword
give @s carrot_on_a_stick[custom_name=[{"text":"Flintlock Musket","italic":false,"color":"gray"}],lore=[[{"text":"A muzzle-loading firearm utilizing a flint-striking mechanism","italic":false,"color":"dark_gray"}],[{"text":"Ammo: Gunpowder, Paper, and iron nugget in-order","italic":false,"color":"yellow"}],[{"text":"Press [Sneak] to reload","italic":false,"color":"dark_gray"}]],enchantment_glint_override=false,enchantments={knockback:2},attribute_modifiers=[{type:attack_damage,amount:8,slot:mainhand,operation:add_value,id:"1777702792939"},{type:entity_interaction_range,amount:3.5,slot:mainhand,operation:add_value,id:"1777702792940"},{type:attack_speed,amount:-2.75,slot:mainhand,operation:add_value,id:"1777702792941"}],unbreakable={},item_model="syn:musket",custom_data={musket:1},tooltip_display={hidden_components:[enchantments,unbreakable]}]
scoreboard players set @s musket_timer 10