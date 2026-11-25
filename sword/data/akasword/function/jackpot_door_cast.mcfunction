execute if score @s akasword_door_cd matches 1.. run return 0

scoreboard players set @s akasword_door_cd 320

execute at @s run summon armor_stand ^ ^ ^2 {Tags:["door_root","new_root"],Marker:1b,Invisible:1b,NoGravity:1b}

execute as @e[tag=new_root,limit=1] at @s run tp @s ^ ^ ^ facing entity @p feet



execute at @e[tag=new_root,limit=1] run summon armor_stand ^2 ^ ^ {Tags:["door_anim","door_left","new_door"],Marker:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,equipment:{head:{id:iron_door,components:{item_model:"syn:shutterdoor2"}}}}

execute at @e[tag=new_root,limit=1] run summon armor_stand ^-2 ^ ^ {Tags:["door_anim","door_right","new_door"],Marker:1b,Invisible:1b,NoGravity:1b,ShowArms:1b,equipment:{head:{id:iron_door,components:{item_model:"syn:shutterdoor1"}}}}

execute as @e[tag=new_door] run data modify entity @s Rotation set from entity @e[tag=new_root,limit=1] Rotation

playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 0.5
playsound minecraft:entity.illusioner.prepare_mirror player @a ~ ~ ~ 1 1.5

tag @e[tag=new_root] remove new_root
tag @e[tag=new_door] remove new_door

schedule function akasword:jackpot_door_slam 0.5s
