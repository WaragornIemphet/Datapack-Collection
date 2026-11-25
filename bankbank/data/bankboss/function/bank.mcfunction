kill @e[tag=bank]
kill @e[tag=bank2]
tag @a remove bank_cutscene
tag @a remove bankfighter
kill @e[tag=bankstand]
kill @e[tag=bankstand1]
kill @e[tag=bankshotslayer]

bossbar set bank players

scoreboard players set world BankLives 0
scoreboard players set world BankSkill 0
scoreboard players set world BankSkill2 0
schedule clear bankboss:bankloop
schedule clear bankboss:bankp1loop
schedule clear bankboss:bankp2loop
schedule clear bankboss:bankp3loop

execute at @e[tag=spawnbank,limit=1,sort=nearest] run particle portal ^ ^1 ^ 1 1 1 0.1 80 normal
execute at @e[tag=spawnbank,limit=1,sort=nearest] run playsound block.portal.travel voice @a ~ ~ ~ 300 1.5 1 
execute at @e[tag=spawnbank,limit=1,sort=nearest] run summon mannequin ~ ~ ~ {profile:Bank_2013,hide_description:1b,CustomName:[{text:Bank_2013,color:green}],CustomNameVisible:1b,Health:300,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:["bank"],equipment:{mainhand:{id:netherite_sword,components:{enchantments:{sharpness:1}},count:1},head:{id:netherite_helmet,components:{trim:{pattern:bolt,material:gold},enchantments:{protection:4},unbreakable:{}},count:1},chest:{id:netherite_chestplate,components:{trim:{pattern:coast,material:gold},enchantments:{protection:4},unbreakable:{}},count:1},legs:{id:netherite_leggings,components:{trim:{pattern:tide,material:gold},enchantments:{protection:4},unbreakable:{}},count:1},feet:{id:netherite_boots,components:{trim:{pattern:flow,material:gold},enchantments:{protection:4},unbreakable:{}},count:1}},drop_chances:{mainhand:0f,head:0f,chest:0f,legs:0f},attributes:[{id:max_health,base:300f}]}
execute at @e[tag=spawnbank,limit=1,sort=nearest] run summon vindicator ~ ~ ~ {CustomName:[Bank_2013],Health:800,PersistenceRequired:1b,Silent:1b,Tags:["bank2"],attributes:[{id:follow_range,base:256f},{id:scale,base:1.2f},{id:max_health,base:800f},{id:attack_damage,base:15},{id:knockback_resistance,base:0.4},{id:safe_fall_distance,base:1024}]}

execute as @a[tag=playerspawnbank,limit=1] at @s run tellraw @a [{"text":"Bank_2013","color":"green"},{"text":" has been located by ","color":"gray"},{"selector":"@s","color":"gray"}]
execute at @e[tag=bank] run tellraw @a[distance=..128] ["",{"text":"<Bank_2013>","color":"green"}," Can't you all just leave me alone?"]

execute at @e[tag=bank] run bossbar set bank players @a[distance=..128]
scoreboard players set world BankLives 1
execute at @e[tag=bank,limit=1] run playsound ui.button.click voice @a[distance=..128] ^ ^ ^ 150 1 1
execute as @e[tag=bank,limit=1] at @s run team join noCollision @s
execute as @e[tag=bank,limit=1] at @s run attribute @s armor base set 30
execute as @e[tag=bank,limit=1] at @s run attribute @s armor_toughness base set 30
function bankboss:bankloop

kill @e[tag=bankspawnarmorstand]
tag @a remove playerspawnbank
