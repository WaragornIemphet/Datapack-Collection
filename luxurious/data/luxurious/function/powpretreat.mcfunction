scoreboard players add world ChayPatience 1
execute as @e[tag=powp2] at @s run tellraw @a[distance=..128] [{"text":"<powpeter1> ","color":"green"},{"text":"RETREAT RETREAT!","color":"white"}]
execute as @e[tag=powp2] at @s run particle portal ~ ~ ~ 0.5 0.5 0.5 0.1 100 force
execute as @e[tag=powp2] at @s run playsound entity.shulker.teleport voice @a[distance=..50] ~ ~ ~ 160 1 1
execute as @e[tag=powp2] at @s run tp @s ^ ^-1024 ^
execute as @e[tag=powp] at @s run tp @s ^ ^-1024 ^
kill @e[tag=powp2]
kill @e[tag=powp]
bossbar set powpeter players
