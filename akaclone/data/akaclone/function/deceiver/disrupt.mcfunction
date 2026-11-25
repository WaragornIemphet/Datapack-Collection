effect give @e[distance=..10,tag=!false] blindness 3 0 true
effect give @e[distance=..10,tag=!false] slowness 3 4 true
execute at @s as @e[distance=..10,tag=!false,tag=!falsesuf,type=!item,type=!interaction,type=!experience_orb,type=!item_frame,type=!glow_item_frame,type=!painting,type=!armor_stand,type=!mannequin] run damage @s 10 magic by @a[tag=false,limit=1]

effect give @s invisibility 4 5 true
effect give @s regeneration 4 2 true
effect give @s saturation 4 2 true
effect give @s speed 4 4 true
effect give @s slow_falling 4 4 true

execute at @s run particle minecraft:witch ~ ~1 ~ 0.5 1 0.5 0.1 200 force
execute at @s run playsound minecraft:entity.illusioner.cast_spell voice @a[distance=..20] ~ ~ ~ 300 1 1
execute if score @s disruptuse matches 2 run execute at @e[tag=false,limit=1] run execute as @e[limit=100] run summon vex ^ ^1 ^-1 {CustomName:[{text:Suffering,color:dark_red}],Health:20,Silent:1b,Tags:["falsesuf"],Team:noCollision,attributes:[{id:attack_damage,base:2f},{id:entity_interaction_range,base:0f},{id:follow_range,base:0f},{id:max_health,base:20f}]}
execute if score @s disruptuse matches 2 run execute at @e[tag=false,limit=1] run execute as @e[limit=100] run summon vex ^ ^1 ^-1 {CustomName:[{text:Suffering,color:dark_red}],Health:20,Silent:1b,Tags:["falsesuf"],Team:noCollision,attributes:[{id:attack_damage,base:2f},{id:entity_interaction_range,base:0f},{id:follow_range,base:0f},{id:max_health,base:20f}]}
execute if score @s disruptuse matches 2 run execute at @e[tag=false,limit=1] run execute as @e[limit=100] run summon vex ^ ^1 ^-1 {CustomName:[{text:Suffering,color:dark_red}],Health:20,Silent:1b,Tags:["falsesuf"],Team:noCollision,attributes:[{id:attack_damage,base:2f},{id:entity_interaction_range,base:0f},{id:follow_range,base:0f},{id:max_health,base:20f}]}
execute if score @s disruptuse matches 2 run execute at @e[tag=false,limit=1] run execute as @e[limit=100] run summon vex ^ ^1 ^-1 {CustomName:[{text:Suffering,color:dark_red}],Health:20,Silent:1b,Tags:["falsesuf"],Team:noCollision,attributes:[{id:attack_damage,base:2f},{id:entity_interaction_range,base:0f},{id:follow_range,base:0f},{id:max_health,base:20f}]}

effect give @e[tag=falsesuf] glowing infinite 1 true
effect give @e[tag=falsesuf] wither infinite 5 true


tp @s ^ ^1 ^15

scoreboard players add @s disruptuse 1

scoreboard players set @s disruptcd 20
scoreboard players set @s disruptwin 200

execute if score @s disruptuse matches 3.. run scoreboard players set @s disruptcd 400
execute if score @s disruptuse matches 3.. run scoreboard players set @s disruptwin 0
execute if score @s disruptuse matches 3.. run scoreboard players set @s disruptuse 0
