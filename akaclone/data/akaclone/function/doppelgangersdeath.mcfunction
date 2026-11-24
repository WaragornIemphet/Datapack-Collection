scoreboard players set world AkacloneRestriction 1
execute at @e[tag=akaclone,limit=1] run give @a[distance=..128,sort=nearest,limit=4] netherite_ingot
execute at @e[tag=akaclone,limit=1] run give @a[distance=..128] ancient_debris
execute at @e[tag=akaclone,limit=1] run give @a[distance=..128] blaze_rod 32
execute at @e[tag=akaclone,limit=1] run give @a[distance=..128] quartz 64
execute at @e[tag=akaclone,limit=1] run give @a[distance=..128] gunpowder 64
execute at @e[tag=akaclone,limit=1] run give @a[distance=..128] experience_bottle 64
execute at @e[tag=akaclone,limit=1] as @a[distance=..128] if items entity @s container.* *[custom_data~{special_tool:1b}] run give @s netherite_pickaxe[custom_name=[{"text":"Fortune's Favor","bold":true,"italic":false,"color":"dark_red"}],lore=[[{"text":"Too strong for this world","italic":false,"color":"red"}],[{"text":"Still, no fortune for you","italic":false,"color":"red"}]],enchantments={efficiency:10,fire_aspect:5},attribute_modifiers=[{type:attack_damage,amount:12,slot:mainhand,operation:add_value,id:"1783935347946"},{type:attack_speed,amount:-2.8,slot:mainhand,operation:add_value,id:"1783935611646"}],unbreakable={},custom_data={net_special_tool:1b}]
execute at @e[tag=akaclone,limit=1] as @a[distance=..128] if items entity @s container.* *[custom_data~{special_tool:1b}] run clear @s *[custom_data~{special_tool:1b}] 1
execute at @e[tag=akaclone,limit=1] run experience add @a[distance=..128] 1395 points
execute at @e[tag=akaclone,limit=1] run tag @e[tag=akaclone,limit=1] add akaclonedead
bossbar set akaclone players
scoreboard players set world AkacloneSkill 0
scoreboard players set world FalseakaSkill 0
scoreboard players set world AkacloneLives 0
scoreboard players set world FalseakaLives 0
scoreboard players set world FalseakaDeathTimer 0
scoreboard players set world FalseAkaDeath 0
scoreboard players set world FalseakaSpamSkill 0
scoreboard players set world FalseAkacloneProgress 0
execute as @a at @s run effect give @s unluck 120 0
weather thunder 120s
schedule clear akaclone:akacloneloop
schedule clear akaclone:falseakaloop
schedule function akaclone:falseakalastwarning 120s
kill @e[tag=akafire]
kill @e[tag=akaclone2]
kill @e[tag=falseaka2]
kill @e[tag=sac]
kill @e[tag=sui]
kill @e[tag=pain]
kill @e[tag=kra]
kill @e[tag=kra2]
kill @e[tag=tan]
kill @e[tag=tan2]
kill @e[tag=lisclone]
kill @e[tag=lislieclone2]
kill @e[tag=lutanclone]
kill @e[tag=lutanclone2]
kill @e[tag=gunclone]
kill @e[tag=gunclone2]
kill @e[tag=kkc]

execute at @e[tag=akaclone,limit=1] run playsound entity.generic.explode voice @a[distance=..128] ~ ~ ~ 120 1 1 
execute at @e[tag=akaclone,limit=1] run particle minecraft:explosion ~ ~1 ~ 1 1 1 1 100 force
tellraw @a ["",{"text":"False","bold":true,"color":"dark_gray"},{"text":" ","bold":true},{"text":"Akashiro ","bold":true,"color":"dark_red"},{"text":"has been defeated !","color":"gray"}]
kill @e[tag=akaclone]
kill @e[tag=falseaka]
kill @e[tag=akaclonedead]
tag @a remove akatarget
bossbar set falseaka players
