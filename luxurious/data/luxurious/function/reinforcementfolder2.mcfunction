tp @e[tag=powp] @e[tag=powp2,limit=1]
tp @e[tag=joor] @e[tag=joor2,limit=1]
tp @e[tag=sett] @e[tag=sett2,limit=1]

effect give @e[tag=powp2] invisibility 1 1 true
effect give @e[tag=joor2] invisibility 1 1 true
effect give @e[tag=sett2] invisibility 1 1 true

execute store result bossbar powpeter value run data get entity @e[tag=powp2,limit=1] Health
execute store result bossbar joorno value run data get entity @e[tag=joor2,limit=1] Health
execute store result bossbar setta value run data get entity @e[tag=sett2,limit=1] Health

execute at @e[tag=powp2] as @e[tag=powp2] store result score @s Powpeter run data get entity @s Health 1
execute at @e[tag=powp2,tag=!powp2p2] as @e[tag=powp2,tag=!powp2p2,scores={Powpeter=..200}] run function luxurious:powpretreat

execute at @e[tag=joor2] as @e[tag=joor2] store result score @s Joorno run data get entity @s Health 1
execute at @e[tag=joor2] as @e[tag=joor2,scores={Joorno=..125}] run function luxurious:joorretreat


execute at @e[tag=sett2] as @e[tag=sett2] store result score @s Settawattt run data get entity @s Health 1
execute at @e[tag=sett2] as @e[tag=sett2,scores={Settawattt=..125}] run function luxurious:settretreat

effect give @e[tag=joorshadow] slowness 1 0 true
execute at @e[tag=powpeterdown] run effect give @e[tag=powp] glowing 1 0 true


execute as @e[tag=sett2] at @s run scoreboard players add world SettawatttSkill 1
execute as @e[tag=sett2,tag=!settheal] at @s if score world SettawatttSkill matches 300.. run effect give @s regeneration 1 6 false
execute as @e[tag=sett2,nbt={HurtTime:10s}] at @s run scoreboard players set world SettawatttSkill 0

execute as @e[tag=sett] at @s unless items entity @s weapon.mainhand * if items entity @a[distance=..5,sort=nearest,limit=1] weapon.offhand * run scoreboard players add @s SettStealTimer 1

execute as @e[tag=sett] at @s unless items entity @a[distance=..5,sort=nearest,limit=1] weapon.offhand * run scoreboard players set @s SettStealTimer 0

execute as @e[tag=sett,scores={SettStealTimer=100..}] at @s as @a[distance=..5,sort=nearest,limit=1] run function luxurious:settsteal

execute as @e[tag=sett2,tag=sett_has_stolen_item,nbt={HurtTime:10s}] run scoreboard players add @e[tag=sett] SettHitCount 1

execute as @e[tag=sett,scores={SettHitCount=5..}] at @s run function luxurious:settdrop


execute as @e[tag=joor2] at @s run scoreboard players add world JoornoSkill 1

execute as @e[tag=joor2] at @s if score world JoornoSkill matches 300 run function luxurious:joornoheal

execute as @e[tag=joor2] at @s if score world JoornoSkill matches 600.. run function luxurious:joorno

execute as @e[tag=powp2,tag=!powp2_air_attack,tag=!powp2_stunned,tag=!powp2_landed,tag=!powpeterdown] at @s run scoreboard players add world PowpeterSkill 1

execute as @e[tag=powp2] at @s if score world PowpeterSkill matches 100 run function luxurious:powpetermace

execute as @e[tag=powp2] at @s if score world PowpeterSkill matches 300 run function luxurious:powpeterpearl
execute as @e[tag=powp2] at @s if score world PowpeterSkill matches 500 run function luxurious:powpetermace
execute as @e[tag=powp2,tag=!powp2p2] at @s if score world PowpeterSkill matches 520.. run scoreboard players set world PowpeterSkill 0

execute as @e[type=armor_stand,tag=peterpearl] run scoreboard players add @s PeterPearlAge 1

function luxurious:powpetermacetick

execute as @e[type=armor_stand,tag=peterpearl,scores={PeterPearlAge=1}] at @s facing entity @a[distance=1.5..,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=armor_stand,tag=peterpearl,scores={PeterPearlAge=1}] at @s run particle portal ~ ~ ~ 0.5 0.5 0.5 0.1 100 force
execute as @e[type=armor_stand,tag=peterpearl,scores={PeterPearlAge=1}] at @s run playsound entity.player.teleport voice @a[distance=..50] ~ ~ ~ 160 0.5 1


execute as @e[type=armor_stand,tag=peterpearl,scores={PeterPearlAge=60}] at @s facing entity @a[distance=0.1..,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[type=armor_stand,tag=peterpearl,scores={PeterPearlAge=1}] at @s run particle portal ~ ~ ~ 0.5 0.5 0.5 0.1 100 force
execute as @e[type=armor_stand,tag=peterpearl,scores={PeterPearlAge=1}] at @s run playsound entity.player.teleport voice @a[distance=..50] ~ ~ ~ 160 0.5 1

execute at @e[type=armor_stand,tag=peterpearl] run particle portal ~ ~1 ~ 0.1 0.1 0.1 0.1 5

execute as @e[type=armor_stand,tag=peterpearl] at @s run tp @s ^ ^ ^1
execute as @e[type=armor_stand,tag=peterpearl] at @s unless block ~ ~ ~ #minecraft:replaceable run tp @e[tag=powp2,limit=1] ^ ^1 ^
 execute as @e[type=armor_stand,tag=peterpearl] at @s unless block ~ ~ ~ #minecraft:replaceable run particle portal ~ ~ ~ 0.5 0.5 0.5 0.1 100 force
execute as @e[type=armor_stand,tag=peterpearl] at @s unless block ~ ~ ~ #minecraft:replaceable run playsound entity.shulker.teleport voice @a[distance=..50] ~ ~ ~ 160 1 1

execute as @e[type=armor_stand,tag=peterpearl] at @s unless block ~ ~ ~ #minecraft:replaceable run kill @s
execute as @e[type=armor_stand,tag=peterpearl,scores={PeterPearlAge=300}] at @s run kill @s
