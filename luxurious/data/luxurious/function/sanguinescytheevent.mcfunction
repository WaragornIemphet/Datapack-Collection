advancement revoke @s only luxurious:sanguinescythe

tag @s add sanguinescytheuser

execute as @e[distance=..7,nbt={HurtTime:10s},tag=!sanguinescytheuser,limit=1,sort=nearest] at @s run function luxurious:sanguinescytheslash
tag @s remove sanguinescytheuser
