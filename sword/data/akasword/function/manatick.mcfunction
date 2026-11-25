execute as @a[predicate=akasword:is_sneaking] at @s if items entity @s weapon.mainhand *[custom_data~{mana:1}] run function akasword:consume_mana

execute as @a store result score @s total_xp run experience query @s levels

execute as @a[predicate=akasword:is_sneaking,scores={total_xp=7..}] at @s if items entity @s weapon.mainhand lapis_lazuli[custom_name=[{"text":"Lapis Board","italic":false,"color":"blue"}],lore=[[{"text":"Arcane board used to extract experience orbs.","italic":false,"color":"gray"}]],item_model="syn:lapisboard"] run function akasword:store_mana

execute as @a at @s if items entity @s weapon.mainhand knowledge_book[custom_data={vanadium_spoon_proxy:1b}] run function akasword:craft_spoon1
