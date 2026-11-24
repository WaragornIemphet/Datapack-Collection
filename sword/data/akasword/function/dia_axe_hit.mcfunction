# 1. Revoke advancement and tag user
advancement revoke @s only akasword:dia_axe_hit
tag @s add current_axe

# 2. Target the victim
tag @e[tag=!current_axe,distance=..7,limit=1,sort=nearest,nbt={HurtTime:10s}] add victimaxe

# 3. Add Bleed Stacks (Cap at 20)
scoreboard players add @e[tag=victimaxe,limit=1] BleedStacks 1
execute if score @e[tag=victimaxe,limit=1] BleedStacks matches 21.. run scoreboard players set @e[tag=victimaxe,limit=1] BleedStacks 20

# 4. Scaling Slowness Tiers
execute if score @e[tag=victimaxe,limit=1] BleedStacks matches 1..4 run effect give @e[tag=victimaxe,limit=1] slowness 3 0 true
execute if score @e[tag=victimaxe,limit=1] BleedStacks matches 5..9 run effect give @e[tag=victimaxe,limit=1] slowness 3 1 true
execute if score @e[tag=victimaxe,limit=1] BleedStacks matches 10..14 run effect give @e[tag=victimaxe,limit=1] slowness 3 2 true
execute if score @e[tag=victimaxe,limit=1] BleedStacks matches 15..19 run effect give @e[tag=victimaxe,limit=1] slowness 3 3 true
execute if score @e[tag=victimaxe,limit=1] BleedStacks matches 20 run effect give @e[tag=victimaxe,limit=1] slowness 3 4 true

# 5. Visual Feedback (Fleshy hit sound and redstone "blood" particles)
execute at @e[tag=victimaxe,limit=1] run particle block{block_state:{Name:nether_wart_block}} ~ ~1 ~ 0.1 0.1 0.1 1 100 force
execute at @e[tag=victimaxe,limit=1] run playsound minecraft:entity.wither.break_block voice @a[distance=..20] ~ ~ ~ 160 1.25 1
execute at @e[tag=victimaxe,limit=1] run playsound minecraft:entity.spider.step player @a[distance=..20] ~ ~ ~ 100 0.8

execute if score @e[tag=victimaxe,limit=1] BleedStacks matches ..20 run title @p[tag=current_axe] actionbar [{"text":"BLEED STACKS: ","color":"dark_red"},{"score":{"name":"@e[tag=victimaxe,sort=nearest,limit=1]","objective":"BleedStacks"},"color":"red"}]

# 6. Cleanup
tag @e remove victimaxe
tag @e remove current_axe