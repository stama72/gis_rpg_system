
#new
execute unless score @s gis_cooltime matches 0 run return 0
execute if score @s gis_skill_main_2 matches 1 if predicate gis:entity_check/is_sneak run function gis:system/player/skill/tank/1_trident_b
execute if score @s gis_skill_main_2 matches 9 if predicate gis:entity_check/is_sneak run function gis:system/player/skill/tank/9_trident_b


