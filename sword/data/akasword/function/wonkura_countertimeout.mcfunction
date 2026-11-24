# Clear all leftovers if the 1-minute teleport window expires
tag @s remove akasword_counter_success
execute as @e[tag=akasword_counter_target] run tag @s remove akasword_counter_target
scoreboard players set @s akasword_cd 600

