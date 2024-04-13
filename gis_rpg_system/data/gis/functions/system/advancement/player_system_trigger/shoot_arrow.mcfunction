#弓で矢を放った時

scoreboard players set @s gis_shoot_arrow 0



##skill
execute unless score @s gis_job matches 3 run return 0
#new
execute unless score @s gis_cooltime matches 0 run return 0
execute if score @s gis_skill_main_1 matches 1 as @s[x_rotation=-90..-45] run function gis:system/player/skill/hunter/1_bow_b
execute if score @s gis_skill_main_1 matches 3 run function gis:system/player/skill/hunter/3_bow_a


