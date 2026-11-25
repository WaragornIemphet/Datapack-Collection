scoreboard players set @s pistol_stage 0

playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.8
particle minecraft:explosion_emitter ^ ^1.5 ^3 0.5 0.5 0.5 0.1 1 force

summon armor_stand ^ ^ ^1.5 {Tags:["akasword.fbullet","new_fbullet"],Small:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b}

execute anchored eyes run tp @e[tag=new_fbullet,limit=1] ^ ^-0.5 ^0.5 ~ ~

tag @e[tag=new_fbullet] remove new_fbullet

scoreboard players set @e[tag=akasword.fbullet,distance=..2] fbullet_life 50
scoreboard players set @e[tag=new_fbullet] fbullet_age 0
