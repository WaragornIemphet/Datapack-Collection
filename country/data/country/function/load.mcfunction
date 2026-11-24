tellraw @a "INFESTED BY PCR"

bossbar add pcr [{"text":"CCOUNTRYY","color":"blue"}]
bossbar set pcr max 350
bossbar set pcr style notched_6
bossbar set pcr color blue

scoreboard objectives add pair_id dummy
scoreboard objectives add global_id dummy
scoreboard objectives add alive_check dummy
scoreboard objectives add clone_timer dummy

scoreboard objectives add CountryLives dummy
scoreboard objectives add CountrySKill dummy
