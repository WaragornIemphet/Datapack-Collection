execute as @e[tag=bank2,limit=1] at @p[tag=banktarget,sort=nearest] run tp @s ^ ^ ^1.25
execute as @e[tag=banktarget,limit=1] at @s run summon armor_stand ^ ^ ^ {Invisible:1b,NoBasePlate:1b,DisabledSlots:1973790,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["bankface"]}
execute at @e[tag=bankface] facing entity @a[tag=bank2,limit=1] feet run teleport @e[tag=bankface] ^ ^ ^ facing entity @e[tag=bank2,limit=1] feet
execute as @e[tag=banktarget,limit=1] at @s run effect give @s slow_falling 4 0 true
execute at @e[tag=bank,limit=1] run tellraw @a[distance=..128] [{"text":"<Bank_2013>","color":"green"},{"text":" Get back here","color":"white"}]
execute at @e[tag=bank,limit=1] run playsound ui.button.click voice @a[distance=..128] ^ ^ ^ 150 1 1
execute as @e[tag=bank2,limit=1] at @s run tag @s add bankanim


schedule function bankboss:bankundead3 0.2s