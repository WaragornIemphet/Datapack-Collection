advancement revoke @s only akasword:diamondparry

scoreboard players set @s diamondstance 0

scoreboard players set @s diamondcooldown 20

effect clear @s mining_fatigue
effect clear @s weakness
effect clear @s luck

execute at @s run particle electric_spark ^ ^1 ^0.15 0.25 0.5 0.25 0 130 force

execute at @s run summon experience_bottle ~ ~ ~
execute at @s run summon experience_bottle ~ ~ ~

playsound minecraft:entity.experience_orb.pickup voice @a[distance=..20] ~ ~ ~ 100 1.5
playsound minecraft:block.anvil.land voice @a[distance=..20] ~ ~ ~ 90 2
effect give @s blindness 1 1 true
effect give @s instant_health 1 1 true
effect give @s regeneration 2 4 true
effect give @s saturation 1 2 true
effect give @s resistance 1 3 true
effect give @s speed 1 10 true
effect give @s strength 2 2 true
execute on attacker run effect give @s glowing 2 1 true
execute on attacker run effect give @s weakness 2 255 true
execute on attacker run effect give @s slowness 2 255 true
