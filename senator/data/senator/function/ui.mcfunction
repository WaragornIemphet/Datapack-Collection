# --- senator:ui ---

# Math: (Score * 5) / 10 = Whole Number || (Score * 5) % 10 = Decimal
scoreboard players operation @s sena_calc = @s sena_nano
scoreboard players operation @s sena_calc *= #5 sena_calc

scoreboard players operation @s sena_dec = @s sena_calc
scoreboard players operation @s sena_dec %= #10 sena_calc

scoreboard players operation @s sena_calc /= #10 sena_calc

# --- Display logic based on state ---

# 1. Disabled State - Wearing armor or holding totem (Priority 1)
# I used red/dark_red here to make it feel "locked/disabled", but you can change the colors!
execute as @s[tag=sena_has_armor] run title @s actionbar [{"text":"Nanomachines [DISABLED]: ","color":"dark_red"},{"score":{"name":"@s","objective":"sena_calc"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"@s","objective":"sena_dec"},"color":"red"},{"text":"%","color":"red"}]

# 2. Broken State - Hit 0% (Priority 2)
execute as @s[tag=nanomachinebreak,tag=!sena_has_armor] run title @s actionbar [{"text":"Nanomachines [BROKEN]: ","color":"dark_gray"},{"score":{"name":"@s","objective":"sena_calc"},"color":"gray"},{"text":".","color":"gray"},{"score":{"name":"@s","objective":"sena_dec"},"color":"gray"},{"text":"%","color":"gray"}]

# 3. Silent Mode - Holding an item (Priority 3)
execute as @s[tag=nanomachineconflict,tag=!nanomachinebreak,tag=!sena_has_armor] run title @s actionbar [{"text":"Nanomachines [SILENT MODE]: ","color":"blue"},{"score":{"name":"@s","objective":"sena_calc"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"@s","objective":"sena_dec"},"color":"aqua"},{"text":"%","color":"aqua"}]

# 4. Normal State (Priority 4)
execute as @s[tag=!nanomachineconflict,tag=!nanomachinebreak,tag=!sena_has_armor] run title @s actionbar [{"text":"Nanomachines: ","color":"black","bold":true},{"score":{"name":"@s","objective":"sena_calc"},"color":"dark_gray"},{"text":".","color":"dark_gray"},{"score":{"name":"@s","objective":"sena_dec"},"color":"dark_gray"},{"text":"%","color":"dark_gray"}]