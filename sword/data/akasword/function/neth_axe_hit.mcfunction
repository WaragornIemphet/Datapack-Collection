advancement revoke @s only akasword:hit_neth_axe
tag @s add current_user

tag @e[tag=!current_user,distance=..7,limit=1,sort=nearest,nbt={HurtTime:10s}] add victim

execute as @e[tag=victim] if items entity @s weapon.offhand minecraft:shield run tag @s add shield_target

execute if entity @e[tag=shield_target] run damage @e[tag=shield_target,limit=1] 30 minecraft:player_attack by @s
execute if entity @e[tag=shield_target] run effect give @e[tag=shield_target,limit=1] mining_fatigue 2 255 true
execute if entity @e[tag=shield_target] run effect give @e[tag=shield_target,limit=1] slowness 1 255 true
execute if entity @e[tag=shield_target] at @e[tag=shield_target] run particle crit ^ ^1 ^ 0.5 0.6 0.5 0.01 100 normal
execute if entity @e[tag=shield_target] at @e[tag=shield_target] run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0.1 0.1 0.1 1 100 force
execute if entity @e[tag=shield_target] at @e[tag=shield_target] run playsound minecraft:entity.wither.break_block voice @a[distance=..20] ~ ~ ~ 100 1.25 1
execute if entity @e[tag=shield_target] at @e[tag=shield_target] run playsound minecraft:block.anvil.land voice @a[distance=..20] ~ ~ ~ 100 1.25 1
execute if entity @e[tag=shield_target] if entity @s[tag=base_netherite_set] run effect give @s instant_health 1 0 true
execute if entity @e[tag=shield_target] if entity @s[tag=base_netherite_set] run effect give @s speed 3 1 true

execute unless entity @e[tag=shield_target] store result score @s RNG_Roll run random value 1..3

execute unless entity @e[tag=shield_target] if score @s RNG_Roll matches 3 run damage @e[tag=victim,limit=1] 35 minecraft:player_attack by @s
execute unless entity @e[tag=shield_target] if score @s RNG_Roll matches 3 run effect give @e[tag=victim,limit=1] weakness 3 255 true
execute unless entity @e[tag=shield_target] if score @s RNG_Roll matches 3 run effect give @e[tag=victim,limit=1] slowness 3 255 true
execute unless entity @e[tag=shield_target] at @e[tag=victim,limit=1] if score @s RNG_Roll matches 3 run particle crit ^ ^1 ^ 0.5 0.6 0.5 0.01 100 normal
execute unless entity @e[tag=shield_target] at @e[tag=victim,limit=1] if score @s RNG_Roll matches 3 run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0.1 0.1 0.1 1 100 force
execute unless entity @e[tag=shield_target] at @e[tag=victim,limit=1] if score @s RNG_Roll matches 3 run playsound minecraft:entity.wither.break_block voice @a[distance=..20] ~ ~ ~ 160 1.25 1
execute unless entity @e[tag=shield_target] if score @s RNG_Roll matches 3 if entity @s[tag=base_netherite_set] run effect give @s instant_health 1 0 true
execute unless entity @e[tag=shield_target] if score @s RNG_Roll matches 3 if entity @s[tag=base_netherite_set] run effect give @s speed 3 1 true

tag @e remove shield_target
tag @e remove victim
tag @e remove current_user
