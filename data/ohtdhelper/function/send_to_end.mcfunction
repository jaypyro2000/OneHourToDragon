#Copyright JayPyro2000 2026. All Rights Reserved.

$execute in minecraft:overworld as @a[x=0] in minecraft:the_end run tp @a 0 $(perch_y) 0
$execute in minecraft:the_nether as @a[x=0] in minecraft:the_end run tp @a 0 $(perch_y) 0

execute in minecraft:the_end run forceload remove 0 0