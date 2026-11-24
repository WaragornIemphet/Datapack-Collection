execute as @a[scores={radarcd=1..}] run scoreboard players remove @s radarcd 1

execute as @a if items entity @s weapon.mainhand *[minecraft:custom_data~{isradar:true}] at @s run function bankboss:radarcalculate
execute as @a if items entity @s weapon.offhand *[minecraft:custom_data~{isradar:true}] at @s run function bankboss:radarcalculate

execute as @a if items entity @s weapon.mainhand *[minecraft:custom_data~{newradar:true}] at @s run title @s actionbar [{"text":"[ ","color":"dark_green"},{"text":"SCANNING...","color":"green"},{"text":" | ","color":"dark_green"},{"score":{"name":"world","objective":"bankscan"},"color":"green"},{"text":"%","color":"green"},{"text":" ]","color":"dark_green"}]
execute as @a if items entity @s weapon.mainhand *[minecraft:custom_data~{newradar:true}] at @s if entity @e[tag=bankspawnarmorstand,limit=1,sort=nearest,distance=..64] run scoreboard players add world bankscan 1
execute as @a[tag=playerspawnbank,limit=1] at @s if score world bankscan matches 100.. run function bankboss:bankstartspawn1

execute as @a[scores={radarsneak=1..,radarcd=0}] if items entity @s weapon.mainhand *[minecraft:custom_data~{isradar:true}] at @s run function bankboss:radarpulse

scoreboard players set @a radarsneak 0
