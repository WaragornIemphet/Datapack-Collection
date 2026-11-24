

# 2. DETERMINE OUTCOME
execute if score #fatelex akasword_rng matches 1 run function akasword:jackpot_outcome_win
execute if score #fatelex akasword_rng matches 2.. run function akasword:jackpot_outcome_loss

# 3. PREPARE MACRO DATA
# Copy Scoreboard Digits -> Storage Arguments
data modify storage akasword:macro args set value {}
execute store result storage akasword:macro1 args.n11 int 1 run scoreboard players get @s aka_d1
execute store result storage akasword:macro1 args.n22 int 1 run scoreboard players get @s aka_d2
execute store result storage akasword:macro1 args.n33 int 1 run scoreboard players get @s aka_d3

# 4. RENDER THE TITLE (Using Macro)
title @s times 0 60 20
function akasword:jackpot_render with storage akasword:macro1 args

# 5. CHECK JACKPOT REWARD
# If we actually hit 7-7-7, grant the rewards
execute if score @s aka_d1 matches 7 if score @s aka_d2 matches 7 if score @s aka_d3 matches 7 run function akasword:jackpot_reward

# 6. UNLOCK
tag @s remove akasword_rolling
