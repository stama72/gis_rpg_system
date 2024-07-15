

#finish
execute if score @s gis_skill_using matches 9 if score @s gis_skill_main_1 matches 9 if predicate gis:entity_check/is_sneak run function gis:system/player/skill/magician/9_wand_b_finish

#continue
execute if score @s gis_skill_using matches 9 if score @s gis_skill_main_2 matches 9 if predicate gis:entity_check/is_sneak run function gis:system/player/skill/magician/9_wand_b_continue


#new
execute unless score @s gis_cooltime matches 0 run return 0
execute if score @s gis_skill_main_2 matches 3 if predicate gis:entity_check/is_sneak run return run function gis:system/player/skill/magician/3_wand_b
execute if score @s gis_skill_main_2 matches 9 if predicate gis:entity_check/is_sneak run return run function gis:system/player/skill/magician/9_wand_b

execute if score @s gis_skill_main_1 matches 1 run function gis:system/player/skill/magician/1_wand_a
execute if score @s gis_skill_main_1 matches 5 run function gis:system/player/skill/magician/5_wand_a
execute if score @s gis_skill_main_1 matches 7 run function gis:system/player/skill/magician/7_wand_a




