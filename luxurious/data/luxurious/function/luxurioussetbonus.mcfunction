effect give @s hero_of_the_village 2 4 false

execute as @e[type=zombie_villager,distance=..8] at @s run particle happy_villager ^ ^1 ^ 0.3 0.5 0.3 1 2 normal
execute as @e[type=zombie_villager,distance=..8] run effect give @s weakness 2 255 true
execute as @e[type=zombie_villager,distance=..8] run effect give @s slowness 2 255 true
execute as @e[type=zombie_villager,distance=..8] run effect give @s fire_resistance 2 0 true

execute as @e[type=villager,distance=..8] run effect give @s regeneration 2 2 false
