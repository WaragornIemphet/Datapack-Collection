# 1. Summon a placeholder item with a tag AND a 40-tick pickup delay so Sett doesn't instantly grab it!
execute at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:40s,Tags:["sett_drop"]}

# 2. Copy the exact item data from Sett's hand into the dropped item
# (Since the function is already running as Sett, we just pull directly from @s)
item replace entity @e[type=item,tag=sett_drop,distance=..2,limit=1] contents from entity @s weapon.mainhand

# 3. Remove the temporary tag
tag @e[type=item,tag=sett_drop] remove sett_drop

# 4. Clear Sett's mainhand so he is empty-handed again (Using minecraft:air for 1.21+ safety)
item replace entity @s weapon.mainhand with minecraft:air

# 5. Visual/Audio feedback for the drop
particle minecraft:crit ~ ~1 ~ 0.3 0.3 0.3 0.1 15
playsound minecraft:entity.item.pickup master @a[distance=..16] ~ ~ ~ 1 0.5

# 6. Reset his scoreboards so he can steal again later
scoreboard players set @s SettHitCount 0
scoreboard players set @s SettStealTimer 0
tag @e[tag=sett2] remove sett_has_stolen_item