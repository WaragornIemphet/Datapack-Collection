# Revoke advancement to allow re-triggering
advancement revoke @s only akasword:attack_wongspoon

# Execute the AoE damage centered on the player
execute as @e[distance=..7,nbt={HurtTime:10s},tag=!wongkura_singular,type=!item,limit=1,sort=nearest] at @s run function akasword:wongkura_aoe2
execute as @e[distance=..7,nbt={HurtTime:10s},tag=!wongkura_singular,type=!item,limit=1,sort=nearest] at @s run effect give @s glowing 3 1 true