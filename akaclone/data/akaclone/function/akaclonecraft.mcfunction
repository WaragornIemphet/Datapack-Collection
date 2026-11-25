summon item ~ ~ ~ {Item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHBzOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzM4NzA4NzYxYzVhMDIxYmUwMTQ1MDk3ZDYwYzBhZWQ1MjMzNjE4NmNjN2VkNGY0MDUxNjFmYjhhNWVjNTBiOTUifX19"}]},"minecraft:custom_name":"False Savior"}}}

playsound minecraft:entity.illusioner.cast_spell voice @a[distance=..128] ~ ~ ~ 100 1 1
particle minecraft:witch ~ ~ ~ 0 0 0 0.5 50 force
execute at @e[type=item,tag=v_ingredient3,distance=..2] as @e[type=item,tag=v_ingredient3,distance=..2] run kill @s
