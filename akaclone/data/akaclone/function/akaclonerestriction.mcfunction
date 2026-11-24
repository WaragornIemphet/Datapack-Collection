clear @s ancient_debris
clear @s netherite_ingot
clear @s netherite_scrap
clear @s netherite_block

execute at @s run particle flame ~ ~1 ~ 0.5 0.5 0.5 0.2 100

execute at @s run playsound block.glass.break voice @s ~ ~ ~ 300 0.5 1

execute as @s run tellraw @a ["<",{"text":"Akashiro","bold":true,"color":"dark_red","obfuscated":true},{"text":" ","bold":true,"color":"dark_gray"},{"text":"Clone","bold":true,"color":"dark_gray","obfuscated":true},{"text":"> ","color":"white"},{"text":"You're not worthy enough for this,","color":"dark_red"},{"text":" ","color":"yellow"},{"selector":"@s","color":"yellow"}]
