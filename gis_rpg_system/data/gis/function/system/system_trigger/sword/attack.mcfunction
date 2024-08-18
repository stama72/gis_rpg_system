

execute unless score @s gis_job matches 2 run return 0

#new
execute unless score @s gis_cooltime matches 0 run return 0
execute if score @s gis_skill_main_1 matches 1 run function gis:system/player/skill/attacker/1_sword_a
execute if score @s gis_skill_main_1 matches 2 run function gis:system/player/skill/attacker/2_sword_a


