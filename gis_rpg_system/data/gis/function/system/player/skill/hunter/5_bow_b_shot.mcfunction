#playerが実行者
tag @s add arrow_skill_5_player
execute as @e[type=arrow,tag=shot_arrow_skill_5] at @s on origin as @s[tag=arrow_skill_5_player] as @e[type=arrow,sort=nearest,limit=1] run function gis:system/player/skill/hunter/5_bow_b_shot_sub
tag @s remove arrow_skill_5_player
