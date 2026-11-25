kill @e[tag=sett]
scoreboard players set world SettawatttSkill 0
scoreboard players add world PowpeterPatience 1
execute at @e[tag=powp] run tellraw @a[distance=..128] [{"text":"<powpeter1> ","color":"green"},{"text":"GOD DAMN IT, SET","color":"white"}]
execute at @e[tag=powp] run playsound minecraft:entity.villager.hurt voice @a[distance=..128] ~ ~ ~ 250 0.9 1
bossbar set setta players
