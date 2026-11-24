# Stop if the shared RMB cooldown is active
execute if score @s trapconfig_cd matches 1.. run return 0

# Clear the temporary action tracker
tag @s remove trap_action_done

# ACTION 1: CONFIGURE (Trap within 3 blocks)
execute as @s at @s if entity @e[type=armor_stand,tag=trapsentry,distance=..3] run function akasword:strategist/trap_config

# ACTION 2: SWAP (No trap in 3 blocks, but trap exists in 64 blocks)
execute as @s at @s unless entity @s[tag=trap_action_done] if entity @e[type=armor_stand,tag=trapsentry,distance=..64] run function akasword:strategist/trap_swap

# ACTION 3: DODGE (No traps anywhere within 64 blocks)
execute as @s at @s unless entity @s[tag=trap_action_done] run function akasword:strategist/trap_dodge