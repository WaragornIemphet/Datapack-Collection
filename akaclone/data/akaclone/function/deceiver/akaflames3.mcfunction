execute at @e[tag=akaflametarget,limit=15] run summon armor_stand ~-0.5 ~1 ~19 {Invisible:1b, Marker:1b,Tags:["akaflame","dsouth"]}
execute at @e[tag=akaflametarget,limit=15] run summon armor_stand ~0.5 ~1 ~19 {Invisible:1b, Marker:1b,Tags:["akaflame","dsouth"]}
execute at @e[tag=akaflametarget,limit=15] run summon armor_stand ~ ~1 ~19 {Invisible:1b, Marker:1b,Tags:["akaflame","dsouth"]}
execute if score world DecAkafireLoop matches ..11 run schedule function akaclone:deceiver/akaflames 10t append
scoreboard players set @a[tag=false,limit=1] flamecd 1200