scoreboard players add world BankSkill 1
execute as @e[tag=bank2,limit=1] at @s run particle squid_ink ^ ^1 ^ 0.3 1 0.3 0 100 force
execute as @e[tag=bank2,limit=1] at @s run tp @s @p[sort=random,tag=bankfighter]
execute at @e[tag=bank] run effect give @a[distance=..100] resistance 1 255 true
execute at @e[tag=bank] run effect give @a[distance=..100] health_boost 1 255 true
execute at @e[tag=bank] run effect give @a[distance=..100] blindness 2 1 true
execute at @e[tag=bank] run playsound entity.lightning_bolt.impact voice @a[distance=..50] ~ ~ ~ 150 1.2 1
execute at @e[tag=bank] run tellraw @a[distance=..128] [{"text":"<Bank_2013> ","color":"green"},{"text":"Come on, I'm right here","color":"white"}]
execute at @e[tag=bank,limit=1] run playsound ui.button.click voice @a[distance=..128] ^ ^ ^ 150 1 1