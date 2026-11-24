# Stop if the F skill is on cooldown
execute if score @s sentryplace_cd matches 1.. run return 0

# Route based on proximity tag
execute if entity @s[tag=nearsentry] run function akasword:strategist/mode2_destroy
execute unless entity @s[tag=nearsentry] run function akasword:strategist/mode2_place