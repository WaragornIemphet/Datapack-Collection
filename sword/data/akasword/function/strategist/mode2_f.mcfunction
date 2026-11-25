execute if score @s sentryplace_cd matches 1.. run return 0

execute if entity @s[tag=nearsentry] run function akasword:strategist/mode2_destroy
execute unless entity @s[tag=nearsentry] run function akasword:strategist/mode2_place
