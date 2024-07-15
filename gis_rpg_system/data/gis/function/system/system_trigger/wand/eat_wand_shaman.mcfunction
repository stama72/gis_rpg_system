#finish
execute if score @s gis_skill_using matches 6 if score @s gis_skill_sub_2 matches 6 if predicate gis:entity_check/is_sneak run function gis:system/player/skill/shaman/6_wand_b_finish

#new
execute unless score @s gis_cooltime matches 0 run return 0
execute if score @s gis_skill_sub_2 matches 4 if predicate gis:entity_check/is_sneak run return run function gis:system/player/skill/shaman/4_wand_b
execute if score @s gis_skill_sub_2 matches 6 if predicate gis:entity_check/is_sneak run return run function gis:system/player/skill/shaman/6_wand_b

execute if score @s gis_skill_sub_1 matches 2 run function gis:system/player/skill/shaman/2_wand_a
execute if score @s gis_skill_sub_1 matches 8 run function gis:system/player/skill/shaman/8_wand_a
