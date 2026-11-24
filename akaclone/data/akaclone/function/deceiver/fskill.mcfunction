# 1. Move the Deceiver item back to the main hand, then clear the offhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air

# 2. If the skill is on cooldown, stop the function right here
execute if score @s flamecd matches 1.. run return 0

# 3. [ WITH TARGET ]: Target exists -> Akaflames
execute if entity @e[tag=akaflametarget] run function akaclone:deceiver/akaflames

# 4. [ NO TARGET ]: No target exists -> Ram
execute unless entity @e[tag=akaflametarget] run function akaclone:deceiver/ram