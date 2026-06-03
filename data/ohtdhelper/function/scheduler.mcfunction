#Copyright JayPyro2000 2026. All Rights Reserved.

$schedule function ohtdhelper:sixty_seconds $(ttd_sixty)s
$schedule function ohtdhelper:ten_seconds $(ttd_ten)s
$schedule function ohtdhelper:dispatcher $(ttd_sec)s

$title @a subtitle {"text": "in $(ttd_min) minutes.",  "bold":true, "italic":false, "color":"red"}
title @a title {"text":"You will meet the dragon",  "bold":true, "italic":false, "color":"red"}
$tellraw @a [{"text":"You will meet the dragon in $(ttd_min) minutes.", "bold":true, "color":"red"}]