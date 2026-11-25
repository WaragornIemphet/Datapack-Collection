tag @e[tag=akaclone2] add p2akaclone
tag @e[tag=akaclone] add p2akaclone2
execute at @e[tag=p2akaclone] run effect give @a[distance=..128] blindness 6 1 true

execute at @e[tag=p2akaclone] as @a[distance=..128] run title @s actionbar [{"text":"Do you enjoy going through hell?","color":"dark_red"}]
execute at @e[tag=akaclone] as @a[distance=..128] run playsound minecraft:block.bell.resonate voice @s ~ ~ ~ 200 1.5 1
summon vex ~ ~1 ~ {CustomName:[{text:"Wongkura Clone",color:aqua}],CustomNameVisible:1b,Health:250,HasVisualFire:1b,PersistenceRequired:1b,Silent:1b,Tags:["kra2"],equipment:{mainhand:{id:mace,components:{enchantments:{fire_aspect:2,breach:4},item_model:"syn:redspoon"},count:1},head:{id:player_head,components:{profile:{name:Kongkura}},count:1}},drop_chances:{mainhand:0f,head:0f},attributes:[{id:scale,base:2.5f},{id:attack_damage,base:8f},{id:follow_range,base:80f},{id:armor,base:12f},{id:max_health,base:250f}],custom_name:[{"text":"Wong","italic":false}]}
summon vex ~ ~2 ~ {CustomName:[{text:"GordLay888 Clone",color:yellow}],CustomNameVisible:1b,Health:250,HasVisualFire:1b,PersistenceRequired:1b,Silent:1b,Tags:["tan2"],equipment:{mainhand:{id:diamond_sword,components:{enchantments:{fire_aspect:2,knockback:1,sharpness:5}},count:1},head:{id:player_head,components:{profile:{name:GordLay888}},count:1}},drop_chances:{mainhand:0f,head:0f},attributes:[{id:scale,base:2.5f},{id:attack_damage,base:8f},{id:armor,base:12f},{id:follow_range,base:80f},{id:max_health,base:250f}],custom_name:[{"text":"Wong","italic":false}]}

summon armor_stand ~ ~ ~ {Invisible:1b,NoBasePlate:1b,CustomName:[{text:"GordLay888 Clone",color:yellow}],CustomNameVisible:1b,Health:300,HasVisualFire:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["tan"],equipment:{head:{id:player_head,components:{profile:{name:GordLay888}},count:1}},drop_chances:{head:0f},attributes:[{id:max_health,base:300f}]}
summon armor_stand ~ ~ ~ {Invisible:1b,NoBasePlate:1b,CustomName:[{text:"Wongkura Clone",color:aqua}],CustomNameVisible:1b,Health:300,HasVisualFire:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["kra"],equipment:{head:{id:player_head,components:{profile:{name:Kongkura}},count:1}},drop_chances:{head:0f},attributes:[{id:max_health,base:300f}]}

scoreboard players set world WongkuraLives 1
scoreboard players set world TanLives 1
