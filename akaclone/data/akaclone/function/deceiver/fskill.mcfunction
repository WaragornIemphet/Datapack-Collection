item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air

execute if score @s flamecd matches 1.. run return 0

execute if entity @e[tag=akaflametarget] run function akaclone:deceiver/akaflames

execute unless entity @e[tag=akaflametarget] run function akaclone:deceiver/ram
