execute at @e[tag=akaflametarget,limit=15] run summon armor_stand ~0.5 ~1 ~-16 {Invisible:1b, Marker:1b,Tags:["akaflame","dnorth"]}
execute at @e[tag=akaflametarget,limit=15] run summon armor_stand ~-0.5 ~1 ~-16 {Invisible:1b, Marker:1b,Tags:["akaflame","dnorth"]}
execute at @e[tag=akaflametarget,limit=15] run summon armor_stand ~ ~1 ~-16 {Invisible:1b, Marker:1b,Tags:["akaflame","dnorth"]}
schedule function akaclone:deceiver/akaflames1 10t append
scoreboard players set @a[tag=false,limit=1] flamecd 1200