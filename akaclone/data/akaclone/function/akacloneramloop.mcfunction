scoreboard players add @s AkacloneRamLoop 1

scoreboard players set world AkacloneSkill 460

effect give @e[tag=akaclone] glowing 2 0 true


execute if score @s AkacloneRamLoop matches ..5 run scoreboard players set @s AkacloneRamTicks 0


execute if score @s AkacloneRamLoop matches 6.. run tag @s remove akaclonestartram
execute if score @s AkacloneRamLoop matches 6.. run function akaclone:akacloneramclear
execute if score @s AkacloneRamLoop matches 6.. run scoreboard players reset @s AkacloneRamTicks
execute if score @s AkacloneRamLoop matches 6.. run scoreboard players reset @s AkacloneRamLoop
