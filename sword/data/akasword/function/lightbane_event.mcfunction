execute unless entity @s[tag=lightbane] run advancement revoke @s only akasword:hit_mob2
execute unless entity @s[tag=lightbane] run return 0

execute if entity @s[tag=lb_skill_dmg] run advancement revoke @s only akasword:hit_mob2
execute if entity @s[tag=lb_skill_dmg] run return 0

tag @e[tag=current_victim] remove current_victim
execute as @e[distance=..7,nbt={HurtTime:10s},tag=!lightbane,limit=1,sort=nearest] at @s run function akasword:lightbane_score

advancement revoke @s only akasword:hit_mob2
