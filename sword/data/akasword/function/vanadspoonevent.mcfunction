advancement revoke @s only akasword:vanadspoon

tag @e[tag=current_bonk] remove current_bonk
tag @s add current_bonker

execute as @e[distance=..7,nbt={HurtTime:10s},tag=!current_bonker,limit=1,sort=nearest] at @s run function akasword:vanadspoonscore

execute at @s run playsound block.anvil.place voice @a[distance=..32] ~ ~ ~ 150 2 1

tag @s remove current_bonker

