function luxurious:powpeterfx

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
execute as @e[tag=powp2] at @s if score world PowpeterSkill matches 600 run function luxurious:powpetermace
execute as @e[tag=powp2] at @s if score world PowpeterSkill matches 620 run function luxurious:powpeterpearl
execute as @e[tag=powp2] at @s if score world PowpeterSkill matches 640 run function luxurious:startcharge
execute as @e[tag=powp2] at @s if score world PowpeterSkill matches 680 run function luxurious:powpetermace
execute as @e[tag=powp2] at @s if score world PowpeterSkill matches 700 run function luxurious:powpetermace
execute as @e[tag=powp2] at @s if score world PowpeterSkill matches 740 run function luxurious:powpetermace
execute as @e[tag=powp2] at @s if score world PowpeterSkill matches 800 run function luxurious:powpeterpearl
execute as @e[tag=powp2] at @s if score world PowpeterSkill matches 820 run function luxurious:startcharge
execute as @e[tag=powp2] at @s if score world PowpeterSkill matches 900 run function luxurious:powpetermace
execute as @e[tag=powp2] at @s if score world PowpeterSkill matches 960 run function luxurious:powpetermace
execute as @e[tag=powp2] at @s if score world PowpeterSkill matches 1000 run function luxurious:powpetermace
execute as @e[tag=powp2] at @s if score world PowpeterSkill matches 1100 run function luxurious:powpeterpearl
execute as @e[tag=powp2] at @s if score world PowpeterSkill matches 1160 run function luxurious:startcharge
execute as @e[tag=powp2p2] at @s if score world PowpeterSkill matches 1200.. run scoreboard players set world PowpeterSkill 200

execute as @e[type=armor_stand,tag=peterpearl] run scoreboard players add @s PeterPearlAge 1

function luxurious:powpetermacetick

execute as @e[tag=powp2p2,tag=PowpeterCharging] at @s run function luxurious:chargehandler

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

execute as @e[tag=joor] if entity @s[tag=joor] unless entity @e[tag=joor2,limit=1] run function luxurious:joornodeath
execute as @e[tag=sett] if entity @s[tag=sett] unless entity @e[tag=sett2,limit=1] run function luxurious:settdeath

execute as @e[tag=powp,tag=!powpdeath] if entity @s[tag=powp,tag=!powpdeath] unless entity @e[tag=powp2,limit=1] run function luxurious:powpetertext1

execute if score world LuxBackups matches 0 unless entity @e[tag=joor2] unless entity @e[tag=sett2] run function luxurious:powpeterreinforcement


execute if score world LuxBackups matches 1 unless entity @e[tag=chay2] at @e[tag=chay] run function luxurious:chayretreat

execute if score world LuxBackups matches 1 unless entity @e[tag=smq2] at @e[tag=smq] run function luxurious:smatrretreat

execute if score world LuxBackups matches 1 unless entity @e[tag=maw2] at @e[tag=maw] run function luxurious:mawcelretreat


execute if score world LuxBackups matches 1 run function luxurious:reinforcementfolder
execute if score world PowpeterPatience matches 5 as @e[tag=powp2p2] at @s run function luxurious:powpeterinterphase
