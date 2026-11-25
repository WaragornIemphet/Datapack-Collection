tp @e[tag=chay] @e[tag=chay2,limit=1]
tp @e[tag=smq] @e[tag=smq2,limit=1]
tp @e[tag=maw] @e[tag=maw2,limit=1]


effect give @e[tag=chay2] invisibility 1 1 true
effect give @e[tag=smq2] invisibility 1 1 true
effect give @e[tag=maw2] invisibility 1 1 true

execute store result bossbar chay value run data get entity @e[tag=chay2,limit=1] Health
execute store result bossbar smqtr value run data get entity @e[tag=smq2,limit=1] Health
execute store result bossbar mawcel value run data get entity @e[tag=maw2,limit=1] Health

execute as @a[tag=chay_bleeding] run scoreboard players remove @s ChayBleedTimer 1
execute as @a[tag=chay_bleeding,scores={ChayBleedTimer=..0}] run tag @s remove chay_bleeding
execute as @a[tag=chay_bleeding,scores={ChayBleedTimer=..0}] run scoreboard players set @s ChayBleedTimer 0

execute as @e[tag=chayaxe] at @s run tp @s ^ ^ ^0.9
execute as @e[tag=chayaxe] at @s if entity @e[tag=chay,limit=1,distance=20..] run kill @s
execute as @e[tag=chayaxe] at @s run playsound entity.horse.breathe voice @a[distance=..50] ~ ~ ~ 100 1 1
execute as @e[tag=chayaxe] at @s run particle poof ^ ^1 ^-1 0.0 1 0.0 0.001 10 force
execute as @e[tag=chayaxe] at @s if entity @p[distance=..2,tag=!chay_bleeding] run function luxurious:chayaxeimpact
execute at @a[tag=chay_bleeding] run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0 0 0 1 10 force
execute as @a[tag=chay_bleeding] at @s run effect give @s slowness 1 0 true
execute as @a[tag=chay_bleeding] at @s run damage @s 0.25 generic_kill by @e[tag=chay,limit=1]
