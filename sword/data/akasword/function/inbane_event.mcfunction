# Reset advancement
advancement revoke @s only akasword:hit_mob

# Tag the player to ensure they aren't targeted by their own logic
tag @s add current_attacker

# 1. Run the logic AS the victim
# We find the mob that was just hit (HurtTime:10s) and run the score function as them
execute as @e[distance=..7,nbt={HurtTime:10s},tag=!current_attacker,limit=1,sort=nearest] at @s run function akasword:inbanescore

# Cleanup
tag @s remove current_attacker
