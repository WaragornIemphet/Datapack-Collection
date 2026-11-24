scoreboard players add world PowpeterPatience 1
execute as @e[tag=smq] at @s run particle totem_of_undying ^ ^1 ^ ^ ^ ^ 0.1 10 force
execute as @e[tag=smq] at @s run playsound item.totem.use master @a[distance=..64] ~ ~ ~ 100 1 1
execute as @e[tag=smq] at @s run tellraw @a ["",{"text":"<Smatr_>","color":"blue"}," YO TP ME ABCKAw"]
execute as @e[tag=smq2] at @s run tp @s ^ ^-1024 ^
execute as @e[tag=smq] at @s run tp @s ^ ^-1024 ^
kill @e[tag=smq2]
kill @e[tag=smq]
bossbar set smqtr players