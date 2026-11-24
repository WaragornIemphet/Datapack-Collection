scoreboard players add world BankSpawn 1
execute if score world BankSpawn matches 143970 run kill @e[tag=bankspawnarmorstand]

execute if score world BankSpawn matches 144000 run execute at @a[limit=1,sort=random] run summon armor_stand ^200 ^200 ^50 {Invisible:1b,DisabledSlots:4144959,Health:1000,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["bankspawnarmorstand"],attributes:[{id:max_health,base:1000f}]}

execute at @e[tag=bankspawnarmorstand] run particle minecraft:mycelium ^ ^1 ^ 0.3 1 0.3 0.2 1 normal
execute at @e[tag=spawnbank] run particle minecraft:enchant ^ ^1 ^ 0.3 1 0.3 0.2 20 normal




















execute if score world BankSpawn matches 145000.. run scoreboard players set world BankSpawn 0


