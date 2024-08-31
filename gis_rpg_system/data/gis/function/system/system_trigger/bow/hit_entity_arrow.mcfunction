#矢が敵に当たった時
#実行者は矢
say hit
execute on origin run tag @s add normal_attack
execute if entity @s[tag=shot_arrow_skill_1] on origin run return run tag @s add arrow_skill_1_player
execute if entity @s[tag=shot_arrow_skill_3] on origin run return run tag @s add arrow_skill_3_player
execute if entity @s[tag=shot_arrow_skill_5] on origin run return run tag @s add arrow_skill_5_player
execute if entity @s[tag=shot_arrow_skill_7] on origin run return run tag @s add arrow_skill_7_player
execute if entity @s[tag=shot_arrow_skill_9] on origin run return run tag @s add arrow_skill_9_player
execute if entity @s[tag=arrow_skill_1_rain_shot] on origin run return run tag @s add arrow_skill_1_player
execute if entity @s[tag=arrow_skill_5_rain_shot] on origin run return run tag @s add arrow_skill_5_player
execute on origin run tag @s add arrow_normal_attack_player