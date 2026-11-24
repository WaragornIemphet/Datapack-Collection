execute at @e[tag=door_root] run tp @e[tag=!luckybastard,type=!armor_stand,type=!item,distance=..3] ^ ^1 ^
execute at @e[tag=door_root] as @e[tag=!luckybastard,type=!armor_stand,type=!item,distance=..3] run damage @s 25 minecraft:generic by @a[tag=luckybastard,limit=1]
execute at @e[tag=door_root] run effect give @e[tag=!luckybastard,type=!armor_stand,type=!item,distance=..3] minecraft:slowness 4 255 true
execute at @e[tag=door_root] run effect give @e[tag=!luckybastard,type=!armor_stand,type=!item,distance=..3] minecraft:weakness 4 255 true

execute as @a[tag=luckybastard] at @s run tp @s ^ ^ ^-1