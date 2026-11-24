# 1. Consume Item (1 per tick)
clear @s lapis_lazuli[custom_name=[{"text":"Lapis Board","italic":false,"color":"blue"}],lore=[[{"text":"Arcane board used to extract experience orbs.","italic":false,"color":"gray"}]],item_model="syn:lapisboard"] 1

# 2. Add Mana
experience add @s -100 points
give @s amethyst_shard[custom_name=[{"text":"Mana Crystal","italic":false,"color":"aqua"}],lore=[[{"text":"Used by arcanists to store surplus energy  or used to power magic weaponry. Increases experience points upon consumption.","italic":false,"color":"blue"}]],item_model="syn:mana",custom_data={mana:1}] 1

# 3. Visuals
# Volume lowered to 0.2 to prevent audio clipping
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.2 1
particle minecraft:electric_spark ~ ~1 ~ 0.3 0.3 0.3 0.1 2
title @s actionbar {"text":"+1 Mana Crystal","color":"aqua"}

# 4. (Deleted) No Cooldown Reset
