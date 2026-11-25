scoreboard players add world PowpeterPatience 1
execute as @e[tag=chay] at @s run particle totem_of_undying ^ ^1 ^ ^ ^ ^ 0.1 10 force
execute as @e[tag=chay] at @s run playsound item.totem.use master @a[distance=..64] ~ ~ ~ 100 1 1
execute as @e[tag=chay] at @s run tellraw @a ["",{"text":"<0_Chay_0>","color":"aqua"}," TAWEE PULL HT PEARL-"]
execute as @e[tag=chay2] at @s run tp @s ^ ^-1024 ^
execute as @e[tag=chay] at @s run tp @s ^ ^-1024 ^
kill @e[tag=chay2]
kill @e[tag=chay]
bossbar set chay players
