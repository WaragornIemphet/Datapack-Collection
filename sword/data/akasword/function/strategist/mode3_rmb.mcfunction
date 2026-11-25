execute if score @s trapconfig_cd matches 1.. run return 0

tag @s remove trap_action_done

execute as @s at @s if entity @e[type=armor_stand,tag=trapsentry,distance=..3] run function akasword:strategist/trap_config

execute as @s at @s unless entity @s[tag=trap_action_done] if entity @e[type=armor_stand,tag=trapsentry,distance=..64] run function akasword:strategist/trap_swap

execute as @s at @s unless entity @s[tag=trap_action_done] run function akasword:strategist/trap_dodge
