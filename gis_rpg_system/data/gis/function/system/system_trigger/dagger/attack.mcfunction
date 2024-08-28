execute unless score @s gis_job matches 3 run return run tag @s add normal_attack

#new
execute unless score @s gis_cooltime matches 0 run return run tag @s add normal_attack
execute if score @s gis_skill_sub_2 matches 2 if predicate gis:entity_check/is_sneak run return run function gis:system/player/skill/hunter/2_dagger_b
execute if score @s gis_skill_sub_2 matches 8 if predicate gis:entity_check/is_sneak run return run function gis:system/player/skill/hunter/8_dagger_b

tag @s add normal_attack