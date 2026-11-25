tag @s add beano

summon armor_stand ~ ~ ~ {Tags:["beano_anchor","new_anchor"],CustomName:{"text":"BEANO T-13"},Team:noCollision,Invisible:1b,Small:1b,ShowArms:0b,NoBasePlate:1b,NoGravity:1b,Marker:1b}

ride @e[type=armor_stand,tag=new_anchor,limit=1] mount @s

tag @e[tag=new_anchor] remove new_anchor
