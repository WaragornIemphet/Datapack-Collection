# 1. Remove the active stance tag
tag @s remove akasword_counter_active

# 2. Apply the "Fail" Cooldown: 10 seconds (200 Ticks)
scoreboard players set @s akasword_cd 200

# 3. Clean up damage tracking scores to prevent glitches
scoreboard players set @s akasword_dmg_taken 0
scoreboard players set @s akasword_dmg_resisted 0
scoreboard players set @s akasword_dmg_absorbed 0

# 4. Feedback
playsound minecraft:block.fire.extinguish player @a[distance=..64] ~ ~ ~ 0.5 2
