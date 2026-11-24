execute store result bossbar akaclone value run data get entity @e[tag=akaclone2,limit=1] Health

execute if score world AkacloneLives matches 1 run function akaclone:akaclonefolder
execute if score world FalseakaLives matches 1 at @e[tag=falseaka] run function akaclone:falseakafolder
execute if score world FalseAkaDeath matches 1 at @e[tag=falseakadeathphase] run function akaclone:falseakadeathfolder

execute unless score world AkacloneRestriction matches 1.. run function akaclone:akaclonecheck1
execute as @e[tag=akaclonedead,limit=1] at @s run particle dust{color:[0.52,0.0,0.0],scale:2} ~ ~0.5 ~ 0.5 0.5 0.5 0.0001 2

function akaclone:akaclonecraft0

execute as @a[tag=false,limit=1] at @s if entity @s run function akaclone:deceiver/deceivertick