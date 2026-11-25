scoreboard players add world ChayPatience 1
execute as @e[tag=joor2] at @s run tellraw @a[distance=..128] [{"text":"<Joorno> ","color":"light_purple"},{"text":"You filthy bastards","color":"white"}]
execute as @e[tag=joor2] at @s run particle portal ~ ~ ~ 0.5 0.5 0.5 0.1 100 force
execute as @e[tag=joor2] at @s run playsound entity.shulker.teleport voice @a[distance=..50] ~ ~ ~ 160 1 1
execute as @e[tag=joor2] at @s run tp @s ^ ^-1024 ^
execute as @e[tag=joor] at @s run tp @s ^ ^-1024 ^
kill @e[tag=joor2]
kill @e[tag=joor]
bossbar set joorno players
