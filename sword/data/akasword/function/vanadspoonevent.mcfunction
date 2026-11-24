# 1. Reset advancement so it can trigger again immediately
advancement revoke @s only akasword:vanadspoon

# 2. Tag management: Clear the old victim tag and mark the current player
tag @e[tag=current_bonk] remove current_bonk
tag @s add current_bonker

# 3. Identify the mob, run score logic, and tag them for the Ultimate
# We combine these into one 'as' execution for efficiency
execute as @e[distance=..7,nbt={HurtTime:10s},tag=!current_bonker,limit=1,sort=nearest] at @s run function akasword:vanadspoonscore

execute at @s run playsound block.anvil.place voice @a[distance=..32] ~ ~ ~ 150 2 1

# 4. Cleanup player tag
tag @s remove current_bonker

