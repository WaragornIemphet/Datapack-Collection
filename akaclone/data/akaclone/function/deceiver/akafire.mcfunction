scoreboard players set @s firecd 100
execute if score world akafirecount matches 4.. run scoreboard players set world akafirecount 0
execute at @s anchored eyes if score world akafirecount matches 0 run summon armor_stand ^ ^-0.55 ^1 {Tags:["akafire_init"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}

execute at @s anchored eyes if score world akafirecount matches 1 run summon armor_stand ^1 ^-0.55 ^1 {Tags:["akafire_init"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
execute at @s anchored eyes if score world akafirecount matches 1 run summon armor_stand ^-1 ^-0.55 ^1 {Tags:["akafire_init"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}

execute at @s anchored eyes if score world akafirecount matches 2 run summon armor_stand ^1 ^-0.55 ^1 {Tags:["akafire_init"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
execute at @s anchored eyes if score world akafirecount matches 2 run summon armor_stand ^ ^-0.55 ^1 {Tags:["akafire_init"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
execute at @s anchored eyes if score world akafirecount matches 2 run summon armor_stand ^-1 ^-0.55 ^1 {Tags:["akafire_init"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}

execute at @s anchored eyes if score world akafirecount matches 3 run summon armor_stand ^1.5 ^-0.55 ^1 {Tags:["akafire_init"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
execute at @s anchored eyes if score world akafirecount matches 3 run summon armor_stand ^0.5 ^-0.55 ^1 {Tags:["akafire_init"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
execute at @s anchored eyes if score world akafirecount matches 3 run summon armor_stand ^-0.5 ^-0.55 ^1 {Tags:["akafire_init"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}
execute at @s anchored eyes if score world akafirecount matches 3 run summon armor_stand ^-1.5 ^-0.55 ^1 {Tags:["akafire_init"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b}

execute as @e[type=armor_stand,tag=akafire_init] at @s rotated as @p[tag=false,limit=1] run tp @s ~ ~ ~ ~ ~

scoreboard players set @e[type=armor_stand,tag=akafire_init] akafirelife 100
tag @e[type=armor_stand,tag=akafire_init] add akafireproj
tag @e[type=armor_stand,tag=akafire_init] remove akafire_init

playsound minecraft:entity.blaze.shoot voice @a[distance=..25] ~ ~ ~ 300 0.5

scoreboard players add world akafirecount 1
