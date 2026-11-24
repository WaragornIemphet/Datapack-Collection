scoreboard players add world BankSkill 1
execute at @e[tag=bank] run summon armor_stand ~ ~ ~ {Pose:{RightArm:[301f,319f,15f]},ShowArms:1b,NoBasePlate:1b,DisabledSlots:4144959,CustomName:[{text:Bank_2013,color:green}],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["bankstand"],equipment:{mainhand:{id:netherite_sword,count:1},head:{id:netherite_helmet,components:{trim:{pattern:bolt,material:gold}},count:1},chest:{id:netherite_chestplate,components:{trim:{pattern:coast,material:gold}},count:1},legs:{id:netherite_leggings,components:{trim:{pattern:tide,material:gold}},count:1},feet:{id:netherite_boots,components:{trim:{pattern:flow,material:gold}},count:1}},drop_chances:{mainhand:0f,head:0f,chest:0f,legs:0f,feet:0f}}
execute at @e[tag=bank] run summon armor_stand ~ ~ ~ {ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["bankstand1"],equipment:{head:{id:player_head,components:{profile:{name:Bank_2013}}}}}
execute as @e[tag=bank2,limit=1] at @s run tag @s add bankanim

execute at @e[tag=bankstand] run playsound block.anvil.place voice @a[distance=..100] ~ ~ ~ 200 1.5 1
execute at @e[tag=bankstand] run particle end_rod ^ ^ ^ 0.3 1 0.3 1 50 force
execute at @e[tag=bankstand] run effect give @a[distance=..100] blindness 1 1 true

execute at @e[tag=bankstand] run tag @p add bank_cutscene

schedule function bankboss:bankp2_1 0.5s