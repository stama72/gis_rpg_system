#finish
execute if score @s gis_skill_using matches 2 if score @s gis_skill_sub_1 matches 2 run function gis:system/player/skill/magician/2_book_a_finish
execute if score @s gis_skill_using matches 6 if score @s gis_skill_sub_2 matches 6 if predicate gis:entity_check/is_sneak run function gis:system/player/skill/magician/6_book_b_finish


#continue
execute if score @s gis_skill_using matches 4 if score @s gis_skill_sub_1 matches 4 run function gis:system/player/skill/magician/4_book_a_continue
execute if score @s gis_skill_using matches 8 if score @s gis_skill_sub_2 matches 8 if predicate gis:entity_check/is_sneak run function gis:system/player/skill/magician/8_book_b_continue


#new
execute unless score @s gis_cooltime matches 0 run return 0
execute if score @s gis_skill_sub_2 matches 6 if predicate gis:entity_check/is_sneak run return run function gis:system/player/skill/magician/6_book_b
execute if score @s gis_skill_sub_2 matches 8 if predicate gis:entity_check/is_sneak run return run function gis:system/player/skill/magician/8_book_b

execute if score @s gis_skill_sub_1 matches 2 run function gis:system/player/skill/magician/2_book_a
execute if score @s gis_skill_sub_1 matches 4 run function gis:system/player/skill/magician/4_book_a
