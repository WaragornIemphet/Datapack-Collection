execute at @e[tag=bank,limit=1] run tellraw @a[distance=..128] [{"text":"<Bank_2013> ","color":"green"},{"text":"You were 2 steps behind","color":"white"}]
execute as @e[tag=bank,limit=1] at @s run tag @s add bankdeath
execute at @e[tag=bankdeath] run playsound minecraft:item.trident.thunder voice @a[distance=..100] ~ ~ ~ 50 2 1
schedule function bankboss:bankdeathtext1 2s
execute at @e[tag=bank,limit=1] as @a run schedule clear bankboss:bankp3loop
execute at @e[tag=bank,limit=1] run playsound ui.button.click voice @a[distance=..128] ^ ^ ^ 150 1 1