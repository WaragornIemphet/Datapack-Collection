tellraw @a [{"text":"CCOUNTRYY","color":"blue"},{"text":" has been awoken by ","color":"gray"},{"selector":"@s","color":"gray"},{"text":" !","color":"gray"}]
scoreboard players set world CountryLives 1
summon mannequin ~ ~1 ~ {profile:CCOUNTRYY,hide_description:1b,CustomName:[{"text":"CCOUNTRYY","color":"blue"}],CustomNameVisible:1b,Health:350,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:[country],Team:noCollision,attributes:[{id:max_health,base:350f}]}
summon husk ~ ~ ~ {Tags:[country2],Health:350f,DrownedConversionTime:-1b,Silent:1b,PersistenceRequired:1b,CustomName:[{"text":"CCOUNTRYY","color":"blue"}],attributes:[{id:max_health,base:350f},{id:scale,base:1.22f},{id:armor,base:6}]}
function country:countryloop
scoreboard players set world CountrySKill 300
