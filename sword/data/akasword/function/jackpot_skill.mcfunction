

execute if score @s akasword_jackpot_cd matches 1.. run return 0
scoreboard players add @a[tag=luckybastard] jackpot_skill_uses 1
execute at @s anchored eyes run summon armor_stand ^ ^0.5 ^ {Invisible:1b,NoBasePlate:1b,Small:1b,Health:998,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["jackpot_ball","new_ball"],equipment:{head:{id:"minecraft:player_head",components:{"minecraft:custom_name":{text:"Gold Block â€” 25058",color:gold,underlined:true,bold:true,italic:false},"minecraft:lore":[{text:"Head ID: 19969",color:gray,italic:false},{text:"mcheads.ru",color:blue,italic:false}],profile:{properties:[{name:textures,value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzFhNzg1OTE2ZDJkMTdjYTBlYTJhZDIzZDgwMjQ3YzdjNTAyMTQ0MzkwM2JiYWI3YjI0Yjc5MzRiNmEzNjFhYiJ9fX0="}]}}}},attributes:[{id:max_health,base:998f}]}

execute at @s anchored eyes run tp @e[tag=new_ball,limit=1,sort=nearest] ~ ~1 ~ ~ ~

execute at @s as @e[tag=new_ball,limit=1] run tp @s ^ ^0.75 ^0.5

scoreboard players set @e[tag=new_ball] akasword_ball_life 0
tag @e[tag=new_ball] remove new_ball

execute at @s run playsound minecraft:block.iron_door.open voice @a[distance=..60] ~ ~ ~ 100 2
execute at @s run playsound minecraft:block.iron_door.open voice @a[distance=..60] ~ ~ ~ 100 2
execute at @s run playsound minecraft:block.amethyst_block.chime voice @a[distance=..60] ~ ~ ~ 200 2
execute at @s run particle minecraft:electric_spark ^ ^1.75 ^1 0.2 0.2 0.2 0.1 10 force

scoreboard players set @s akasword_jackpot_cd 170
