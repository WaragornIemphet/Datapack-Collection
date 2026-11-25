execute as @e[type=armor_stand,tag=sentry] at @s run particle minecraft:flame ^-0.4 ^1.6 ^1.1 0.05 0.05 0.05 0.00001 10 force
execute as @e[type=armor_stand,tag=sentry] at @s run particle minecraft:smoke ^-0.4 ^1.55 ^2 0.0 0.5 1 0.01 100 force
execute as @e[type=armor_stand,tag=sentry] at @s run playsound minecraft:entity.generic.explode voice @a[distance=..64] ^ ^ ^ 100 2 1
execute as @e[type=armor_stand,tag=sentry] at @s run playsound minecraft:entity.ghast.shoot voice @a[distance=..64] ^ ^ ^ 100 1.5 1

execute store result score #sentry_count sentry_math if entity @e[type=armor_stand,tag=sentry]
scoreboard players set #sentry_dmg sentry_math 15
scoreboard players operation #sentry_dmg sentry_math *= #sentry_count sentry_math

execute store result storage akasword:macro damage int 1 run scoreboard players get #sentry_dmg sentry_math
function akasword:strategist/sentry_damage with storage akasword:macro

scoreboard players remove #sentry_shots sentry_math 1

execute if score #sentry_shots sentry_math matches 1.. run schedule function akasword:strategist/sentry_shoot 5t append

execute if score #sentry_shots sentry_math matches ..0 at @e[type=armor_stand,tag=sentry] run particle explosion ~ ~1 ~ 0 0 0 0 1 normal
execute if score #sentry_shots sentry_math matches ..0 run kill @e[type=armor_stand,tag=sentry]
