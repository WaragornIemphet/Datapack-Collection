execute as @e[tag=bank2,limit=1] at @s run tp @s @p[tag=bank_cutscene] 
execute as @e[tag=bankanim] at @s run tag @s remove bankanim
execute as @e[tag=bank2,limit=1] at @s run tp @s @e[tag=bankstand,limit=1]
execute as @e[tag=bankstand,limit=1] at @s run kill @s
execute as @e[tag=bankstand1,limit=1] at @s run kill @s
execute as @e[tag=bank_cutscene] at @s run tag @s remove bank_cutscene