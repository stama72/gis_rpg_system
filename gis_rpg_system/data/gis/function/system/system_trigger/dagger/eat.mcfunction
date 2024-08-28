advancement revoke @s only gis:player_system_trigger/eat_dagger

##skill
execute unless score @s gis_job matches 3 run return 0
#continue
execute if score @s gis_skill_using matches 4 if score @s gis_skill_sub_1 matches 4 unless score @s gis_skill_action_count matches 1.. run function gis:system/player/skill/hunter/4_dagger_a_continue

#new
execute unless score @s gis_cooltime matches 0 run return 0
execute if score @s gis_skill_sub_1 matches 4 run function gis:system/player/skill/hunter/4_dagger_a