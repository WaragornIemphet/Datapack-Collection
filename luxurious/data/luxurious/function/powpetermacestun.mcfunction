# 1. Clean up old states
tag @s remove powp2_air_attack
tag @s remove powp2_landed

# 2. Enter stun state
tag @s add powp2_stunned
scoreboard players set @s Powp2StunTimer 100

# 3. Apply the Stun Debuffs
data merge entity @s {NoAI:1b}
tp @s ^ ^-0.15 ^

# 4. Play the initial heavy impact sound
execute at @s as @a[distance=..50] run playsound minecraft:entity.iron_golem.damage master @a ~ ~ ~ 160 0.6
execute at @s as @a[distance=..50] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 170 0.9