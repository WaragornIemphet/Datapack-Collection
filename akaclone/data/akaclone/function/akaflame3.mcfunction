execute at @a[tag=fakatarget] run summon armor_stand ~-0.5 ~1 ~19 {Invisible:1b, Marker:1b,Tags:["fakafire","fsouth"]}
execute at @a[tag=fakatarget] run summon armor_stand ~0.5 ~1 ~19 {Invisible:1b, Marker:1b,Tags:["fakafire","fsouth"]}
execute at @a[tag=fakatarget] run summon armor_stand ~ ~1 ~19 {Invisible:1b, Marker:1b,Tags:["fakafire","fsouth"]}
execute if score world FalseAkafireLoop matches ..11 run schedule function akaclone:akaflame 10t append