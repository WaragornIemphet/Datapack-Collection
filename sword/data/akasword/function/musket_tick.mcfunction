# If a player holds the musket but has NO stage score, set defaults to 0
execute as @a[scores={use_musket=1..}] if items entity @s weapon.mainhand *[custom_data~{musket:1}] at @s unless score @s musket_stage matches 0.. run scoreboard players set @s musket_stage 0

# If a player holds the musket but has NO timer score, set defaults to 0
execute as @a[scores={use_musket=1..}] if items entity @s weapon.mainhand *[custom_data~{musket:1}] at @s unless score @s musket_timer matches 0.. run scoreboard players set @s musket_timer 0


# --- FIRING ---
# Triggered when a player "clicks" (uses) the carrot_on_a_stick
execute as @a[scores={use_musket=1..}] if items entity @s weapon.mainhand *[custom_data~{musket:1}] at @s run function akasword:try_fire

# --- RELOAD TRIGGER ---
# Starts the 3-second timer if sneaking, not already reloading, and holding the musket
execute as @a[scores={musket_timer=0,musket_stage=..2},predicate=akasword:is_sneaking] if items entity @s weapon.mainhand *[custom_data~{musket:1}] at @s run function akasword:reload_start

# --- SAFETY CHECK ---
# If a player is mid-reload but switches to a different item, reset their timer
execute as @a[scores={musket_timer=1..}] unless items entity @s weapon.mainhand *[custom_data~{musket:1}] at @s run scoreboard players set @s musket_timer 0

# --- TIMER PROGRESS ---
execute as @a[scores={musket_timer=1..}] at @s run function akasword:reload_tick

# Reset the click detection
scoreboard players set @a use_musket 0

# Run the bullet physics for all active bullets
execute as @e[type=armor_stand, tag=akasword.bullet] at @s run function akasword:bullet_tick