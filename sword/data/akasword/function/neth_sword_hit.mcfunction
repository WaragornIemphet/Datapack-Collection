advancement revoke @s only akasword:hit_neth_sword

tag @e[type=!player,distance=..6,limit=1,sort=nearest,nbt={HurtTime:10s}] add victim

execute store result score @s RNG_Roll run random value 1..6

execute if score @s RNG_Roll matches 6 run damage @e[tag=victim,limit=1] 20 minecraft:player_attack by @s


execute if score @s RNG_Roll matches 6 run scoreboard players add @s SwordCombo 1
execute if score @s SwordCombo matches 11.. run scoreboard players set @s SwordCombo 10
execute if score @s RNG_Roll matches 6 run scoreboard players set @s SwordTimer 200


execute if score @s RNG_Roll matches 6 if score @s SwordCombo matches 1 run effect give @s strength 10 0 true
execute if score @s RNG_Roll matches 6 if score @s SwordCombo matches 2 run effect give @s strength 10 1 true
execute if score @s RNG_Roll matches 6 if score @s SwordCombo matches 3 run effect give @s strength 10 2 true
execute if score @s RNG_Roll matches 6 if score @s SwordCombo matches 4 run effect give @s strength 10 3 true
execute if score @s RNG_Roll matches 6 if score @s SwordCombo matches 5 run effect give @s strength 10 4 true
execute if score @s RNG_Roll matches 6 if score @s SwordCombo matches 6 run effect give @s strength 10 5 true
execute if score @s RNG_Roll matches 6 if score @s SwordCombo matches 7 run effect give @s strength 10 6 true
execute if score @s RNG_Roll matches 6 if score @s SwordCombo matches 8 run effect give @s strength 10 7 true
execute if score @s RNG_Roll matches 6 if score @s SwordCombo matches 9 run effect give @s strength 10 8 true
execute if score @s RNG_Roll matches 6 if score @s SwordCombo matches 10.. run effect give @s strength 10 9 true


execute if score @s RNG_Roll matches 6 run title @s actionbar [{"text":"âš” STRENGTH LEVEL: ","color":"yellow","bold":true},{"score":{"name":"@s","objective":"SwordCombo"},"color":"red","bold":true},{"text":" âš”","color":"yellow","bold":true}]


execute if score @s RNG_Roll matches 6 if entity @s[tag=base_netherite_set] run effect give @s instant_health 1 0 true
execute if score @s RNG_Roll matches 6 if entity @s[tag=base_netherite_set] run effect give @s speed 3 1 true
execute if score @s RNG_Roll matches 6 if entity @s[tag=base_netherite_set] run effect give @s regeneration 3 2 true

execute if score @s RNG_Roll matches 6 at @e[tag=victim,limit=1] run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0.1 0.1 0.1 1 100 force
execute if score @s RNG_Roll matches 6 at @e[tag=victim,limit=1] run particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 1 normal
execute if score @s RNG_Roll matches 6 at @e[tag=victim,limit=1] run playsound minecraft:entity.wither.break_block voice @a[distance=..20] ~ ~ ~ 160 1.25 1
execute if score @s RNG_Roll matches 6 at @e[tag=victim,limit=1] run playsound minecraft:block.amethyst_block.chime player @a[distance=..20] ~ ~ ~ 160 1.5

tag @e remove victim
