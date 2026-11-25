scoreboard players remove @s akafirelife 1

execute if score @s akafirelife matches ..0 run kill @s
execute if score @s akafirelife matches ..0 run return 0

tp @s ^ ^ ^1

execute as @e[distance=..1.5,type=!armor_stand,type=!item,type=!experience_orb,type=!item_frame,type=!glow_item_frame,type=!marker,type=!interaction,tag=!false,tag=!falsesuf,type=!mannequin,type=!arrow] at @s run tag @s add akaflametarget
execute as @e[distance=..1.5,type=!armor_stand,type=!item,type=!experience_orb,type=!item_frame,type=!glow_item_frame,type=!marker,type=!interaction,tag=!false,tag=!falsesuf,type=!mannequin] at @s run damage @s 25 magic by @a[tag=false,limit=1]


particle dust{color:[0.52,0.0,0.0],scale:2} ~ ~ ~ 0.0 0.0 0.0 0.0001 1
particle dust{color:[1.0,1.0,1.0],scale:2} ~ ~ ~ 0.1 0.1 0.1 0.0001 1
