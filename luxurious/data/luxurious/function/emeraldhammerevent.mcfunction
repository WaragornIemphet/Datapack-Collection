advancement revoke @s only luxurious:emeraldhammer

tag @s add emeraldhammeruser

execute as @e[distance=..7,nbt={HurtTime:10s},tag=!emeraldhammeruser,limit=1,sort=nearest] at @s run function luxurious:emeraldhammerstun

tag @s remove emeraldhammeruser
