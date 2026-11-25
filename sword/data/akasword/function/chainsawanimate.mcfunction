
execute unless items entity @s weapon.mainhand *[custom_data~{chainsaw:1}] run return run function akasword:chainsawstop

tag @s add current_owner

execute as @e[tag=chainsaw_victim,distance=..12] if score @s chain_link_id = @p[tag=current_owner] chain_id run tag @s add my_victim

execute unless entity @e[tag=my_victim] run function akasword:chainsawstop
execute unless entity @e[tag=my_victim] run tag @s remove current_owner
execute unless entity @e[tag=my_victim] run return 0

execute as @e[tag=my_victim] at @p[tag=current_owner] run tp @s ^ ^ ^1.5 facing entity @p[tag=current_owner]
execute as @e[tag=my_victim] run effect give @s weakness 1 255 true
execute as @e[tag=my_victim] run summon experience_orb ~ ~1 ~ {Value:7}
execute as @e[tag=my_victim] run damage @s 7 player_attack by @p[tag=current_owner]
execute at @e[tag=my_victim] run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0 0 0 1 50 force
execute at @e[tag=my_victim] run playsound item.shears.snip voice @a[distance=..50] ^ ^ ^ 120 0.1 1
execute at @e[tag=my_victim] run playsound block.piston.contract voice @a[distance=..50] ^ ^ ^ 120 1.5 1


tag @e[tag=my_victim] remove my_victim
tag @s remove current_owner

effect give @s regeneration 1 10 true
effect give @s slowness 1 2 true

scoreboard players operation #temp chain_const = @s chainsaw_timer
scoreboard players operation #temp chain_const %= #5 chain_const
execute if score #temp chain_const matches 0 run effect give @s saturation 1 1 true

scoreboard players remove @s chainsaw_timer 1
execute if score @s chainsaw_timer matches ..0 run function akasword:chainsawstop
