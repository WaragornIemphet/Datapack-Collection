# Add 1 tick to the firing timer
scoreboard players add @s trap_timer 1

# Fire a shot every 5 ticks
execute if score @s trap_timer matches 10.. run function akasword:strategist/trap_fire_shot