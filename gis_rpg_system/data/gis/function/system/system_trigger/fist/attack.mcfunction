

execute unless score @s gis_job matches 2 run return 0

#new
execute unless score @s gis_cooltime matches 0 run return 0
execute if score @s gis_skill_sub_2 matches 9 if score @s gis_skill_using matches 9 if score @s gis_skill_using_count matches 20.. if predicate gis:entity_check/is_sneak run return run function gis:system/player/skill/attacker/9_fist_b_strike
#execute if score @s gis_skill_sub_2 matches 9 if score @s gis_skill_using matches 9 if score @s gis_skill_using_count matches 20.. if predicate gis:entity_check/is_sneak run return 0

execute if score @s gis_skill_sub_1 matches 3 run function gis:system/player/skill/attacker/3_fist_a
execute if score @s gis_skill_sub_1 matches 7 run function gis:system/player/skill/attacker/7_fist_a


