item replace entity @s weapon.offhand with air

execute at @s run playsound entity.generic.explode voice @a[distance=..100] ~ ~ ~ 300 2 1

scoreboard players set world GordLayLives 1
execute as @p at @s run function unemployed:gordlaystart


