

#スニークのみが発動条件のもの。





#continue
execute if score @s gis_job matches 2 if score @s gis_skill_sub_2 matches 9 if score @s gis_skill_using matches 9 run function gis:system/player/skill/attacker/9_fist_b_continue

#new
execute unless score @s gis_cooltime matches 0 run return 0
execute if score @s gis_job matches 2 if score @s gis_skill_sub_2 matches 9 if score @s gis_skill_using matches 0 run function gis:system/player/skill/attacker/9_fist_b


