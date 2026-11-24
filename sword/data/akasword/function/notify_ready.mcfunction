playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 2
title @s actionbar {"text":"Ready","color":"green"}
# Set to -1 so this notification doesn't run again next tick
scoreboard players set @s healstaff_cd -1
