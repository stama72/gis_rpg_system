#敵側の処理
execute if score @p[tag=fist_skill_7_player] gis_skill_action_count matches 1 run function gis:system/player/skill/damage_with_physical_e {player:"@p[tag=fist_skill_7_player]",damage:"10"}
execute if score @p[tag=fist_skill_7_player] gis_skill_action_count matches 2 run function gis:system/player/skill/damage_with_physical_e {player:"@p[tag=fist_skill_7_player]",damage:"15"}
execute if score @p[tag=fist_skill_7_player] gis_skill_action_count matches 3 run function gis:system/player/skill/damage_with_physical_e {player:"@p[tag=fist_skill_7_player]",damage:"25"}
execute if score @p[tag=fist_skill_7_player] gis_skill_action_count matches 4 run function gis:system/player/skill/damage_with_physical_e {player:"@p[tag=fist_skill_7_player]",damage:"30"}
execute if score @p[tag=fist_skill_7_player] gis_skill_action_count matches 5 run function gis:system/player/skill/damage_with_physical_e {player:"@p[tag=fist_skill_7_player]",damage:"50"}


tag @s add gis_skill_attacked
execute as @p[tag=fist_skill_7_player] if score @s gis_skill_action_count matches 5 run function gis:system/player/skill/attacker/7_fist_a_finish
tag @a[tag=fist_skill_7_player] remove fist_skill_7_player