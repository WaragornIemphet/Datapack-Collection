tellraw @a [{"text":"Welcome to","color":"white"},{"text":" ","color":"yellow"},{"text":"[","color":"black"},{"text":"=","color":"white"},{"text":"Azuaken","bold":true,"color":"aqua"},{"text":"Craft","bold":true,"color":"dark_red"},{"text":"=","bold":true,"color":"white"},{"text":"]","bold":true,"color":"black"}]


bossbar add bank [{"text":"Bank_2013","color":"green"}]
bossbar set bank max 800
bossbar set bank style notched_6
bossbar set bank color green

scoreboard objectives add BankSpawn dummy
scoreboard objectives add BankLoot dummy
scoreboard objectives add bankscan dummy
scoreboard objectives add BankLives dummy
scoreboard objectives add Bank dummy
scoreboard objectives add BankSkill dummy
scoreboard objectives add BankSkill2 dummy

scoreboard objectives add radarcalc dummy
scoreboard objectives add radarsneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add radarcd dummy

scoreboard players set @a radarcd 0
scoreboard players set @a radarsneak 0