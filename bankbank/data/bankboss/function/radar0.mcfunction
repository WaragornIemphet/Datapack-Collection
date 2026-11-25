execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{radar_proxy:1}] run item replace entity @s weapon.mainhand with recovery_compass[custom_name=[{"text":"Entity Radar","italic":false,"color":"green"}],lore=[[{"text":"Radar (Radio Detection and Ranging) is an active","italic":false,"color":"gray"}],[{"text":"sensing system that uses electromagnetic radio or","italic":false,"color":"gray"}],[{"text":"microwave waves to detect distant objects.","italic":false,"color":"gray"}],[{"text":"It determines an object's distance (ranging),","italic":false,"color":"gray"}],[{"text":"direction, and velocity by transmitting a signal","italic":false,"color":"gray"}],[{"text":"and measuring the \"echo\" that reflects off the target.","italic":false,"color":"gray"}],"",[{"text":"Press (Sneak) To use","italic":false,"color":"yellow"}]],item_model="syn:radar",custom_data={isradar:true}]


tag @e[type=item,tag=v_radar] remove v_radar

execute at @e[type=item,nbt={Item:{id:"minecraft:iron_block"}}] as @e[type=item,distance=..2] run tag @s add v_radar


execute at @e[tag=v_radar,nbt={Item:{id:"minecraft:iron_block"}},limit=1] \
    if items entity @e[tag=v_radar] contents prismarine_shard[custom_data={circuit:1},count=2] \
    if items entity @e[tag=v_radar] contents iron_nugget[custom_data={resistor:1},count=1] \
    if items entity @e[tag=v_radar] contents netherite_ingot[count=4] \
    if items entity @e[tag=v_radar] contents flint[custom_data={chip:1},count=1] \
    if items entity @e[tag=v_radar] contents nether_star[custom_data={argent:1},count=1] \
    if items entity @e[tag=v_radar] contents copper_nugget[custom_data={wire:1},count=4] \
    run function bankboss:radarcraft

