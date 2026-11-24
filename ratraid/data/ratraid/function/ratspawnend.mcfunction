execute if score world ratraidstage matches 7.. run tellraw @a [{"text":"The frantic squeaking finally fades into the shadows...","color":"gray"}]
execute at @a run playsound entity.endermite.hurt voice @a ~ ~ ~ 1000 0.1

scoreboard players set world worldevent 0
scoreboard players set world ratraidstage 0
scoreboard players set world ratskill 0
bossbar set hantaking players
bossbar set hantafinalboss players
tp @e[tag=rat] ~ ~-300 ~
tp @e[tag=elderrat] ~ ~-300 ~
tp @e[tag=ratboss] ~ ~-300 ~
kill @e[tag=rat]
kill @e[tag=elderrat]

