
execute as @s[tag=!gis_entity_defenser_check] run function gis:system/entity/entity_no_player_damage
execute as @s[tag=gis_entity_defenser_check] run function gis:system/player/player_attack_entity/target_check_sub

