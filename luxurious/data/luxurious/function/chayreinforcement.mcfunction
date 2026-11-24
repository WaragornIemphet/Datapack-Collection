scoreboard players set world LuxBackups 1

summon mannequin ~ ~1 ~ {profile:powpeter1,hide_description:1b,CustomName:[{"text":"powpeter1","color":"dark_green"}],CustomNameVisible:1b,Health:400,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:[powp],Team:noCollision,attributes:[{id:max_health,base:400f}],equipment:{mainhand:{id:netherite_sword,count:1},offhand:{id:mace,count:1},head:{id:netherite_helmet,components:{trim:{pattern:bolt,material:emerald}}},chest:{id:netherite_chestplate,components:{trim:{pattern:coast,material:emerald}}},legs:{id:netherite_leggings,components:{trim:{pattern:wayfinder,material:emerald}}},feet:{id:netherite_boots,components:{trim:{pattern:silence,material:emerald}}}},drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f}}
summon vindicator ~ ~1 ~3 {CustomName:[{"text":"powpeter1","color":"green"}],CustomNameVisible:1b,Health:400,PersistenceRequired:1b,Silent:1b,Tags:[powp2],attributes:[{id:armor,base:12f},{id:attack_damage,base:5f},{id:scale,base:1.25f},{id:follow_range,base:40f},{id:max_health,base:400f}]}


summon mannequin ~ ~1 ~ {profile:joorno,hide_description:1b,CustomName:[{"text":"joorno","color":"light_purple"}],CustomNameVisible:1b,Health:250,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:[joor],Team:noCollision,attributes:[{id:max_health,base:250f}],equipment:{mainhand:{id:diamond_sword,count:1},offhand:{id:shield,count:1},head:{id:diamond_helmet},chest:{id:diamond_chestplate,count:1},legs:{id:diamond_leggings,count:1},feet:{id:diamond_boots,count:1}},drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f}}
summon vindicator ~2 ~1 ~1 {CustomName:[{"text":"joorno","color":"light_purple"}],CustomNameVisible:1b,Health:250,PersistenceRequired:1b,Silent:1b,Tags:[joor2],attributes:[{id:armor,base:8f},{id:attack_damage,base:3f},{id:scale,base:1.25f},{id:follow_range,base:40f},{id:max_health,base:250f}]}

summon mannequin ~ ~1 ~ {profile:Settawattt,hide_description:1b,CustomName:[{"text":"Settawattt","color":"dark_aqua"}],CustomNameVisible:1b,Health:250,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Tags:[sett],attributes:[{id:max_health,base:250f}],equipment:{mainhand:{id:golden_apple,count:1},offhand:{id:shield,count:1},head:{id:diamond_helmet},chest:{id:diamond_chestplate,count:1},legs:{id:diamond_leggings,count:1},feet:{id:diamond_boots,count:1}},drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f}}
summon hoglin ~ ~1 ~ {IsImmuneToZombification:1b,CannotBeHunted:1b,CustomName:[{"text":"Settawattt","color":"dark_aqua"}],CustomNameVisible:1b,Health:250,PersistenceRequired:1b,Silent:1b,Tags:[sett2],Team:noCollision,attributes:[{id:armor,base:6f},{id:attack_damage,base:4f},{id:scale,base:2.5f},{id:max_health,base:250f},{id:follow_range,base:64f},{id:attack_knockback,base:2f}],Age:-1,AgeLocked:1b,equipment:{mainhand:{id:stick,components:{enchantments:{knockback:3}},count:1}},drop_chances:{mainhand:0f}}

tag @e[tag=sett2] add sett_has_stolen_item

bossbar set powpeter players @a[distance=..128]
bossbar set joorno players @a[distance=..128]
bossbar set setta players @a[distance=..128]