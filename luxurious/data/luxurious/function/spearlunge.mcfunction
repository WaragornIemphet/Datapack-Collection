# 1. Lock eyes with the nearest player
execute at @s run tp @s ~ ~ ~ facing entity @p eyes

# 2. Play the sound (This plays no matter what to scare the player)
execute at @s if entity @s[x_rotation=..60] run playsound item.spear.lunge_3 voice @a[distance=..50] ~ ~ ~ 160 1 1

# 3. If Chay is NOT looking steeply downward (Pitch is 60 or less), do the 10-block dash!
execute at @s if entity @s[x_rotation=..60] run tp @s ^ ^10 ^10 ~ ~

# 4. Trail particles only if the dash actually happened
execute at @s if entity @s[x_rotation=..60] run particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 3 normal