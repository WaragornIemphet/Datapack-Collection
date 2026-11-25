execute store result score world randomevent run random value 1..2

execute unless score world WongkuraRestriction matches 1 run return 0
execute if score world randomevent matches 1 run function ratraid:ratspawn

execute unless score world LutanceRestriction matches 1 run return 0
execute if score world randomevent matches 2 run function ratraid:cccspawn
