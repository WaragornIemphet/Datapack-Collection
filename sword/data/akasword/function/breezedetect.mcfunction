# Revoke advancement to allow re-triggering
advancement revoke @s only akasword:breezehit

tag @s add breezehit

execute as @e[distance=..7,nbt={HurtTime:10s},tag=!breezehit,limit=1,sort=nearest] at @s run function akasword:breezeevent

tag @s remove breezehit