damage @s 8 minecraft:generic

execute at @s run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0 0 0 1 50 force

execute as @s at @s run playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 1 1

tag @s add syn.holding_cutter

