execute if score world Luxurious1Lives matches 1 run function luxurious:powpeterfolder
execute if score world Luxurious2Lives matches 1 run function luxurious:chayfolder

execute as @a at @s if items entity @s weapon.offhand *[custom_data~{tombcalcium:1}] unless score world LuxuriousLives matches 1 run function luxurious:luxurioussummon

function luxurious:diamondbonus
function luxurious:sanguinerecipe
function luxurious:luxuriousrecipe

execute as @a if items entity @s armor.head *[custom_data~{luxurioushelmet:1}] if items entity @s armor.chest *[custom_data~{luxuriouschest:1}] if items entity @s armor.legs *[custom_data~{luxuriousleg:1}] if items entity @s armor.feet *[custom_data~{luxuriousboot:1}] at @s run function luxurious:luxurioussetbonus
execute as @a if items entity @s armor.head *[custom_data~{sanguinehelmet:1}] if items entity @s armor.chest *[custom_data~{sanguinechest:1}] if items entity @s armor.legs *[custom_data~{sanguineleg:1}] if items entity @s armor.feet *[custom_data~{sanguineboot:1}] at @s run function luxurious:sanguinesetbonus

execute as @e[tag=sanguinebleed] at @s run scoreboard players remove @s SanguineBleed 1
execute as @e[tag=sanguinebleed,scores={SanguineBleed=..0}] at @s run tag @s remove sanguinebleed
execute as @e[tag=sanguinebleed,scores={SanguineBleed=..0}] at @s run scoreboard players set @s SanguineBleed 0
execute at @e[tag=sanguinebleed] run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0 0 0 1 10 force
execute as @e[tag=sanguinebleed] at @s run effect give @s slowness 1 0 true
execute as @e[tag=sanguinebleed] at @s run damage @s 1 generic_kill
