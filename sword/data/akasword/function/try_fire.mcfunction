# Fire if stage is 3 (Full)
execute if score @s musket_stage matches 3 run function akasword:fire_bullet

# Feedback if not loaded
execute if score @s musket_stage matches ..2 run title @s actionbar {"text":"Hold [Sneak] to load ingredients in-order","color":"yellow"}
