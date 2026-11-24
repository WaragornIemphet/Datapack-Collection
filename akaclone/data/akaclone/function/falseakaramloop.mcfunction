scoreboard players add @s FalseakaRamLoop 1

scoreboard players set world FalseakaSkill 460

effect give @e[tag=falseaka] glowing 2 0 true


execute if score @s FalseakaRamLoop matches ..7 run scoreboard players set @s FalseakaRamTicks 0


execute if score @s FalseakaRamLoop matches 8.. run tag @s remove falseakastartram
execute if score @s FalseakaRamLoop matches 8.. run function akaclone:falseakaramclear
execute if score @s FalseakaRamLoop matches 8.. run scoreboard players reset @s FalseakaRamTicks
execute if score @s FalseakaRamLoop matches 8.. run scoreboard players reset @s FalseakaRamLoop
