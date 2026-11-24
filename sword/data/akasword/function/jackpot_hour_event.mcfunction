# 1. Reset advancement so it can trigger again immediately
advancement revoke @s only akasword:jackpotsurge
execute if score @s jackpotsurge_cd matches 1.. run return 0
# 2. Tag management: Clear the old victim tag and mark the current player
tag @e[tag=current_jackpot] remove current_jackpot
tag @s add current_jackpothour

# 3. Identify the mob, run score logic, and tag them for the Ultimate
# We combine these into one 'as' execution for efficiency
execute as @e[distance=..7,nbt={HurtTime:10s},tag=!current_jackpothour,limit=1,sort=nearest] at @s run function akasword:jackpot_hour_score

# 4. Cleanup player tag
tag @s remove current_jackpothour
