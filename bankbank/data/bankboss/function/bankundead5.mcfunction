execute as @e[tag=bankface] at @s run kill @s
execute as @e[tag=banktarget] at @s run tag @s remove banktarget
execute at @e[tag=bankanim] at @s run tag @s remove bankanim
execute as @e[tag=bank2] at @e[tag=bankstand] run tp @s[tag=bank2] ^ ^1 ^
execute as @e[tag=bankstand] at @s run kill @s
