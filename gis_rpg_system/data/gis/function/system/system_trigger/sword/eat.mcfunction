
advancement revoke @s only gis:player_system_trigger/eat_sword


execute unless score @s gis_job matches 2 run return 0
#continue
execute if score @s gis_skill_using matches 6 if score @s gis_skill_main_2 matches 6 run function gis:system/player/skill/attacker/6_sword_b_continue
execute if score @s gis_skill_using matches 10 if score @s gis_skill_main_1 matches 10 run function gis:system/player/skill/attacker/10_sword_a_continue

#new
execute unless score @s gis_cooltime matches 0 run return 0
execute if score @s gis_skill_main_2 matches 6 if predicate gis:entity_check/is_sneak run return run function gis:system/player/skill/attacker/6_sword_b
execute if score @s gis_skill_main_2 matches 8 if predicate gis:entity_check/is_sneak run return run function gis:system/player/skill/attacker/8_sword_b
execute if score @s gis_skill_main_1 matches 10 run function gis:system/player/skill/attacker/10_sword_a