tag @s add trap_action_done
scoreboard players set @s trapconfig_cd 20
playsound minecraft:ui.button.click voice @a[distance=..16] ~ ~ ~ 100 1.5

execute as @e[type=armor_stand,tag=trapsentry,distance=..3,limit=1,sort=nearest] run function akasword:strategist/trap_cycle
