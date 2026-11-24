# 1. Set Cooldown (100 ticks = 5 seconds)
scoreboard players set @s firecd 100
execute if score world akafirecount matches 4.. run scoreboard players set world akafirecount 0
# 2. Summon the invisible projectile
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

# 3. Orient the projectile to face exactly where the player is looking
execute as @e[type=armor_stand,tag=akafire_init] at @s rotated as @p[tag=false,limit=1] run tp @s ~ ~ ~ ~ ~

# 4. Set its lifetime to 100 ticks and change its tag so it starts ticking
scoreboard players set @e[type=armor_stand,tag=akafire_init] akafirelife 100
tag @e[type=armor_stand,tag=akafire_init] add akafireproj
tag @e[type=armor_stand,tag=akafire_init] remove akafire_init

# 5. (Optional) Play a sound effect when fired
playsound minecraft:entity.blaze.shoot voice @a[distance=..25] ~ ~ ~ 300 0.5

scoreboard players add world akafirecount 1