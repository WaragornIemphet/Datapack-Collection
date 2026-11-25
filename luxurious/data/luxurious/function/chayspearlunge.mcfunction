execute at @s run tp @s ~ ~ ~ facing entity @p eyes

execute at @s if entity @s[x_rotation=..60] run playsound item.spear.lunge_3 voice @a[distance=..50] ~ ~ ~ 160 1 1

execute at @s if entity @s[x_rotation=..60] run tp @s ^ ^10 ^10 ~ ~

execute at @s if entity @s[x_rotation=..60] run particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 3 normal
