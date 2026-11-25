execute at @a[tag=fakatarget] run summon armor_stand ~0.5 ~1 ~-16 {Invisible:1b, Marker:1b,Tags:["fakafire","fnorth"]}
execute at @a[tag=fakatarget] run summon armor_stand ~-0.5 ~1 ~-16 {Invisible:1b, Marker:1b,Tags:["fakafire","fnorth"]}
execute at @a[tag=fakatarget] run summon armor_stand ~ ~1 ~-16 {Invisible:1b, Marker:1b,Tags:["fakafire","fnorth"]}
schedule function akaclone:akaflame1 10t append
