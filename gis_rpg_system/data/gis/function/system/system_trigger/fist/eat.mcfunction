
advancement revoke @s only gis:player_system_trigger/eat_fist

execute unless score @s gis_job matches 2 run return 0
#continue
execute if score @s gis_skill_using matches 5 if score @s gis_skill_sub_2 matches 5 as @s[x_rotation=30..90] run function gis:system/player/skill/attacker/5_fist_b_continue

#new
execute unless score @s gis_cooltime matches 0 run return 0
execute if score @s gis_skill_sub_2 matches 5 as @s[x_rotation=30..90] run function gis:system/player/skill/attacker/5_fist_b



