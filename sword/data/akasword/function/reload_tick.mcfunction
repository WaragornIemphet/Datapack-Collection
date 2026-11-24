scoreboard players remove @s musket_timer 1

# Particle effect to show they are busy reloading
particle minecraft:smoke ^ ^0.5 ^0.5 0.1 0.1 0.1 0.02 2
title @s actionbar {"text":"Reloading...","color":"yellow"}

# Complete when timer reaches 0
execute if score @s musket_timer matches 0 run function akasword:reload_complete
