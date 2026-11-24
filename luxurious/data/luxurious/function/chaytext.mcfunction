tag @s add chay_defeated

scoreboard players set world ChaySkill 0
scoreboard players set world ChayP2Skill 0

execute at @e[tag=chay_defeated] run tellraw @a[distance=..128] [{"text":"<0_Chay_0> ","color":"aqua"},{"text":"NO","color":"white"}]
execute at @e[tag=chay_defeated] run tellraw @a[distance=..128] [{"text":"<0_Chay_0> ","color":"aqua"},{"text":"I AM NOT DYING","color":"white"}]
execute at @e[tag=chay_defeated] run playsound minecraft:ui.button.click master @a[distance=..128] ~ ~ ~ 100 1 1

schedule function luxurious:chaytext1 3s
