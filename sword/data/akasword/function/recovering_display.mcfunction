scoreboard players operation @s akasword_ui_slot = @s akasword_slot_cd
scoreboard players add @s akasword_ui_slot 19
scoreboard players operation @s akasword_ui_slot /= #const20 akasword_const


execute if entity @s[tag=akasword_rolling] run title @s actionbar [{"text":"[ ","color":"dark_gray"},{"text":"ROLLING...","color":"yellow","bold":true},{"text":" ]","color":"dark_gray"}]

execute if score @s akasword_slot_cd matches 1.. unless entity @s[tag=akasword_rolling] run title @s actionbar [{"text":"[ ","color":"dark_gray"},{"text":"Jackpot: ","color":"red"},{"score":{"name":"@s","objective":"akasword_ui_slot"},"color":"red"},{"text":"s","color":"red"},{"text":" ]","color":"dark_gray"}]

execute if score @s akasword_slot_cd matches 0 unless entity @s[tag=akasword_rolling] run title @s actionbar [{"text":"[ ","color":"dark_gray"},{"text":"Jackpot: ","color":"gold"},{"text":"READY","color":"green","bold":true},{"text":" ]","color":"dark_gray"}]
