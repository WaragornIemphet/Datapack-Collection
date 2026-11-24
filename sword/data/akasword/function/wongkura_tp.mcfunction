# Revert the visual hand swap instantly
item replace entity @s weapon.mainhand with netherite_shovel[custom_name=[{"text":"Wongkura's Spoon","italic":false,"color":"#f41a1a"}],lore=[[{"text":"The metal bends unnaturally under its own power,","italic":false,"color":"gray"}],[{"text":"crackling with fractured enchantments that refuse to","italic":false,"color":"gray"}],[{"text":"stabilize. ","italic":false,"color":"gray"}],[{"text":"Few can wield it safely. Fewer survive its awakening.","italic":false,"color":"gray"}]],enchantment_glint_override=false,enchantments={efficiency:10,knockback:1},attribute_modifiers=[{type:attack_damage,amount:15,slot:mainhand,operation:add_value,id:"1778928391670"}],unbreakable={},item_model="syn:redspoon",custom_data={wongspoon:1},tooltip_display={hidden_components:[enchantments]}]
item replace entity @s weapon.offhand with minecraft:air

# Teleport the player directly to the tagged attacker
# Using `^ ^ ^-1.5` moves you 1.5 blocks behind them facing their direction
execute at @e[tag=akasword_counter_target,limit=1,sort=nearest] run tp @s ^ ^0.25 ^-2 facing entity @e[sort=nearest,limit=1,tag=akasword_counter_target]

# Deal damage to the target
execute as @e[tag=akasword_counter_target,limit=1,sort=nearest] run damage @s 15 minecraft:player_attack by @p

# Visual and sound design elements for the blink strike
particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 0.1 20
execute at @s run playsound minecraft:entity.enderman.teleport player @a[distance=..64] ~ ~ ~ 1 1.2

# Remove tracking tags from the target and the player
execute as @e[tag=akasword_counter_target] run tag @s remove akasword_counter_target
tag @s remove counter_success
scoreboard players set @s akasword_counter_timer 0

# Trigger the official 30-second cooldown (600 ticks)
scoreboard players set @s akasword_cd 600


