execute at @e[tag=powpdeath] run playsound minecraft:entity.wither.break_block voice @a[distance=..128] ~ ~ ~ 160 0.5 1
execute at @e[tag=powpdeath] run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0.1 0.1 0.1 1 100 force
execute at @e[tag=chay_defeated] run playsound minecraft:entity.wither.break_block voice @a[distance=..128] ~ ~ ~ 160 0.5 1
execute at @e[tag=chay_defeated] run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0.1 0.1 0.1 1 100 force

kill @e[tag=powp2]
kill @e[tag=joor2]
kill @e[tag=sett2]
kill @e[tag=joor]
kill @e[tag=sett]
kill @e[tag=joorshadow]
kill @e[tag=smq]
kill @e[tag=maw]

scoreboard players set world LuxuriousLives 0
scoreboard players set world ChaySkill 0
scoreboard players set world ChayP2Skill 0
scoreboard players set world LuxBackups 0
scoreboard players set world PowpeterPatience 0
scoreboard players set world ChayPatience 0

schedule clear luxurious:chayloop
schedule clear luxurious:powpeterloop
stopsound @a voice music_disc.powpeter
stopsound @a voice music_disc.chay

bossbar set chay players
bossbar set smqtr players
bossbar set mawcel players
bossbar set powpeter players
bossbar set joorno players
bossbar set setta players

execute at @e[tag=powp] as @a[distance=..64] run give @s emerald[custom_name=[{"text":"Luxurious Emerald","italic":false,"color":"green"}],lore=[[{"text":"A gemstone forged not from wealth, but from desperation.","italic":false,"color":"blue"}],[{"text":"It carries the weight of ","italic":false,"color":"blue"},{"text":"a faction","italic":false,"color":"green"},{"text":" that made enemies of kings, ","italic":false,"color":"blue"}],[{"text":"warlords, and the server owner.","italic":false,"color":"blue"}]],item_model="syn:luxuriousemerald",custom_data={luxuriousemerald:1}] 1
execute at @e[tag=powp] as @a[distance=..64] run give @s emerald_block 5
execute at @e[tag=powp] as @a[distance=..64] run give @s golden_apple 3
execute at @e[tag=powp] as @a[distance=..64] run give @s breeze_rod 8
execute at @e[tag=powp] as @a[distance=..64,sort=random,limit=1] run give @s ominous_trial_key 1


execute at @e[tag=chay] as @a[distance=..64] run give @s emerald[custom_name=[{"text":"Sanguine Emerald","italic":false,"color":"dark_red"}],lore=[[{"text":"Itâ€™s not just stained; the crystalline lattice has been ","italic":false,"color":"blue"}],[{"text":"fundamentally replaced by ","italic":false,"color":"blue"},{"text":"coagulated iron and sorrow","italic":false,"color":"dark_red"},{"text":".","italic":false,"color":"blue"}],[{"text":"Holding it is to feel a pulse that doesn't belong to you.","italic":false,"color":"blue"}]],item_model="syn:sanguineemerald",custom_data={sanguineemerald:1}]
execute at @e[tag=chay] as @a[distance=..64] run give @s lapis_block 1
execute at @e[tag=chay] as @a[distance=..64] run give @s emerald_block 1
execute at @e[tag=chay] as @a[distance=..64] run give @s golden_apple 8
execute at @e[tag=chay] as @a[distance=..64] run give @s breeze_rod 16
execute at @e[tag=chay] as @a[distance=..64,sort=random,limit=1] run give @s ominous_trial_key 4


scoreboard players set world Luxurious1Lives 0
scoreboard players set world Luxurious2Lives 0

kill @e[tag=powp]
kill @e[tag=chay]
tellraw @a [{"text":"Luxurious","color":"green"},{"text":" ","color":"yellow"},{"text":"has been defeated","color":"gray"}]
