execute if entity @s[type=!#minecraft:no_mob] run function gis:tick/entity/mob_entity
execute if entity @s[type=trident] run function gis:tick/entity/trident
execute if entity @s[type=arrow] run function gis:tick/entity/arrow
execute if entity @s[tag=gis_kill] run function gis:tick/entity/entity_kill
execute if entity @s[tag=ride_up_display,predicate=gis:entity_check/is_no_vehicle] run kill @s
execute if entity @s[tag=ride_down_display,predicate=gis:entity_check/is_no_passenger] run kill @s

