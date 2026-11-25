tag @s add current_bonk

scoreboard players add @s vanad_combohits 1

execute if score @s vanad_combohits matches 3.. run function akasword:vanadspoontrigger

execute if score @s vanad_combohits matches 1..2 run title @p[tag=current_bonker] actionbar [{"text":"Blunt Damage: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"vanad_combohits"},"color":"aqua"}]
