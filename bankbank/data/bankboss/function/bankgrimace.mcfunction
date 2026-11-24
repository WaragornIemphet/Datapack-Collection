execute at @e[tag=bank] run tellraw @a[distance=..128] [{"text":"<Bank_2013> ","color":"green"},{"text":"Wanna try these","color":"white"},{"text":" ","color":"green"},{"text":"Grimace shakes?","color":"light_purple"}]
execute at @e[tag=bank,limit=1] run playsound ui.button.click voice @a[distance=..128] ^ ^ ^ 150 1 1

scoreboard players add world BankSkill 1

execute as @a[tag=bankfighter] at @s run effect give @s slowness 8 255 true
execute as @a[tag=bankfighter] at @s run effect give @s weakness 8 255 true
execute as @a[tag=bankfighter] at @s run effect give @s blindness 8 255 true
execute as @a[tag=bankfighter] at @s run effect give @s darkness 8 255 true
execute as @a[tag=bankfighter] at @s run effect give @s mining_fatigue 8 255 true
execute as @a[tag=bankfighter] at @s run effect give @s hunger 8 50 true
execute as @a[tag=bankfighter] at @s run effect give @s poison 8 255 true
execute as @a[tag=bankfighter] at @s run effect give @s wither 8 255 true
execute as @a[tag=bankfighter] at @s run effect give @s levitation 8 10 true
execute as @a[tag=bankfighter] at @s run effect give @s unluck 8 255 true
execute as @a[tag=bankfighter] at @s run effect give @s instant_damage 1 2 true