# 1. Visual animation cancel: Snap the weapon back into the hotbar, clear the off-hand
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with minecraft:air

# 2. Cancel the defensive parry stance immediately
tag @s remove akasword_counter_active
scoreboard players set @s akasword_counter_timer 0

# 3. Penalize with the hard 30-second cooldown (30s * 20 ticks = 600 ticks)
scoreboard players set @s akasword_cd 100

# 4. Clean out all damage tracking scores back to baseline 0
scoreboard players set @s akasword_dmg_taken 0
scoreboard players set @s akasword_dmg_resisted 0
scoreboard players set @s akasword_dmg_absorbed 0

execute at @a[tag=wongkura_singular] as @e[distance=..5,tag=!wongkura_singular] run effect give @s blindness 4 1 true
execute at @a[tag=wongkura_singular] as @e[distance=..5,tag=!wongkura_singular] run effect give @s slowness 4 3 true
tp @s ^ ^0.25 ^25
particle dust_color_transition{from_color:[0.64,0.95,0.98],to_color:[1.0,0.0,0.0],scale:4} ^ ^0.25 ^ 0.2 0.55 0.2 0.1 100 force
# 5. Play a visual/audio indicator showing the cancel was forced
playsound minecraft:entity.shulker.teleport player @a[distance=..64] ~ ~ ~ 100 1

