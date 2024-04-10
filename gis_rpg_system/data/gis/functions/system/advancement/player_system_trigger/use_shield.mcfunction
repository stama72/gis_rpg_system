
advancement revoke @s only gis:player_system_trigger/use_shield

##skill
execute unless score @s gis_job matches 1 run return 0
#continue
execute if score @s gis_skill_using matches 6 if score @s gis_skill_sub_1 matches 6 run function gis:system/player/skill/tank/6_shield_a_continue
execute if score @s gis_skill_using matches 8 if score @s gis_skill_sub_1 matches 8 run function gis:system/player/skill/tank/8_shield_a_continue

#new
execute unless score @s gis_cooltime matches 0 run return 0
execute if score @s gis_skill_sub_2 matches 4 if predicate gis:entity_check/is_sneak run function gis:system/player/skill/tank/4_shield_b
execute if score @s gis_skill_sub_2 matches 4 if predicate gis:entity_check/is_sneak run return 0
execute if score @s gis_skill_sub_1 matches 2 run function gis:system/player/skill/tank/2_shield_a
execute if score @s gis_skill_sub_1 matches 6 run function gis:system/player/skill/tank/6_shield_a
execute if score @s gis_skill_sub_1 matches 8 run function gis:system/player/skill/tank/8_shield_a
