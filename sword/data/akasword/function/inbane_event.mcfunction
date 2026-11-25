advancement revoke @s only akasword:hit_mob

tag @s add current_attacker

execute as @e[distance=..7,nbt={HurtTime:10s},tag=!current_attacker,limit=1,sort=nearest] at @s run function akasword:inbanescore

tag @s remove current_attacker
