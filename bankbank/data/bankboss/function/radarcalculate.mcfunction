# --- 1. Reset Counts to 0 (Safety) ---
data modify storage bankboss:ram c8 set value 0
data modify storage bankboss:ram c16 set value 0
data modify storage bankboss:ram c32 set value 0
data modify storage bankboss:ram c64 set value 0
data modify storage bankboss:ram c128 set value 0

# --- 2. Count Entities (Layered Distance Shells) ---
execute store result storage bankboss:ram c8 int 1 if entity @e[distance=..8,limit=999,type=!minecraft:player]
execute store result storage bankboss:ram c16 int 1 if entity @e[distance=8.001..16,limit=999,type=!minecraft:player]
execute store result storage bankboss:ram c32 int 1 if entity @e[distance=16.001..32,limit=999,type=!minecraft:player]
execute store result storage bankboss:ram c64 int 1 if entity @e[distance=32.001..64,limit=999,type=!minecraft:player]
execute store result storage bankboss:ram c128 int 1 if entity @e[distance=64.001..128,limit=999,type=!minecraft:player]

# --- 3. Determine Section Colors ---
data modify storage bankboss:ram currentrange set value 8
function bankboss:radargetcolor
data modify storage bankboss:ram color8 set from storage bankboss:ram currentcolor

data modify storage bankboss:ram currentrange set value 16
function bankboss:radargetcolor
data modify storage bankboss:ram color16 set from storage bankboss:ram currentcolor

data modify storage bankboss:ram currentrange set value 32
function bankboss:radargetcolor
data modify storage bankboss:ram color32 set from storage bankboss:ram currentcolor

data modify storage bankboss:ram currentrange set value 64
function bankboss:radargetcolor
data modify storage bankboss:ram color64 set from storage bankboss:ram currentcolor

data modify storage bankboss:ram currentrange set value 128
function bankboss:radargetcolor
data modify storage bankboss:ram color128 set from storage bankboss:ram currentcolor

# --- 4. Process Battery Indicator & Number Clean Logic ---
# Default State: Ready (Number is an empty string so nothing appends)
data modify storage bankboss:ram battery_text set value "RADAR-32/16"
data modify storage bankboss:ram battery_color set value "green"
data modify storage bankboss:ram battery_num set value ""

# Overriding State: If cooldown is ticking down, write the text and fetch the actual score
execute if score @s radarcd matches 1.. run data modify storage bankboss:ram battery_text set value "Overheat: "
execute if score @s radarcd matches 1.. run data modify storage bankboss:ram battery_color set value "red"
execute store result storage bankboss:ram battery_num int 1 if score @s radarcd matches 1.. run scoreboard players get @s radarcd


# --- 5. Output To Actionbar ---
function bankboss:radardisplay with storage bankboss:ram
