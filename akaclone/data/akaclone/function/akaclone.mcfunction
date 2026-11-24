kill @e[tag=akaclone]
kill @e[tag=akaclone2]
kill @e[tag=sac]
tp @e[tag=kra2] ^ ^-200 ^
tp @e[tag=tan2] ^ ^-200 ^
bossbar set akaclone players
stopsound @a voice minecraft:music_disc.raw__unfiltered_calamity4
scoreboard players set world AkacloneSkill 0

summon armor_stand ~ ~3 ~ {Invisible:1b,NoBasePlate:1b,CustomName:["",{text:Akashiro,bold:true,color:dark_red},{text:" ",bold:true},{text:Clone,bold:true,color:dark_gray}],CustomNameVisible:1b,Health:300,Invulnerable:1b,Tags:["akaclone"],equipment:{head:{id:player_head,components:{profile:{properties:[{value:"ewogICJ0aW1lc3RhbXAiIDogMTc3MzE0ODA2NDE0NiwKICAicHJvZmlsZUlkIiA6ICI5OGQxYTQyNmRlMmU0NjBkYjdjNWExMmY5MGNhODg0OSIsCiAgInByb2ZpbGVOYW1lIiA6ICJLdWJpbm9TSyIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8zODcwODc2MWM1YTAyMWJlMDE0NTA5N2Q2MGMwYWVkNTIzMzYxODZjYzdlZDRmNDA1MTYxZmI4YTVlYzUwYjk1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0=",name:textures}]}},count:1}},drop_chances:{head:0f},attributes:[{id:max_health,base:300f}]}
summon vex ~ ~3 ~ {CustomName:["",{text:Akashiro,bold:true,color:dark_red},{text:" ",bold:true},{text:Clone,bold:true,color:dark_gray}],Health:500,PersistenceRequired:1b,Silent:1b,Tags:["akaclone2"],equipment:{mainhand:{id:polished_blackstone_button,components:{enchantments:{fire_aspect:10},tooltip_display:{hidden_components:[enchantments]}},count:1}},drop_chances:{mainhand:0f},attributes:[{id:scale,base:2.5f},{id:armor_toughness,base:5f},{id:attack_damage,base:15f},{id:follow_range,base:128f},{id:knockback_resistance,base:1f},{id:max_health,base:500f}]}
bossbar set minecraft:akaclone players @a[distance=..128]
scoreboard players set world AkacloneLives 1
execute as @e[tag=akaclone2,limit=1] at @s run function akaclone:akacloneloop
schedule function akaclone:startakaclone 22s
tellraw @a ["",{"text":"Akashiro","bold":true,"color":"dark_red"},{"text":" ","bold":true},{"text":"Clone ","bold":true,"color":"dark_gray"},{"text":"has been awoken by ","color":"gray"},{"selector":"@s","color":"gray"},{"text":" !","color":"gray"}]