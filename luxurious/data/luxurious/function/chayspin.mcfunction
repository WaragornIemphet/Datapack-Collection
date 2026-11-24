execute at @s run playsound minecraft:entity.player.attack.sweep master @a[distance=..16] ~ ~ ~ 1.5 0.8
execute at @s run playsound minecraft:entity.player.attack.crit master @a[distance=..16] ~ ~ ~ 1.5 0.5

execute at @s run particle sweep_attack ~ ~1 ~ 1.5 0 1.5 0 8 force
execute at @s run particle dust{color:[0.8, 0.0, 0.0], scale:1.5} ~ ~1 ~ 1.5 0.2 1.5 0.1 30 force

execute at @s as @a[distance=..8] run damage @s 8 minecraft:player_attack by @e[tag=chay,limit=1]

execute at @s as @a[distance=..8] run tag @s add chay_bleeding
execute at @s as @a[distance=..8] run scoreboard players set @s ChayBleedTimer 100