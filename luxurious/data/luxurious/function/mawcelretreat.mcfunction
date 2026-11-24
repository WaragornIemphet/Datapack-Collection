scoreboard players add world PowpeterPatience 1
execute as @e[tag=maw] at @s run particle totem_of_undying ^ ^1 ^ ^ ^ ^ 0.1 10 force
execute as @e[tag=maw] at @s run playsound item.totem.use master @a[distance=..64] ~ ~ ~ 100 1 1
execute as @e[tag=maw] at @s run tellraw @a ["",{"text":"<Mawcel>","color":"yellow"}," CLOSE IT NOW"]
execute as @e[tag=maw2] at @s run tp @s ^ ^-1024 ^
execute as @e[tag=maw] at @s run tp @s ^ ^-1024 ^
kill @e[tag=maw2]
kill @e[tag=maw]
bossbar set mawcel players