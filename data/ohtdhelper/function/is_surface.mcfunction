#Copyright JayPyro2000 2026. All Rights Reserved.

# Checks to see if the current block is a surface block and executes again if not.
$execute in minecraft:the_end unless block 0 $(surface_y_pos) 0 minecraft:air run scoreboard players set #found_surface variables 1
execute if score #found_surface variables matches 0 run function ohtdhelper:surface_dispatcher