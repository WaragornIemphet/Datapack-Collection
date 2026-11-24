tellraw @a [{"text":"M","bold":true,"color":"#0a3161"},{"text":"a","bold":true,"color":"#1c406c"},{"text":"k","bold":true,"color":"#2d4e78"},{"text":"i","bold":true,"color":"#3e5d83"},{"text":"n","bold":true,"color":"#506c8e"},{"text":"g","bold":true,"color":"#627b99"},{"text":" ","bold":true,"color":"#7389a5"},{"text":"t","bold":true,"color":"#8598b0"},{"text":"h","bold":true,"color":"#96a7bb"},{"text":"e","bold":true,"color":"#a8b5c7"},{"text":" ","bold":true,"color":"#b9c4d2"},{"text":"m","bold":true,"color":"#cbd3dd"},{"text":"o","bold":true,"color":"#dce2e8"},{"text":"t","bold":true,"color":"#eef0f4"},{"text":"he","bold":true,"color":"white"},{"text":"r","bold":true,"color":"#faeeed"},{"text":" ","bold":true,"color":"#f6dcdb"},{"text":"o","bold":true,"color":"#f1cbc9"},{"text":"f","bold":true,"color":"#edb9b7"},{"text":" ","bold":true,"color":"#e8a8a5"},{"text":"a","bold":true,"color":"#e49693"},{"text":"l","bold":true,"color":"#df8581"},{"text":"l","bold":true,"color":"#da736f"},{"text":" Singularities","bold":true,"color":"#d6615d"},{"text":" ","bold":true,"color":"#d1504b"},{"text":"h","bold":true,"color":"#d6625d"},{"text":"e","bold":true,"color":"#da736f"},{"text":"r","bold":true,"color":"#df8581"},{"text":"e","bold":true,"color":"#e49693"},{"text":",","bold":true,"color":"#e8a8a5"},{"text":" ","bold":true,"color":"#edb9b7"},{"text":"J","bold":true,"color":"#f1cbc9"},{"text":"ames","bold":true,"color":"#f6dcdb"},{"text":".","bold":true,"color":"white"},{"text":" ","bold":true,"color":"#faecec"},{"text":"C","bold":true,"color":"#f5d9d8"},{"text":"a","bold":true,"color":"#f0c6c5"},{"text":"n","bold":true,"color":"#ebb4b1"},{"text":"'","bold":true,"color":"#e6a19e"},{"text":"t","bold":true,"color":"#e18e8b"},{"text":" ","bold":true,"color":"#dd7b77"},{"text":"f","bold":true,"color":"#d86864"},{"text":"r","bold":true,"color":"#d35551"},{"text":"e","bold":true,"color":"#ce433d"},{"text":"t","bold":true,"color":"#c9302a"},{"text":" ","bold":true,"color":"#c41d16"},{"text":"ov","bold":true,"color":"#bf0a03"},{"text":"e","bold":true,"color":"#c41d16"},{"text":"r","bold":true,"color":"#c9302a"},{"text":" ","bold":true,"color":"#ce433d"},{"text":"e","bold":true,"color":"#d35551"},{"text":"v","bold":true,"color":"#d86864"},{"text":"e","bold":true,"color":"#dd7b77"},{"text":"r","bold":true,"color":"#e18e8b"},{"text":"y","bold":true,"color":"#e6a19e"},{"text":" Larper","bold":true,"color":"#ebb4b1"},{"text":"!","bold":true,"color":"white"}]

# --- senator:load ---

# Core tracking
scoreboard objectives add sena_nano dummy
scoreboard objectives add sena_timer dummy

# Damage detection
scoreboard objectives add sena_dmg custom:damage_taken
scoreboard objectives add sena_abs custom:damage_absorbed
scoreboard objectives add sena_res custom:damage_resisted
scoreboard objectives add sena_music_cd dummy
scoreboard players set @a[tag=nanomachine] sena_music_cd 0

# UI Math & Constants
scoreboard objectives add sena_calc dummy
scoreboard objectives add sena_dec dummy
scoreboard players set #5 sena_calc 5
scoreboard players set #10 sena_calc 10