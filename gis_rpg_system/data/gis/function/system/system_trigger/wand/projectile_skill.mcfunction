#被ダメ敵が実行者
execute if entity @p[tag=fire_skill_1_player] run function gis:system/player/skill/magician/1_wand_a_hit
execute if entity @p[tag=wind_skill_5_player] run function gis:system/player/skill/magician/5_wand_a_hit
execute if entity @p[tag=fire_skill_7_player] run function gis:system/player/skill/magician/7_wand_a_hit
tag @a remove fire_skill_1_player
tag @a remove wind_skill_5_player
tag @a remove fire_skill_7_player
tag @a remove skill_attack