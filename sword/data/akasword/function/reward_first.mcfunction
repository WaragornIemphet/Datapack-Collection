# 1. LOCK THE SERVER (Critical Step)
# Permanently set the flag to 1. Even if this player logs off, the server remembers.
scoreboard players set #lucky_flag akasword_global 1

# 2. Tag the Winner (For user identification, not logic)
tag @s add luckybastard

# 3. Announcement
tellraw @a ["",{"selector":"@s","color":"gold","bold":true},{"text":" has claimed the ","color":"yellow"},{"text":"[Jackpot Hour]","color":"green","bold":true},{"text":" Singularity!","color":"yellow"}]

# 4. Grant The Unique Item

