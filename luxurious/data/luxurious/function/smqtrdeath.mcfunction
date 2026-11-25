kill @e[tag=smq]
scoreboard players set world SmqtrSkill 0
scoreboard players add world ChayPatience 1
execute at @e[tag=chay] run tellraw @a[distance=..128] [{"text":"<0_Chay_0>","color":"aqua"},{"text":" NOOOOOO","color":"white"}]
execute at @e[tag=chay] run playsound minecraft:entity.iron_golem.hurt voice @a[distance=..128] ~ ~ ~ 250 0.9 1
bossbar set smqtr players
