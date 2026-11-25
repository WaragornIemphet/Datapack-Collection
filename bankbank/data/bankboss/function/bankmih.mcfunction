scoreboard players add world BankSkill2 1

execute as @e[tag=!bank2p4skill,tag=bank2p4,limit=1] at @s run tag @s add bank2p4skill

execute as @e[tag=bank2p4,limit=1] at @s run playsound music_disc.timeaccel voice @a[distance=..100] ~ ~ ~ 200 1 1
execute at @e[tag=bank] run tellraw @a[distance=..128] [{"text":"<Bank_2013> ","color":"green"},{"text":"MADE IN HEAVEN!","color":"yellow"}]
execute at @e[tag=bank,limit=1] run playsound ui.button.click voice @a[distance=..128] ^ ^ ^ 150 1 1
schedule function bankboss:bankmihend 15s
