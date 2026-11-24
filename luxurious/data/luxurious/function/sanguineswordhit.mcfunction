advancement revoke @s only luxurious:sanguineswordhit

tag @s add sanguinesworduser

execute as @e[distance=..7,nbt={HurtTime:10s},tag=!sanguinesworduser,limit=1,sort=nearest] at @s run function luxurious:sanguineswordbleed
tag @s remove sanguinesworduser
