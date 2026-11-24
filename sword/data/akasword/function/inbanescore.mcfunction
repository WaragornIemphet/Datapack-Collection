scoreboard players add @s inbane_combohits 1
scoreboard players set @s inbane_timer 0

execute if score @s inbane_combohits matches 10.. run function akasword:inbanetrigger


execute if score @s inbane_combohits matches 1..9 run title @p[tag=current_attacker] actionbar [{"text":"Burning Verdict: ","color":"gray"},{"score":{"name":"@s","objective":"inbane_combohits"},"color":"gold"}]
