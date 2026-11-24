execute at @e[tag=akaflametarget,limit=15] run summon armor_stand ~-10 ~1 ~0.5 {Invisible:1b, Marker:1b,Tags:["akaflame","deast"]}
execute at @e[tag=akaflametarget,limit=15] run summon armor_stand ~-10 ~1 ~-0.5 {Invisible:1b, Marker:1b,Tags:["akaflame","deast"]}
execute at @e[tag=akaflametarget,limit=15] run summon armor_stand ~-10 ~1 ~ {Invisible:1b, Marker:1b,Tags:["akaflame","deast"]}

scoreboard players set @a[tag=false,limit=1] flamecd 1200


scoreboard players add world DecAkafireLoop 1
execute if score world DecAkafireLoop matches 1..11 run schedule function akaclone:deceiver/akaflames2 10t append

execute if score world DecAkafireLoop matches 12.. run function akaclone:deceiver/akaflamescleanup



