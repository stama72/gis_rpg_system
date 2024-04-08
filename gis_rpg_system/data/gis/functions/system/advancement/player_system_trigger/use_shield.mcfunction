
advancement revoke @s only gis:player_system_trigger/use_shield

#skill
execute unless score @s gis_cooltime matches 0 run return 0
execute unless score @s gis_job matches 1 run return 0
execute if score @s gis_skill_sub_1 matches 2 run function gis:system/player/skill/tank/2_shield_a1
execute if score @s gis_skill_sub_1 matches 6 run function gis:system/player/skill/tank/6_shield_a2
execute if score @s gis_skill_sub_1 matches 8 run function gis:system/player/skill/tank/8_shield_a3
execute if score @s gis_skill_sub_2 matches 4 if predicate gis:entity_check/is_sneak run function gis:system/player/skill/tank/4_shield_b1
