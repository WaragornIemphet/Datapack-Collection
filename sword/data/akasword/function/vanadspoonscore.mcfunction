# --- NEW: Tag this mob as the active victim for the Ultimate ---
tag @s add current_bonk

# --- Existing Score Logic ---
scoreboard players add @s vanad_combohits 1

# Check for the 10-hit explosion
execute if score @s vanad_combohits matches 3.. run function akasword:vanadspoontrigger

# Feedback to the player (if below 10 hits)
execute if score @s vanad_combohits matches 1..2 run title @p[tag=current_bonker] actionbar [{"text":"Blunt Damage: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"vanad_combohits"},"color":"aqua"}]
