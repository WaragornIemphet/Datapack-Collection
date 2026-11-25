execute if score @s sentryfire_cd matches 1.. run return 0
execute unless entity @e[tag=spacetarget,distance=..64] run return 0
execute unless entity @e[type=armor_stand,tag=sentry] run return 0

scoreboard players set @s sentryfire_cd 600

scoreboard players set #sentry_shots sentry_math 8
function akasword:strategist/sentry_shoot
