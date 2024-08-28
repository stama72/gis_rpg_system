execute unless score @s gis_job matches 2 run return run tag @s add normal_attack

#new
execute unless score @s gis_cooltime matches 0 run return run tag @s add normal_attack
execute if score @s gis_skill_main_1 matches 1 run return run function gis:system/player/skill/attacker/1_sword_a
execute if score @s gis_skill_main_1 matches 2 run return run function gis:system/player/skill/attacker/2_sword_a

tag @s add normal_attack