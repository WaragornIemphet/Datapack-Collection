# Kill the ingredients by their specific IDs/Data
kill @e[tag=healcraft,limit=4]


# Summon the Spoon
give @p carrot_on_a_stick[custom_name=[{"text":"Healing Staff","italic":false,"color":"green"}],lore=[[{"text":"Powered by the","italic":false,"color":"gray"},{"text":" recovering crystal.","italic":false,"color":"green"}],[{"text":"Concentrated into an area of effect healing,","italic":false,"color":"gray"}],[{"text":"it's one of the most crucial support item in the","italic":false,"color":"gray"}],[{"text":"Arcane World.","italic":false,"color":"gray"}]],consumable={animation:none},food={nutrition:1,saturation:1},unbreakable={},item_model="syn:healstaffs",minecraft:custom_data={syn_staff:true}]

# Sound/Visuals
particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 0.1 5
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 2
