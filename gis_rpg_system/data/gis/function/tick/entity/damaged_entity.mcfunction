
execute as @s[tag=!gis_entity_defenser_check] run function gis:system/damage/non_player_to_e
execute as @s[tag=gis_entity_defenser_check] run function gis:system/player/player_attack_entity/attack_reset

