kill @e[tag=countrysummon2]
kill @e[tag=countrysummon]
kill @e[tag=country2]

execute at @e[tag=country] run give @a[distance=..50] poisonous_potato[custom_name=[{"text":"Conglomerata PCRi","italic":false,"color":"blue"}],lore=[[{"text":"It have a worldwide distribution, and grow in a wide range of ","italic":false,"color":"gray"}],[{"text":"habitats, including extreme environments such as deserts or ","italic":false,"color":"gray"}],[{"text":"areas with high salt concentrations or ionizing radiation, as ","italic":false,"color":"gray"}],[{"text":"well as in deep sea sediments. Some can survive the intense UV ","italic":false,"color":"gray"}],[{"text":"and cosmic radiation encountered during space travel.","italic":false,"color":"gray"}]],food={nutrition:1,saturation:0,can_always_eat:1b},consumable={consume_seconds:2,animation:eat,on_consume_effects:[{type:apply_effects,probability:1,effects:[{id:infested,duration:400,amplifier:1},{id:strength,duration:400,amplifier:2},{id:resistance,duration:400,amplifier:1},{id:conduit_power,duration:400,amplifier:2},{id:dolphins_grace,duration:400,amplifier:1},{id:speed,duration:400,amplifier:1},{id:hunger,duration:400,amplifier:5}]}]},item_model="syn:clump",custom_data={clump:1}] 4
execute at @e[tag=country] run give @p red_mushroom
execute at @e[tag=country] run give @p brown_mushroom
execute at @e[tag=country] run give @a[distance=..50] fermented_spider_eye[custom_name=[{"text":"Radix PCRi","italic":false,"color":"blue"}],lore=[[{"text":"Become one with us","italic":false,"color":"dark_blue"}]],item_model="syn:froot",custom_data={froot:1}] 1

execute at @e[tag=country] run kill @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..100]

tellraw @a [{"text":"CCOUNTRYY","color":"blue"},{"text":" ","color":"yellow"},{"text":"has been defeated","color":"gray"}]
kill @e[tag=country]
stopsound @a voice music_disc.country
schedule clear country:countryloop
scoreboard players set #new_spawn global_id 0
scoreboard players set world CountrySKill 0
scoreboard players set world CountryLives 0
bossbar set pcr players