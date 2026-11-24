tag @e[tag=akaclone2] add akaclonedes
effect give @s strength infinite 1 true
execute at @e[tag=akaclone2,limit=1] run execute as @e[limit=100] run summon vex ~ ~ ~ {CustomName:[{text:Suffering,color:dark_red}],Health:25,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["sac"],attributes:[{id:follow_range,base:100f},{id:max_health,base:25f},{id:attack_damage,base:2f}]}
execute at @e[tag=akaclone2,limit=1] run execute as @e[limit=100] run summon vex ~ ~ ~ {CustomName:[{text:Suffering,color:dark_red}],Health:25,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["sac"],attributes:[{id:follow_range,base:100f},{id:max_health,base:25f},{id:attack_damage,base:2f}]}
execute at @e[tag=akaclone2,limit=1] run execute as @e[limit=100] run summon vex ~ ~ ~ {CustomName:[{text:Suffering,color:dark_red}],Health:25,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["sac"],attributes:[{id:follow_range,base:100f},{id:max_health,base:25f},{id:attack_damage,base:2f}]}
execute at @e[tag=akaclone2,limit=1] run execute as @e[limit=100] run summon vex ~ ~ ~ {CustomName:[{text:Suffering,color:dark_red}],Health:25,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["sac"],attributes:[{id:follow_range,base:100f},{id:max_health,base:25f},{id:attack_damage,base:2f}]}
execute at @e[tag=akaclone2,limit=1] run execute as @e[limit=100] run summon vex ~ ~ ~ {CustomName:[{text:Suffering,color:dark_red}],Health:25,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["sac"],attributes:[{id:follow_range,base:100f},{id:max_health,base:25f},{id:attack_damage,base:2f}]}

effect give @e[tag=sac] glowing 5 1 true
effect give @e[tag=akaclone] glowing 5 1 true
execute as @e[tag=akaclone2,nbt={Invulnerable:0b}] run data modify entity @s Invulnerable set value 1b
schedule function akaclone:sac 5s
execute at @e[tag=akaclone] run particle minecraft:witch ~ ~1 ~ 0.5 1 0.5 0.1 200 force
execute at @e[tag=akaclone] run playsound minecraft:entity.vex.charge voice @s ~ ~ ~ 200 0.5 1
execute at @e[tag=akaclone] as @a[distance=..128] run title @s actionbar [{"text":"The end will come","color":"dark_red"}]

