# RANDOMIZE (1-7)
execute store result score @s aka_d1 run random value 1..7
execute store result score @s aka_d2 run random value 1..7
execute store result score @s aka_d3 run random value 1..7

# SAFETY: PREVENT ACCIDENTAL WIN
# If RNG accidentally rolls 7-7-7 on a loss turn, change last digit to 6
execute if score @s aka_d1 matches 7 if score @s aka_d2 matches 7 if score @s aka_d3 matches 7 run scoreboard players set @s aka_d3 6

# SAFETY: PREVENT TRIPLES (e.g., 2-2-2)
# Triples look like wins, so we offset one digit
execute if score @s aka_d1 = @s aka_d2 if score @s aka_d2 = @s aka_d3 run scoreboard players add @s aka_d3 1
execute if score @s aka_d3 matches 8.. run scoreboard players set @s aka_d3 1

# SAD SOUND
execute at @s run playsound music_disc.awdangit voice @s ^ ^ ^ 150 1 1
