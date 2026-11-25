execute as @e[tag=bankdeath] at @s run tag @s add bankfried
execute at @e[tag=bank,limit=1] run tellraw @a[distance=..128] [{"text":"<Bank_2013> ","color":"green"},{"text":"AAAAAA-","color":"white"}]
schedule function bankboss:bankdeath 5.5s
schedule function bankboss:bankprem 8s
execute at @e[tag=bank,limit=1] run playsound ui.button.click voice @a[distance=..128] ^ ^ ^ 150 1 1
