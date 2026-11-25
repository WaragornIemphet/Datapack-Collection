execute at @e[tag=maw] run effect give @a[distance=..100] blindness 2 1 true

execute at @e[tag=maw] run tp @e[tag=powp2] ^ ^1 ^5
execute at @e[tag=maw] run tp @e[tag=powpeterdown] ^ ^ ^-5

execute at @e[tag=chay2] run tp @e[tag=maw2] ^ ^ ^
execute at @e[tag=smq2] run tp @e[tag=chay2,tag=!chay_air_attack,tag=!chay_stunned] ^ ^ ^
execute at @e[tag=powp] run tp @e[tag=smq2,tag=!smqtr_air_attack] ^ ^ ^


execute at @e[tag=maw] run playsound entity.shulker.teleport voice @a[distance=..100] ^ ^ ^ 400 1 1
