execute if score world lutarisstage matches 6.. run tellraw @a [{"text":"The abyssal war cry fades into a pathetic whimper...","shadow_color":-6419958}]

scoreboard players set world worldevent 0
scoreboard players set world lutarisstage 0
scoreboard players set world lutarisskill 0
bossbar set lutaris players

tp @e[tag=klan] ~ ~-300 ~
tp @e[tag=kkk] ~ ~-300 ~
tp @e[tag=okk] ~ ~-300 ~
tp @e[tag=bkk] ~ ~-300 ~
kill @e[tag=klan]
kill @e[tag=lutaris]

execute at @a run stopsound @a voice