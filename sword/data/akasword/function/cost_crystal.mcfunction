clear @s amethyst_shard[item_model="syn:mana"] 5
effect give @a[distance=..5] instant_health 1 0
particle minecraft:wax_on ~ ~1 ~ 0.5 0.5 0.5 1 50
playsound minecraft:entity.illusioner.cast_spell master @s ~ ~ ~ 1 1
# APPLY 5 SECOND COOLDOWN (100 Ticks)
scoreboard players set @s healstaff_cd 100
# Mark cast as successful so XP isn't taken
scoreboard players set @s used_healstaff 0
