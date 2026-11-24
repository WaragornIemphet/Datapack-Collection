execute if entity @p[distance=..1.6] run damage @p 12 minecraft:magic by @s

execute if entity @p[distance=..1.6] run playsound minecraft:entity.generic.explode voice @a[distance=..20] ~ ~ ~ 100 1.4
execute if entity @p[distance=..1.6] run particle minecraft:witch ^ ^ ^ 0.2 0.2 0.2 0 10
execute if entity @p[distance=..1.6] run particle minecraft:explosion ^ ^1 ^ 0.2 0.2 0.2 0 1

execute if entity @p[distance=..1.6] run kill @s
