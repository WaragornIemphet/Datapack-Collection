scoreboard players add world TancloneSkill 1
execute as @e[tag=tanimp] at @s run tag @s remove tanimp
execute as @e[tag=tan2,limit=1] at @s run summon armor_stand ^ ^1 ^1 {Pose:{RightArm:[351f,0f,327f]},CustomName:["Slash"],ShowArms:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,Health:100,Invulnerable:1b,NoGravity:1b,Silent:1b,Tags:["slashfly"],attributes:[{id:max_health,base:100f}]}
execute as @e[tag=slashfly,limit=1,sort=nearest] at @s run tp @s ^ ^ ^ facing entity @p

