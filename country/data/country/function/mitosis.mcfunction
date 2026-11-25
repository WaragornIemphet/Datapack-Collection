execute store result score #husk_count global_id if entity @e[tag=countrysummon2]

execute if score #husk_count global_id matches 512.. run return 0

scoreboard players add #new_spawn global_id 1

summon husk ~ ~ ~ {DrownedConversionTime:-1,CustomName:[{"text":"CCOUNTRYY","color":"blue"}],Health:120,PersistenceRequired:1b,Silent:1b,Tags:["countrysummon2","setup_clone"],equipment:{body:{id:poisonous_potato,components:{custom_name:[{text:"Conglomerata PCRi",italic:false,color:blue}],lore:[[{text:"It have a worldwide distribution, and grow in a wide range of ",italic:false,color:gray}],[{text:"habitats, including extreme environments such as deserts or ",italic:false,color:gray}],[{text:"areas with high salt concentrations or ionizing radiation, as ",italic:false,color:gray}],[{text:"well as in deep sea sediments. Some can survive the intense UV ",italic:false,color:gray}],[{text:"and cosmic radiation encountered during space travel.",italic:false,color:gray}]],food:{nutrition:1,saturation:0,can_always_eat:1b},consumable:{consume_seconds:2,animation:eat,on_consume_effects:[{type:apply_effects,probability:1,effects:[{id:infested,duration:400,amplifier:1},{id:strength,duration:400,amplifier:2},{id:resistance,duration:400,amplifier:1},{id:conduit_power,duration:400,amplifier:2},{id:dolphins_grace,duration:400,amplifier:1},{id:speed,duration:400,amplifier:1},{id:hunger,duration:400,amplifier:5}]}]},item_model:"syn:clump",custom_data:{clump:1}},count:1}},drop_chances:{body:0.80f},attributes:[{id:max_health,base:120f},{id:scale,base:1.22f},{id:armor,base:6f}]}

summon mannequin ~ ~1 ~ {profile:CCOUNTRYY,hide_description:1b,CustomName:[{"text":"CCOUNTRYY","color":"blue"}],CustomNameVisible:1b,Health:100,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:[countrysummon,setup_clone],Team:noCollision,attributes:[{id:max_health,base:100f}]}

particle dust{color:[0.0,0.03,1.0],scale:2} ~ ~1 ~ 0.5 0.5 0.5 0 20 normal
particle dust{color:[0.0,1.0,0.88],scale:2} ~ ~1 ~ 0.5 0.5 0.5 0 20 normal
particle dust{color:[0.61,0.31,0.75],scale:2} ~ ~1 ~ 0.5 0.5 0.5 0 20 normal

playsound entity.wither.break_block voice @a[distance=..30] ~ ~ ~ 180 0.9 1

tp @e[tag=setup_clone,type=husk] ~ ~ ~ ~ ~

execute as @e[tag=setup_clone] run scoreboard players operation @s pair_id = #new_spawn global_id

tag @e[tag=setup_clone] remove setup_clone
