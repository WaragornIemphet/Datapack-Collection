# Lock the snowball so it doesn't run this again
tag @s add beano

# Summon the named anchor (Duration 1200 ensures it naturally dies after 1 min if it glitches)
summon armor_stand ~ ~ ~ {Tags:["beano_anchor","new_anchor"],CustomName:{"text":"BEANO T-13"},Team:noCollision,Invisible:1b,Small:1b,ShowArms:0b,NoBasePlate:1b,NoGravity:1b,Marker:1b}

# Force the anchor to ride the snowball
ride @e[type=armor_stand,tag=new_anchor,limit=1] mount @s

# Clean up the temporary tag
tag @e[tag=new_anchor] remove new_anchor