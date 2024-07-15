
advancement revoke @s only gis:player_system_trigger/eat_wand

say wand


execute if score @s gis_job matches 4 run return run function gis:system/system_trigger/wand/eat_wand_magician
execute if score @s gis_job matches 5 run return run function gis:system/system_trigger/wand/eat_wand_shaman


