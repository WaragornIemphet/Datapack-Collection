execute if score @s trapplace_cd matches 1.. run return 0
execute if entity @s[tag=neartrap] run function akasword:strategist/mode3_destroy
execute unless entity @s[tag=neartrap] run function akasword:strategist/mode3_place
