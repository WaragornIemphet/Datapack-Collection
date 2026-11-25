execute store result score #fate akasword_rng run random value 1..17
execute if score #fate akasword_rng matches 1 run function akasword:slot_outcome_win
execute if score #fate akasword_rng matches 2.. run function akasword:slot_outcome_loss

data modify storage akasword:macro args set value {}
execute store result storage akasword:macro args.n1 int 1 run scoreboard players get @s akasword_s1
execute store result storage akasword:macro args.n2 int 1 run scoreboard players get @s akasword_s2
execute store result storage akasword:macro args.n3 int 1 run scoreboard players get @s akasword_s3

title @s times 0 60 20
function akasword:slot_render with storage akasword:macro args

execute if score @s akasword_s1 matches 7 if score @s akasword_s2 matches 7 if score @s akasword_s3 matches 7 run function akasword:slot_jackpot_stage

tag @s remove akasword_rolling
scoreboard players set @s akasword_slot_cd 100
scoreboard players set @s akasword_roll_timer 0

