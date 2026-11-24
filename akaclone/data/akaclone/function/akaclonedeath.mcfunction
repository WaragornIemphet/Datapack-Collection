execute at @e[tag=akaclone,limit=1] run tag @e[tag=akaclone,limit=1] add akaclonedead

execute unless score world AkacloneRestriction matches 1 run execute at @e[tag=akaclone,limit=1] run give @a[distance=..128] blaze_rod 32
execute unless score world AkacloneRestriction matches 1 run execute at @e[tag=akaclone,limit=1] run give @a[distance=..128] quartz 64
execute unless score world AkacloneRestriction matches 1 run execute at @e[tag=akaclone,limit=1] run give @a[distance=..128] gunpowder 64
execute unless score world AkacloneRestriction matches 1 run execute at @e[tag=akaclone,limit=1] run give @a[distance=..128] experience_bottle 64
execute unless score world AkacloneRestriction matches 1 run execute at @e[tag=akaclone,limit=1] as @a[distance=..128] if items entity @s container.* *[custom_data~{special_tool:1b}] run give @s netherite_pickaxe[custom_name=[{"text":"Fortune's Favor","bold":true,"italic":false,"color":"dark_red"}],lore=[[{"text":"Too strong for this world","italic":false,"color":"red"}],[{"text":"Still, no fortune for you","italic":false,"color":"red"}]],enchantments={efficiency:10,fire_aspect:5},attribute_modifiers=[{type:attack_damage,amount:12,slot:mainhand,operation:add_value,id:"1783935347946"},{type:attack_speed,amount:-2.8,slot:mainhand,operation:add_value,id:"1783935611646"}],unbreakable={},custom_data={net_special_tool:1b}]
execute unless score world AkacloneRestriction matches 1 run execute at @e[tag=akaclone,limit=1] as @a[distance=..128] if items entity @s container.* *[custom_data~{special_tool:1b}] run clear @s *[custom_data~{special_tool:1b}] 1
execute unless score world AkacloneRestriction matches 1 run execute at @e[tag=akaclone,limit=1] run experience add @a[distance=..128] 1395 points

bossbar set akaclone players
scoreboard players set world AkacloneSkill 0
scoreboard players set world AkacloneLives 0
stopsound @a voice minecraft:music_disc.raw__unfiltered_calamity4
schedule clear akaclone:akacloneloop
execute at @e[tag=akaclonedead,limit=1] as @a[distance=..100] run playsound music_disc.akaclone2 voice @s ^ ^ ^ 150 1 1
kill @e[tag=akafire]
kill @e[tag=akaclone2]
kill @e[tag=sac]
kill @e[tag=kra]
kill @e[tag=kra2]
kill @e[tag=tan]
kill @e[tag=tan2]
execute at @e[tag=akaclone,limit=1] run playsound entity.generic.explode voice @a[distance=..128] ~ ~ ~ 120 1 1 
execute at @e[tag=akaclone,limit=1] run particle minecraft:explosion ~ ~1 ~ 1 1 1 1 100 force
tag @a remove akatarget
schedule function akaclone:summonfalseaka 40s
schedule function akaclone:falseakarise 35s
tellraw @a ["",{"text":"Akashiro","bold":true,"color":"dark_red"},{"text":" ","bold":true},{"text":"Clone ","bold":true,"color":"dark_gray"},{"text":"has been defeated !","color":"gray"}]
execute as @e[tag=akaclone,limit=1] at @s run data merge entity @s {CustomNameVisible:0b}
execute at @e[tag=akaclone,limit=1] run tag @e[tag=akaclone,limit=1] remove akaclone
