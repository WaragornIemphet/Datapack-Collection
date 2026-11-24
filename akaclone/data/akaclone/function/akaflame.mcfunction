execute at @a[tag=fakatarget] run summon armor_stand ~-10 ~1 ~0.5 {Invisible:1b, Marker:1b,Tags:["fakafire","feast"]}
execute at @a[tag=fakatarget] run summon armor_stand ~-10 ~1 ~-0.5 {Invisible:1b, Marker:1b,Tags:["fakafire","feast"]}
execute at @a[tag=fakatarget] run summon armor_stand ~-10 ~1 ~ {Invisible:1b, Marker:1b,Tags:["fakafire","feast"]}




scoreboard players add world FalseAkafireLoop 1
execute if score world FalseAkafireLoop matches 1..11 run schedule function akaclone:akaflame2 10t append

execute if score world FalseAkafireLoop matches 12.. run function akaclone:akaflamecleanup



