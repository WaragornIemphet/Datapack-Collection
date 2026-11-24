# 1. Teleport Enemies (20 blocks UP and 20 blocks BACK from Owner)
execute as @a[tag=!speed_owner] at @s run tp @s ^ ^20 ^-20

# 2. Apply Random Debuffs to Victims
execute as @e[tag=!speed_owner,type=!armor_stand,type=!item,type=!mannequin,type=!item_frame,type=!glow_item_frame,type=!villager,type=!cat,type=!wolf,type=!happy_ghast,type=!horse,type=!skeleton_horse,type=!fox] at @s run function akasword:apply_random_debuff

kill @e[type=silverfish]
kill @e[name="Cool Cock Clan"]
kill @e[name="Cool Cock Clone"]
kill @e[tag=kra2]
kill @e[tag=tan2]
kill @e[tag=gunclone2]
kill @e[tag=lislieclone2]
kill @e[tag=lutanclone2]
kill @e[tag=falseakaclone2]
kill @e[tag=falseakaclone21]
kill @e[tag=wguard]
kill @e[tag=sac]
kill @e[tag=sui]
kill @e[tag=country2]
kill @e[tag=joorshadow]
kill @e[tag=argent]
kill @e[tag=aim2]
kill @e[tag=acorn2]
kill @e[tag=gun2]
kill @e[tag=gord2]
kill @e[tag=twilighthitbox]
kill @e[tag=bruhbaboodhitbox]
kill @e[tag=villhatzehitbox]
kill @e[tag=thumbsoldato]
kill @e[tag=middlefinger]

execute as @e[type=tropical_fish] at @s run effect give @s levitation 600 1 true
execute as @e[type=pufferfish] at @s run effect give @s levitation 600 1 true
execute as @e[type=cod] at @s run effect give @s levitation 600 1 true
execute as @e[type=salmon] at @s run effect give @s levitation 600 1 true
execute as @e[type=guardian] at @s run effect give @s levitation 600 1 true
execute as @e[type=elder_guardian] at @s run effect give @s levitation 600 1 true
execute as @e[type=tadpole] at @s run effect give @s levitation 600 1 true
execute as @e[type=squid] at @s run effect give @s levitation 600 1 true
execute as @e[type=glow_squid] at @s run effect give @s levitation 600 1 true
execute as @e[type=drowned] at @s run effect give @s levitation 600 1 true
execute as @e[type=dolphin] at @s run effect give @s levitation 600 1 true
execute as @e[type=turtle] at @s run effect give @s levitation 600 1 true
execute as @e[type=strider] at @s run effect give @s levitation 600 1 true
execute as @e[type=wither] at @s run effect give @s levitation 600 1 true
execute as @e[type=slime] at @s run effect give @s levitation 600 1 true
execute as @e[type=wither_skeleton] at @s run effect give @s levitation 600 1 true

schedule function akasword:stopsongmih 8s
effect clear @a[tag=speed_owner]
# 3. Reset System
scoreboard players set @s mih_accel_seq 0
scoreboard players set @s mih_accel_stage 0
scoreboard players set @s mih_ult_cd 20000
title @a times 10 60 20
title @a title {"text":"WORLD RESET","color":"gold","bold":true}



