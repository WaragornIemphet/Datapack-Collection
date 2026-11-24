execute at @a[tag=akatarget] run summon armor_stand ~-10 ~0.5 ~ {Invisible:1b, Marker:1b,Tags:["akafire","east"]}
execute at @a[tag=akatarget] run summon armor_stand ~15 ~0.5 ~2.5 {Invisible:1b, Marker:1b,Tags:["akafire","west"]}
execute at @a[tag=akatarget] run summon armor_stand ~10 ~0.5 ~4 {Invisible:1b, Marker:1b,Tags:["akafire","west"]}
execute at @a[tag=akatarget] run summon armor_stand ~-15 ~0.5 ~-2.5 {Invisible:1b, Marker:1b,Tags:["akafire","east"]}
execute at @a[tag=akatarget] run summon armor_stand ~-9 ~0.5 ~-10 {Invisible:1b, Marker:1b,Tags:["akafire","east"]}
execute at @a[tag=akatarget] run summon armor_stand ~18 ~0.5 ~15 {Invisible:1b, Marker:1b,Tags:["akafire","west"]}
execute at @a[tag=akatarget] run summon armor_stand ~10 ~0.5 ~10 {Invisible:1b, Marker:1b,Tags:["akafire","west"]}
execute at @a[tag=akatarget] run summon armor_stand ~-16 ~0.5 ~-15 {Invisible:1b, Marker:1b,Tags:["akafire","east"]}
execute at @a[tag=akatarget] run summon armor_stand ~-13 ~ ~2 {Invisible:1b, Marker:1b,Tags:["akafire","east"]}
execute at @a[tag=akatarget] run summon armor_stand ~15 ~1 ~3 {Invisible:1b, Marker:1b,Tags:["akafire","west"]}
execute at @a[tag=akatarget] run summon armor_stand ~13 ~-1 ~4 {Invisible:1b, Marker:1b,Tags:["akafire","west"]}
execute at @a[tag=akatarget] run summon armor_stand ~-15 ~3 ~-3.5 {Invisible:1b, Marker:1b,Tags:["akafire","east"]}
execute at @a[tag=akatarget] run summon armor_stand ~-11 ~-2 ~-10 {Invisible:1b, Marker:1b,Tags:["akafire","east"]}
execute at @a[tag=akatarget] run summon armor_stand ~15 ~1.5 ~13 {Invisible:1b, Marker:1b,Tags:["akafire","west"]}
execute at @a[tag=akatarget] run summon armor_stand ~10 ~1 ~10 {Invisible:1b, Marker:1b,Tags:["akafire","west"]}
execute at @a[tag=akatarget] run summon armor_stand ~-15 ~ ~-15 {Invisible:1b, Marker:1b,Tags:["akafire","east"]}
execute at @a[tag=akatarget] run summon armor_stand ~14 ~0.2 ~-4 {Invisible:1b, Marker:1b,Tags:["akafire","west"]}
execute at @a[tag=akatarget] run summon armor_stand ~-11 ~0.2 ~5 {Invisible:1b, Marker:1b,Tags:["akafire","east"]}

scoreboard players add world AkafireLoop 1

execute if score world AkafireLoop matches ..11 run schedule function akaclone:akafire 20t append

execute if score world AkafireLoop matches 12.. run function akaclone:akafirecleanup

