tellraw @a [{"text":"They're not your ","bold":true,"color":"dark_gray"},{"text":"Saviors","bold":true,"color":"dark_red"}]

bossbar add akaclone [{"text":"Akashiro","bold":true,"color":"dark_red"},{"text":" Clone","bold":true,"color":"dark_gray"}]
bossbar set minecraft:akaclone color red
bossbar set minecraft:akaclone max 500
bossbar set minecraft:akaclone style notched_6

bossbar add falseaka [{"text":"False","bold":true,"color":"dark_gray"},{"text":" Akashiro","bold":true,"color":"dark_red"}]
bossbar set minecraft:falseaka color red
bossbar set minecraft:falseaka max 500
bossbar set minecraft:falseaka style notched_6

scoreboard objectives add AkacloneRamTicks dummy
scoreboard objectives add AkacloneRamLoop dummy
scoreboard objectives add AkacloneLives dummy
scoreboard objectives add Akaclone dummy
scoreboard objectives add AkafireLife dummy
scoreboard objectives add AkacloneSkill dummy
scoreboard objectives add TanLives dummy
scoreboard objectives add WongkuraLives dummy
scoreboard objectives add WongcloneSkill dummy
scoreboard objectives add TancloneSkill dummy
scoreboard objectives add AkacloneProgress dummy
scoreboard objectives add AkacloneRestriction dummy
scoreboard objectives add AkafireLoop dummy
scoreboard objectives add Falseaka dummy
scoreboard objectives add FalseakaLives dummy
scoreboard objectives add FalseakaSkill dummy
scoreboard objectives add FalseAkafireLoop dummy
scoreboard objectives add FalseAkafireLife dummy
scoreboard objectives add FalseakaRamTicks dummy
scoreboard objectives add FalseakaRamLoop dummy
scoreboard objectives add LutancecloneLives dummy
scoreboard objectives add LutancecloneSkill dummy
scoreboard objectives add LisliecloneLives dummy
scoreboard objectives add LisliecloneSkill dummy
scoreboard objectives add GuncloneLives dummy
scoreboard objectives add GuncloneSkill dummy
scoreboard objectives add GuncloneRandom dummy
scoreboard objectives add FalseakaProgress dummy
scoreboard objectives add FalseAkacloneProgress dummy
scoreboard objectives add FalseAkaDeath dummy
scoreboard objectives add FalseakaDeathTimer dummy
scoreboard objectives add FalseakaSpamSkill dummy

team add noNameTag
team modify noNameTag nametagVisibility never
team add noCollision
team modify noCollision collisionRule never
team add LutanceGoon
team modify LutanceGoon friendlyFire false


scoreboard objectives add false trigger

scoreboard objectives add deceiverclick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add DecAkafireLoop dummy
scoreboard objectives add akafireduration dummy
scoreboard objectives add akafirehitduration dummy

scoreboard objectives add firecd dummy
scoreboard objectives add akafirelife dummy
scoreboard objectives add akafirecount dummy

scoreboard objectives add flamecd dummy


scoreboard objectives add disruptcd dummy
scoreboard objectives add disruptuse dummy


scoreboard objectives add ramactive dummy


scoreboard objectives add disruptwin dummy
scoreboard objectives add disruptwinui dummy

scoreboard objectives add fireui dummy
scoreboard objectives add flameui dummy
scoreboard objectives add disruptui dummy

scoreboard objectives add akaconst dummy

scoreboard players set #const20 akaconst 20