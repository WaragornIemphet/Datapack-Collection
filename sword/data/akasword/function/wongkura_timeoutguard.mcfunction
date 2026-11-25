tag @s remove akasword_counter_active

scoreboard players set @s akasword_cd 200

scoreboard players set @s akasword_dmg_taken 0
scoreboard players set @s akasword_dmg_resisted 0
scoreboard players set @s akasword_dmg_absorbed 0

playsound minecraft:block.fire.extinguish player @a[distance=..64] ~ ~ ~ 0.5 2
