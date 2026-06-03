#Copyright JayPyro2000 2026. All Rights Reserved.

# Store arguments
scoreboard objectives add variables dummy

$scoreboard players set #ttd_min variables $(time)

execute store result storage ohtd ttd_min int 1 run scoreboard players get #ttd_min variables
execute store result storage ohtd ttd_sec int 60 run scoreboard players get #ttd_min variables

execute store result score #ttd_sec variables run data get storage minecraft:ohtd ttd_sec 1

# Calculate 10 and 60 seconds before.
scoreboard players set #ten variables 10
scoreboard players set #sixty variables 60

scoreboard players operation #ttd_ten variables = #ttd_sec variables
scoreboard players operation #ttd_sixty variables = #ttd_sec variables

scoreboard players operation #ttd_ten variables -= #ten variables
scoreboard players operation #ttd_sixty variables -= #sixty variables

execute store result storage ohtd ttd_ten int 1 run scoreboard players get #ttd_ten variables
execute store result storage ohtd ttd_sixty int 1 run scoreboard players get #ttd_sixty variables

execute in minecraft:the_end run forceload add 0 0

execute store result storage ohtd perch_y int 1 run function ohtdhelper:find_surface

execute run function ohtdhelper:scheduler with storage ohtd