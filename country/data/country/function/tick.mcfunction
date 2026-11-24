execute if score world CountryLives matches 1 run function country:countryfolder

function country:countrycraft

execute as @a at @s if items entity @s weapon.offhand *[custom_data~{pcr:1}] unless score world CountryLives matches 1 run function country:summoncountry