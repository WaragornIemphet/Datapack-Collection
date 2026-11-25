advancement revoke @s only akasword:any_sword_hit
tag @s add currentuser

tag @e[tag=!currentuser,distance=..7,limit=1,sort=nearest,nbt={HurtTime:10s}] add victimm

execute if score @e[tag=victimm,limit=1] BleedStacks matches 1.. run tag @e[tag=victimm,limit=1] add detonate_ready

execute if entity @e[tag=detonate_ready] if score @e[tag=detonate_ready,limit=1] BleedStacks matches 1 run damage @e[tag=detonate_ready,limit=1] 10 minecraft:player_attack by @s
execute if entity @e[tag=detonate_ready] if score @e[tag=detonate_ready,limit=1] BleedStacks matches 2 run damage @e[tag=detonate_ready,limit=1] 13 minecraft:player_attack by @s
execute if entity @e[tag=detonate_ready] if score @e[tag=detonate_ready,limit=1] BleedStacks matches 3 run damage @e[tag=detonate_ready,limit=1] 15 minecraft:player_attack by @s
execute if entity @e[tag=detonate_ready] if score @e[tag=detonate_ready,limit=1] BleedStacks matches 4 run damage @e[tag=detonate_ready,limit=1] 18 minecraft:player_attack by @s
execute if entity @e[tag=detonate_ready] if score @e[tag=detonate_ready,limit=1] BleedStacks matches 5 run damage @e[tag=detonate_ready,limit=1] 21 minecraft:player_attack by @s
execute if entity @e[tag=detonate_ready] if score @e[tag=detonate_ready,limit=1] BleedStacks matches 6..10 run damage @e[tag=detonate_ready,limit=1] 30 minecraft:player_attack by @s
execute if entity @e[tag=detonate_ready] if score @e[tag=detonate_ready,limit=1] BleedStacks matches 11..15 run damage @e[tag=detonate_ready,limit=1] 40 minecraft:player_attack by @s
execute if entity @e[tag=detonate_ready] if score @e[tag=detonate_ready,limit=1] BleedStacks matches 16..19 run damage @e[tag=detonate_ready,limit=1] 50 minecraft:player_attack by @s
execute if entity @e[tag=detonate_ready] if score @e[tag=detonate_ready,limit=1] BleedStacks matches 20 run damage @e[tag=detonate_ready,limit=1] 60 minecraft:player_attack by @s

execute if entity @e[tag=detonate_ready] at @e[tag=detonate_ready] run particle electric_spark ~ ~1 ~ 1 1 1 0.1 250 normal
execute if entity @e[tag=detonate_ready] at @e[tag=detonate_ready] run playsound minecraft:block.glass.break player @a[distance=..20] ~ ~ ~ 120 0.8
execute if entity @e[tag=detonate_ready] at @e[tag=detonate_ready] run playsound minecraft:entity.zombie.break_wooden_door player @a[distance=..20] ~ ~ ~ 100 1.2

execute if entity @e[tag=detonate_ready] run scoreboard players set @e[tag=detonate_ready] BleedStacks 0

tag @e remove detonate_ready
tag @e remove victimm
tag @e remove currentuser
