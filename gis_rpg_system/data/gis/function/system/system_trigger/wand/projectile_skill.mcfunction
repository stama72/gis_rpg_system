#被ダメ敵が実行者
execute if entity @a[tag=fire_skill_1_player] run function gis:system/player/skill/magician/1_wand_a_hit
execute if entity @a[tag=wind_skill_5_player] run function gis:system/player/skill/magician/5_wand_a_hit
execute if entity @a[tag=fire_skill_7_player] at @s as @e[type=#enemy,distance=..3.5] run function gis:system/player/skill/magician/7_wand_a_hit
tag @a remove fire_skill_1_player
tag @a remove wind_skill_5_player
tag @a remove fire_skill_7_player