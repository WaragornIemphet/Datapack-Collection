
scoreboard players add @s cutscene_timer 1


execute if score @s cutscene_timer matches 2 run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 2 0.5

execute if score @s cutscene_timer matches 2 at @e[tag=mih_victim,limit=1,sort=nearest] run tp @s ^ ^ ^-2 facing entity @e[tag=mih_victim,limit=1,sort=nearest]

execute if score @s cutscene_timer matches 2 at @s run tp @s ~ ~ ~ facing entity @e[tag=mih_victim,limit=1,sort=nearest]

execute if score @s cutscene_timer matches 2 as @e[tag=mih_victim] run effect give @s slowness 7 255 true
execute if score @s cutscene_timer matches 2 as @e[tag=mih_victim] run effect give @s jump_boost 7 200 true
execute if score @s cutscene_timer matches 2 as @e[tag=mih_victim] run effect give @s weakness 7 255 true
execute if score @s cutscene_timer matches 2 as @e[tag=mih_victim] run effect give @s blindness 7 255 true


execute if score @s cutscene_timer matches 50 run tellraw @a [{"text":"<","color":"gold","italic":false},{"selector":"@s","color":"gold"},{"text":">","color":"gold","italic":false},{"text":" You were 2 steps behind","color":"white","italic":false}]
execute if score @s cutscene_timer matches 50 run playsound music_disc.timeaccel voice @a ~ ~ ~ 100 1



execute if score @s cutscene_timer matches 130 as @e[tag=mih_victim] run damage @s 600 minecraft:player_attack by @p[tag=mih_attacker,sort=nearest,limit=1]
execute if score @s cutscene_timer matches 130 as @e[tag=mih_victim] run particle sweep_attack ^ ^1 ^ 0.5 0.5 0.5 0 40 force


execute if score @s cutscene_timer matches 130 at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 2 1
execute if score @s cutscene_timer matches 130 at @e[tag=mih_victim] run particle explosion ~ ~1 ~ 0.5 0.5 0.5 1 50 force
execute if score @s cutscene_timer matches 130 at @e[tag=mih_victim] run particle block{block_state:{Name:"minecraft:redstone_block"}} ~ ~1 ~ 0.5 0.5 0.5 1 50 force



execute if score @s cutscene_timer matches 131 as @e[tag=mih_victim] run effect clear @s
execute if score @s cutscene_timer matches 131 as @e[tag=mih_victim] run tag @s remove mih_victim

execute if score @s cutscene_timer matches 131 run tag @s remove mih_attacker

execute if score @s cutscene_timer matches 131 run scoreboard players set @s cutscene_timer 0
