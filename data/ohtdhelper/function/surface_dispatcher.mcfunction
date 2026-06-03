#Copyright JayPyro2000 2026. All Rights Reserved.

# Decrements the y position and tests for the surface.
scoreboard players remove #surface_y_pos variables 1
execute store result storage ohtd surface_y_pos int 1 run scoreboard players get #surface_y_pos variables
execute run function ohtdhelper:is_surface with storage ohtd