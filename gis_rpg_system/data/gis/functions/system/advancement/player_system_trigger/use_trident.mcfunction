
advancement revoke @s only gis:player_system_trigger/use_trident

#トライデントを構えた時
execute if score @s gis_trident_using_count matches 0 run scoreboard players set @s gis_trident_using_count_sub 0
scoreboard players add @s gis_trident_using_count 1

##skill
execute unless score @s gis_job matches 1 run return 0
#continue
execute if score @s gis_skill_using matches 7 if score @s gis_skill_other matches 7 if predicate gis:entity_check/is_sneak run function gis:system/player/skill/tank/7_trident_c_continue

#new
execute unless score @s gis_cooltime matches 0 run return 0
execute if score @s gis_skill_other matches 7 as @s[x_rotation=-90..-30] if predicate gis:entity_check/is_sneak run function gis:system/player/skill/tank/7_trident_c