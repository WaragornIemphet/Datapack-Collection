execute at @e[tag=akaflametarget,limit=15] run summon armor_stand ~13 ~1 ~-0.5 {Invisible:1b, Marker:1b,Tags:["akaflame","dwest"]}
execute at @e[tag=akaflametarget,limit=15] run summon armor_stand ~13 ~1 ~0.5 {Invisible:1b, Marker:1b,Tags:["akaflame","dwest"]}
execute at @e[tag=akaflametarget,limit=15] run summon armor_stand ~13 ~1 ~ {Invisible:1b, Marker:1b,Tags:["akaflame","dwest"]}
schedule function akaclone:deceiver/akaflames3 10t append
scoreboard players set @a[tag=false,limit=1] flamecd 1200
