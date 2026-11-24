tag @s add powp2_air_attack
scoreboard players add world PowpeterSkill 1
# Update his locked-state effects to 7 seconds
effect give @s slowness 7 255 true
effect give @s weakness 7 255 true
effect give @s jump_boost 7 250 true

# Set the overall skill timer to 140 ticks (7 seconds)
scoreboard players set @s Powp2SkillTimer 140

# Lift Off! (Levitation level 5 for 3 seconds)
effect give @s levitation 1 30 true

# Jump VFX & SFX
particle minecraft:gust_emitter_large ~ ~ ~ 0.5 0.5 0.5 0 1
playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ 2 1