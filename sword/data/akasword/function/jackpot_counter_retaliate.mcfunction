# 1. End the Stance (Optional)
# Set active timer to 0 so the shield drops immediately after countering.
# If you want them to STAY invincible, remove this line.
scoreboard players set @s akasword_cnt_active 0
scoreboard players add @a[tag=luckybastard] jackpot_skill_uses 1
# 2. Explosion Visuals
execute at @e[tag=luckybastard] run playsound minecraft:block.iron_door.open voice @a[distance=..60] ~ ~ ~ 100 0.8
execute at @e[tag=luckybastard] run playsound minecraft:block.iron_door.close voice @a[distance=..60] ~ ~ ~ 100 0.8
execute at @e[tag=luckybastard] run playsound minecraft:block.copper_door.open voice @a[distance=..60] ~ ~ ~ 100 0.5
execute at @e[tag=luckybastard] run playsound minecraft:block.copper_door.open voice @a[distance=..60] ~ ~ ~ 100 0.5
execute at @e[tag=luckybastard] run playsound minecraft:block.anvil.land voice @a[distance=..60] ~ ~ ~ 100 0.5
execute at @e[tag=luckybastard] run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1
execute at @e[tag=luckybastard] run particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1

# 3. Area Damage
# 20 Damage (10 Hearts) to everything within 6 blocks
execute at @s run tag @e[type=!armor_stand,type=!mannequin,type=!item,type=!experience_orb,distance=..12,limit=1,sort=nearest,tag=!luckybastard] add jackpot_counter_target
execute as @e[tag=jackpot_counter_target] at @s run effect give @s slowness 2 255 true
execute as @e[tag=jackpot_counter_target] at @s run effect give @s weakness 2 255 true
execute as @e[tag=jackpot_counter_target] at @s run effect give @s mining_fatigue 2 255 true
execute as @e[tag=jackpot_counter_target] at @s run damage @s 25 player_attack by @a[tag=luckybastard,limit=1]

# 4. Knockback
# Push enemies away violently

# 5. Feedback & Reward
effect give @s minecraft:instant_health 1 1 true

execute as @e[tag=jackpot_counter_target] run tag @s remove jackpot_counter_target