# 1. Visual Hype (For everyone)
title @s title {"text":"7 7 7","color":"green","bold":true}
playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1 1
particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.1 50

# 2. GLOBAL PERSISTENCE CHECK
# If the Server Flag is 0 -> No one has ever claimed it -> Run First Reward
execute if score #lucky_flag akasword_global matches 0 run function akasword:reward_first

# If the Server Flag is 1 -> It has been claimed -> Run Repeat Reward
execute if score #lucky_flag akasword_global matches 1 run function akasword:reward_repeat
