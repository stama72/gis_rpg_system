#弓で矢を放った時(エンチャ由来)
#実行者はプレイヤー

execute unless score @s gis_job matches 3 run return 0
#new
execute unless score @s gis_cooltime matches 0 run return 0
execute if score @s gis_skill_main_2 matches 1 as @s[x_rotation=-90..-35] run return run function gis:system/player/skill/hunter/1_bow_b
execute if score @s gis_skill_main_2 matches 5 as @s[x_rotation=-90..-35] run return run function gis:system/player/skill/hunter/5_bow_b
execute if score @s gis_skill_main_2 matches 9 if predicate gis:entity_check/is_sneak run return run function gis:system/player/skill/hunter/9_bow_b
execute if score @s gis_skill_main_1 matches 3 run function gis:system/player/skill/hunter/3_bow_a
execute if score @s gis_skill_main_1 matches 7 run function gis:system/player/skill/hunter/7_bow_a

