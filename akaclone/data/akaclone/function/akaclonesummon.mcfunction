item replace entity @s weapon.offhand with air
execute at @s run function akaclone:akaclone
execute at @e[tag=akaclone,limit=1] as @a[distance=..128] run title @s actionbar [{"text":"Sacrifices have to be made","color":"dark_red"}]