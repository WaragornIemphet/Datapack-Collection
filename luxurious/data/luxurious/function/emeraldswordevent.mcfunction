advancement revoke @s only luxurious:emeraldsword

tag @s add emeraldsworduser

execute as @e[distance=..7,nbt={HurtTime:10s},tag=!emeraldsworduser,limit=1,sort=nearest] at @s run function luxurious:emeraldswordscore

tag @s remove emeraldsworduser
