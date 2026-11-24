# Kill the ingredients
kill @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..1,limit=1]
kill @s
# Summon the result
summon item ~ ~ ~ {Item:{id:"minecraft:knowledge_book",components:{"minecraft:custom_name":{"text":"Vanadium Spoon Proxy","italic":false},"minecraft:custom_data":{vanadium_spoon_proxy:1b}}}}
# Add a particle for effect
particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 0.05 10
