

#finish
execute if score @s gis_skill_using matches 5 if score @s gis_skill_main_1 matches 5 run function gis:system/player/skill/shaman/5_book_a_finish

#continue
execute if score @s gis_skill_using matches 7 if score @s gis_skill_main_2 matches 7 if predicate gis:entity_check/is_sneak run function gis:system/player/skill/shaman/7_book_b_continue
execute if score @s gis_skill_using matches 9 if score @s gis_skill_main_2 matches 9 if predicate gis:entity_check/is_sneak run function gis:system/player/skill/shaman/9_book_b_continue


#new
execute unless score @s gis_cooltime matches 0 run return 0
execute if score @s gis_skill_main_2 matches 7 if predicate gis:entity_check/is_sneak run return run function gis:system/player/skill/shaman/7_book_b
execute if score @s gis_skill_main_2 matches 9 if predicate gis:entity_check/is_sneak run return run function gis:system/player/skill/shaman/9_book_b

execute if score @s gis_skill_main_1 matches 1 run function gis:system/player/skill/shaman/1_book_a
execute if score @s gis_skill_main_1 matches 3 run function gis:system/player/skill/shaman/3_book_a
execute if score @s gis_skill_main_1 matches 5 run function gis:system/player/skill/shaman/5_book_a
