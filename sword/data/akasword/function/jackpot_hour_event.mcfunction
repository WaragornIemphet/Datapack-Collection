advancement revoke @s only akasword:jackpotsurge
execute if score @s jackpotsurge_cd matches 1.. run return 0
tag @e[tag=current_jackpot] remove current_jackpot
tag @s add current_jackpothour

execute as @e[distance=..7,nbt={HurtTime:10s},tag=!current_jackpothour,limit=1,sort=nearest] at @s run function akasword:jackpot_hour_score

tag @s remove current_jackpothour
