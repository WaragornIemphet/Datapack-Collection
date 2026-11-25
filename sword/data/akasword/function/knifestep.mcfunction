
tp @s ^ ^ ^1.25

particle crit ^ ^0.5 ^-1 0 0 0 0 1 force

execute unless block ~ ~ ~ air unless block ~ ~ ~ light unless block ~ ~ ~ water run tag @s add hit_wall
execute if entity @s[tag=hit_wall] run particle cloud ~ ~ ~ 0 0 0 0.05 5 force
execute if entity @s[tag=hit_wall] run playsound minecraft:block.stone.break master @a ~ ~ ~ 0.5 1.5
execute if entity @s[tag=hit_wall] run kill @s

execute as @e[type=!item,type=!armor_stand,type=!item_frame,type=!glow_item_frame,type=!mannequin,tag=!speed_owner,distance=..1.5,sort=nearest,limit=1] run tag @s add knife_hit
execute as @a[tag=!speed_owner,distance=..1.5,sort=nearest,limit=1] run tag @s add knife_hit

execute if entity @e[tag=knife_hit] run execute as @e[tag=knife_hit] at @s run damage @s 25 player_attack by @p[tag=speed_owner,distance=..100]
execute if entity @e[tag=knife_hit] run effect give @e[tag=knife_hit] slowness 4 4 true
execute if entity @e[tag=knife_hit] run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 1
execute if entity @e[tag=knife_hit] run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0.2 0.2 0.2 1 50 force

tag @e[tag=knife_hit] remove knife_hit

execute if entity @e[tag=knife_hit] run kill @s
