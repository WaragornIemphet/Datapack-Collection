# 1. Deal damage (1 damage per tick = 20 damage per second)
damage @s 125 minecraft:magic
effect give @s glowing 1 2 true
effect give @s levitation 1 2 true
effect give @s mining_fatigue 30 10 true
effect give @s weakness 30 10 true
effect give @s slowness 30 1 true
effect give @s hunger 30 10 true


# 2. Visuals (Flame and light effects following the mob)

execute if entity @s run particle minecraft:dust_color_transition{from_color:[1.0,0.94,0.38],to_color:[1.0,1.0,1.0],scale:2} ~ ~1 ~ 0.2 0.5 0.2 0.1 2
particle dust_color_transition{from_color:[1.0,0.94,0.38],to_color:[1.0,1.0,1.0],scale:4} ^ ^3 ^ 0.75 20 0.75 0.01 1000
particle end_rod ^ ^3 ^ 0.5 20 0.5 0.01 300

# 3. Sound (Sizzling sound)

playsound minecraft:item.totem.use voice @a[distance=..100] ~ ~ ~ 300 0.5 1
# 4. Countdown the timer
scoreboard players remove @s ult_timer 1

# 5. Cleanup when finished
execute if score @s ult_timer matches 0 run tag @s remove current_victim
