#敵側の処理
execute if score @p[tag=fist_skill_3_player] gis_skill_action_count matches 1..2 run function gis:system/player/skill/damage_with_physical_e {player:"@p[tag=fist_skill_3_player]",damage:"15"}
execute if score @p[tag=fist_skill_3_player] gis_skill_action_count matches 3 run function gis:system/player/skill/damage_with_physical_e {player:"@p[tag=fist_skill_3_player]",damage:"30"}

tag @s add gis_skill_attacked

tag @a[tag=fist_skill_3_player] remove fist_skill_3_player