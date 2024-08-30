
advancement revoke @s only gis:player_system_trigger/eat_book



##skill
execute if score @s gis_job matches 4 run return run function gis:system/system_trigger/book/eat_book_magician
execute if score @s gis_job matches 5 run return run function gis:system/system_trigger/book/eat_book_shaman



