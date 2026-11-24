scoreboard players add @s emeraldcombo 1

execute if score @s emeraldcombo matches 3.. run function luxurious:emeraldswordburst


execute if score @s emeraldcombo matches 1..2 run title @p[tag=emeraldsworduser] actionbar [{"text":"Luxurious's Extract: ","color":"green"},{"score":{"name":"@s","objective":"emeraldcombo"},"color":"blue"}]
