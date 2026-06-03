#Copyright JayPyro2000 2026. All Rights Reserved.

# Returns the y position of the air block above the surface block at 0 y 0.

# Sets the max possible surface at 320
scoreboard players set #surface_y_pos variables 320
scoreboard players set #found_surface variables 0

execute run function ohtdhelper:surface_dispatcher

scoreboard players add #surface_y_pos variables 1
execute store result storage ohtd surface_y_pos int 1 run scoreboard players get #surface_y_pos variables

return run data get storage ohtd surface_y_pos