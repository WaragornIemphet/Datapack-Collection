# 1. CALCULATE RNG (1..17)
execute store result score @s akasword_rng run random value 1..17

# ==================================================
#  OUTCOME A: JACKPOT (RNG == 17)
#  Visual: 7 7 7
#  Reward: Refresh Cooldowns Only
# ==================================================
# Force Digits to 7-7-7
execute if score @s akasword_rng matches 17 run scoreboard players set @s aka_d1 7
execute if score @s akasword_rng matches 17 run scoreboard players set @s aka_d2 7
execute if score @s akasword_rng matches 17 run scoreboard players set @s aka_d3 7

# Display WIN
execute if score @s akasword_rng matches 17 run title @s title [{"text":"7 7 7","color":"gold","bold":true}]
execute if score @s akasword_rng matches 17 run title @s subtitle {"text":"JACKPOT!","color":"red","bold":true}

# Effects (Sound + Particles)
execute if score @s akasword_rng matches 17 run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1 1
execute if score @s akasword_rng matches 17 run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.5 50

# REWARD: Reset Cooldowns
execute if score @s akasword_rng matches 17 run scoreboard players set @s akasword_jackpot_cd 0
execute if score @s akasword_rng matches 17 run scoreboard players set @s akasword_door_cd 0
execute if score @s akasword_rng matches 17 run scoreboard players set @s akasword_cnt_cd 0


# ==================================================
#  OUTCOME B: LOSS (RNG != 17)
#  Visual: Random Digits (e.g., 1 2 4)
#  Reward: None
# ==================================================
# Generate random digits (1-9)
execute unless score @s akasword_rng matches 17 run execute store result score @s aka_d1 run random value 1..9
execute unless score @s akasword_rng matches 17 run execute store result score @s aka_d2 run random value 1..9
execute unless score @s akasword_rng matches 17 run execute store result score @s aka_d3 run random value 1..9

# Display LOSS (White/Gray text)
execute unless score @s akasword_rng matches 17 run title @s title [{"score":{"name":"@s","objective":"aka_d1"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"aka_d2"},"color":"white"},{"text":" "},{"score":{"name":"@s","objective":"aka_d3"},"color":"white"}]
execute unless score @s akasword_rng matches 17 run title @s subtitle {"text":"Missed...","color":"gray"}
execute unless score @s akasword_rng matches 17 run playsound minecraft:block.note_block.bass player @a ~ ~ ~ 1 0.5

# 2. CLEANUP
tag @s remove akasword_rolling