
scoreboard players operation @s sena_calc = @s sena_nano
scoreboard players operation @s sena_calc *= #5 sena_calc

scoreboard players operation @s sena_dec = @s sena_calc
scoreboard players operation @s sena_dec %= #10 sena_calc

scoreboard players operation @s sena_calc /= #10 sena_calc


execute as @s[tag=sena_has_armor] run title @s actionbar [{"text":"Nanomachines [DISABLED]: ","color":"dark_red"},{"score":{"name":"@s","objective":"sena_calc"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"@s","objective":"sena_dec"},"color":"red"},{"text":"%","color":"red"}]

execute as @s[tag=nanomachinebreak,tag=!sena_has_armor] run title @s actionbar [{"text":"Nanomachines [BROKEN]: ","color":"dark_gray"},{"score":{"name":"@s","objective":"sena_calc"},"color":"gray"},{"text":".","color":"gray"},{"score":{"name":"@s","objective":"sena_dec"},"color":"gray"},{"text":"%","color":"gray"}]

execute as @s[tag=nanomachineconflict,tag=!nanomachinebreak,tag=!sena_has_armor] run title @s actionbar [{"text":"Nanomachines [SILENT MODE]: ","color":"blue"},{"score":{"name":"@s","objective":"sena_calc"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"@s","objective":"sena_dec"},"color":"aqua"},{"text":"%","color":"aqua"}]

execute as @s[tag=!nanomachineconflict,tag=!nanomachinebreak,tag=!sena_has_armor] run title @s actionbar [{"text":"Nanomachines: ","color":"black","bold":true},{"score":{"name":"@s","objective":"sena_calc"},"color":"dark_gray"},{"text":".","color":"dark_gray"},{"score":{"name":"@s","objective":"sena_dec"},"color":"dark_gray"},{"text":"%","color":"dark_gray"}]
