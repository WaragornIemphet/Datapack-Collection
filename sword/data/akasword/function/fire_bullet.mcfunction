scoreboard players set @s musket_stage 0

playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.8
particle minecraft:explosion_emitter ^ ^1.5 ^3 0.5 0.5 0.5 0.1 1 force

summon armor_stand ^ ^ ^1.5 {Tags:["akasword.bullet","new_bullet"],Small:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b}

execute anchored eyes run tp @e[tag=new_bullet,limit=1] ^ ^-0.5 ^0.5 ~ ~

tag @e[tag=new_bullet] remove new_bullet

scoreboard players set @e[tag=akasword.bullet,distance=..2] bullet_life 80
scoreboard players set @e[tag=new_bullet] bullet_age 0
