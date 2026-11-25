execute at @e[tag=bank] run give @a[limit=2] yellow_shulker_box[container=[{slot:0,item:{id:"experience_bottle",count:64}},{slot:1,item:{id:"experience_bottle",count:64}},{slot:2,item:{id:"experience_bottle",count:64}},{slot:3,item:{id:"experience_bottle",count:64}},{slot:4,item:{id:"experience_bottle",count:64}},{slot:5,item:{id:"experience_bottle",count:64}},{slot:6,item:{id:"experience_bottle",count:64}},{slot:7,item:{id:"experience_bottle",count:64}},{slot:8,item:{id:"experience_bottle",count:64}},{slot:9,item:{id:"experience_bottle",count:64}},{slot:10,item:{id:"experience_bottle",count:64}},{slot:11,item:{id:"experience_bottle",count:64}},{slot:12,item:{id:"experience_bottle",count:64}},{slot:13,item:{id:"experience_bottle",count:64}},{slot:14,item:{id:"experience_bottle",count:64}},{slot:15,item:{id:"experience_bottle",count:64}},{slot:16,item:{id:"experience_bottle",count:64}},{slot:17,item:{id:"experience_bottle",count:64}},{slot:18,item:{id:"experience_bottle",count:64}},{slot:19,item:{id:"experience_bottle",count:64}},{slot:20,item:{id:"experience_bottle",count:64}},{slot:21,item:{id:"experience_bottle",count:64}},{slot:22,item:{id:"experience_bottle",count:64}},{slot:23,item:{id:"experience_bottle",count:64}},{slot:24,item:{id:"experience_bottle",count:64}},{slot:25,item:{id:"experience_bottle",count:64}},{slot:26,item:{id:"experience_bottle",count:64}}]] 2
execute at @e[tag=bank] run give @a golden_carrot 256
execute at @e[tag=bank] run give @a enchanted_golden_apple 1
execute at @e[tag=bank] run give @a golden_apple 64

execute at @e[tag=bank,limit=1] as @p[distance=..128] store result score @s BankLoot run random value 1..4

execute as @a[scores={BankLoot=1}] run give @s paper[custom_name=[{"text":"Helmet Blueprint","italic":false,"color":"blue"}],lore=[[{"text":"Blueprint for Fullerite Helmet","italic":false,"color":"dark_blue"}]],item_model="syn:helmetblueprint",custom_data={helprint:1}]

execute as @a[scores={BankLoot=2}] run give @s paper[custom_name=[{"text":"C","italic":false,"color":"blue"},{"text":"h","italic":false,"color":"blue"},{"text":"e","italic":false,"color":"blue"},{"text":"st","italic":false,"color":"blue"},{"text":"p","italic":false,"color":"blue"},{"text":"l","italic":false,"color":"blue"},{"text":"a","italic":false,"color":"blue"},{"text":"t","italic":false,"color":"blue"},{"text":"e","italic":false,"color":"blue"},{"text":" Blueprint","italic":false,"color":"blue"}],lore=[[{"text":"Blueprint for Fullerite ","italic":false,"color":"dark_blue"},{"text":"C","italic":false,"color":"dark_blue"},{"text":"h","italic":false,"color":"dark_blue"},{"text":"e","italic":false,"color":"dark_blue"},{"text":"st","italic":false,"color":"dark_blue"},{"text":"p","italic":false,"color":"dark_blue"},{"text":"l","italic":false,"color":"dark_blue"},{"text":"a","italic":false,"color":"dark_blue"},{"text":"t","italic":false,"color":"dark_blue"},{"text":"e","italic":false,"color":"dark_blue"}]],item_model="syn:chestblueprint",custom_data={chestprint:1}]

execute as @a[scores={BankLoot=3}] run give @s paper[custom_name=[{"text":"L","italic":false,"color":"blue"},{"text":"e","italic":false,"color":"blue"},{"text":"ggings Blueprint","italic":false,"color":"blue"}],lore=[[{"text":"Blueprint for Fullerite ","italic":false,"color":"dark_blue"},{"text":"L","italic":false,"color":"dark_blue"},{"text":"e","italic":false,"color":"dark_blue"},{"text":"g","italic":false,"color":"dark_blue"},{"text":"g","italic":false,"color":"dark_blue"},{"text":"i","italic":false,"color":"dark_blue"},{"text":"ng","italic":false,"color":"dark_blue"},{"text":"s","italic":false,"color":"dark_blue"}]],item_model="syn:legblueprint",custom_data={legprint:1}]

execute as @a[scores={BankLoot=4}] run give @s paper[custom_name=[{"text":"B","italic":false,"color":"blue"},{"text":"oo","italic":false,"color":"blue"},{"text":"t","italic":false,"color":"blue"},{"text":"s Blueprint","italic":false,"color":"blue"}],lore=[[{"text":"Blueprint for Fullerite ","italic":false,"color":"dark_blue"},{"text":"B","italic":false,"color":"dark_blue"},{"text":"oo","italic":false,"color":"dark_blue"},{"text":"t","italic":false,"color":"dark_blue"},{"text":"s","italic":false,"color":"dark_blue"}]],item_model="syn:bootblueprint",custom_data={bootprint:1}]

scoreboard players reset @a BankLoot
tellraw @a [{"text":"Bank_2013","color":"green"},{"text":" ","color":"yellow"},{"text":"has been defeated","color":"gray"}]
kill @e[tag=bank2]
tag @a remove bank_cutscene
tag @a remove playerspawnbank
kill @e[tag=bankstand]
kill @e[tag=bankstand1]
kill @e[tag=bankshotslayer]

bossbar set bank players

scoreboard players set world BankLives 0
scoreboard players set world BankSkill 0
scoreboard players set world BankSkill2 0

schedule clear bankboss:bankloop
schedule clear bankboss:bankp1loop
schedule clear bankboss:bankp2loop
schedule clear bankboss:bankp3loop

stopsound @a voice music_disc.bankstart
stopsound @a voice music_disc.bank1
stopsound @a voice music_disc.bank2
stopsound @a voice music_disc.crucified
kill @e[tag=bank]
