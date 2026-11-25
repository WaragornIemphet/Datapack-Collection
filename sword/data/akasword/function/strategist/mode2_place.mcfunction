execute store result score #sentry_count sentryplace_cd if entity @e[type=armor_stand,tag=sentry]
execute if score #sentry_count sentryplace_cd matches 20.. run tellraw @s {"text":"Sentry limit reached (20/20)!","color":"red"}
execute if score #sentry_count sentryplace_cd matches 20.. run return 0

scoreboard players set @s sentryplace_cd 300

summon armor_stand ~ ~ ~ {Pose:{Body:[0f,344f,0f],LeftArm:[0f,360f,0f],RightArm:[270f,0f,0f]},ShowArms:1b,NoBasePlate:1b,DisabledSlots:2113343,CustomName:[{"text":"Sentry V2","color":"red"}],Health:100,Invulnerable:1b,NoGravity:1b,Tags:[sentry,sentry_init],attributes:[{id:max_health,base:100f}],equipment:{mainhand:{id:bow,components:{item_model:"syn:luger"},count:1},head:{id:player_head,components:{profile:{name:Mis_polarny_XD}}},chest:{id:leather_chestplate,components:{trim:{pattern:raiser,material:gold},dyed_color:11546150},count:1},legs:{id:leather_leggings,components:{dyed_color:11546150},count:1},feet:{id:leather_boots,components:{dyed_color:11546150},count:1}}}

scoreboard players set @e[tag=sentry_init] sentrylife 12000
tag @e[tag=sentry_init] remove sentry_init

playsound minecraft:block.anvil.place voice @a[distance=..16] ~ ~ ~ 100 1.2
