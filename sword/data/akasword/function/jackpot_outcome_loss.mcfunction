execute store result score @s aka_d1 run random value 1..7
execute store result score @s aka_d2 run random value 1..7
execute store result score @s aka_d3 run random value 1..7

execute if score @s aka_d1 matches 7 if score @s aka_d2 matches 7 if score @s aka_d3 matches 7 run scoreboard players set @s aka_d3 6

execute if score @s aka_d1 = @s aka_d2 if score @s aka_d2 = @s aka_d3 run scoreboard players add @s aka_d3 1
execute if score @s aka_d3 matches 8.. run scoreboard players set @s aka_d3 1

execute at @s run playsound music_disc.awdangit voice @s ^ ^ ^ 150 1 1
