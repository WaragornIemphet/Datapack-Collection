execute if score world AkacloneRestriction matches 1 run execute as @p at @e[tag=akaclonedead,limit=1] run function akaclone:falseaka
execute at @e[tag=akaclonedead] run particle minecraft:witch ~ ~1 ~ 0.5 1 0.5 0.1 200 force
execute at @e[tag=akaclonedead] run playsound minecraft:entity.illusioner.cast_spell voice @a[distance=..128] ~ ~ ~ 100 1 1
execute unless score world AkacloneRestriction matches 1 run execute at @e[tag=akaclonedead,limit=1] run give @a[distance=..128,sort=nearest,limit=4] netherite_ingot
execute unless score world AkacloneRestriction matches 1 run execute at @e[tag=akaclonedead,limit=1] run give @a[distance=..128] ancient_debris 3
execute as @e[tag=akaclonedead,limit=1] at @s run kill @s
scoreboard players set world AkacloneRestriction 1
