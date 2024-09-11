#弾が実行者
say hit_block
execute if entity @s[tag=wind_magician_skill_5] on origin run return run tag @s add wind_skill_5_player
execute if entity @s[tag=fire_magician_skill_7] on origin run return run tag @s add fire_skill_7_player

execute if entity @s[tag=fire_magician_skill_7] at @s as @e[type=#enemy,distance=..3.5] run function gis:system/player/skill/magician/7_wand_a_hit
tag @a remove wind_skill_5_player
tag @a remove fire_skill_7_player