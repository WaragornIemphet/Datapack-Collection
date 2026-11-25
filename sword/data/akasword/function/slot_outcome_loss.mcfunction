execute store result score @s akasword_s1 run random value 1..7
execute store result score @s akasword_s2 run random value 1..7
execute store result score @s akasword_s3 run random value 1..7

execute if score @s akasword_s1 matches 7 if score @s akasword_s2 matches 7 if score @s akasword_s3 matches 7 run scoreboard players set @s akasword_s3 6
execute if score @s akasword_s1 = @s akasword_s2 if score @s akasword_s2 = @s akasword_s3 run scoreboard players add @s akasword_s3 1
execute if score @s akasword_s3 matches 8.. run scoreboard players set @s akasword_s3 1

execute at @s run playsound music_disc.awdangit voice @s ^ ^ ^ 150 1 1
