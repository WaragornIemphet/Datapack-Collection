scoreboard players add world BankSkill 1
execute as @e[tag=bankimp] at @s run tag @s remove bankimp
execute as @e[tag=bank2,limit=1] at @s run summon armor_stand ^ ^1 ^1 {Pose:{RightArm:[351f,0f,327f]},CustomName:["Knife"],ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,Health:100,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["bankfly"],equipment:{mainhand:{id:iron_sword,count:1}},drop_chances:{mainhand:0f},attributes:[{id:max_health,base:100f}]}
execute as @e[tag=bankfly,limit=1,sort=nearest] at @s run tp @s ^ ^ ^ facing entity @p

