#hunterのとき
#damage calc
execute if entity @p[tag=normal_attack,tag=arrow_skill_1_player] run scoreboard players operation @s gis_damage *= #10 gis_const
execute if entity @p[tag=normal_attack,tag=arrow_skill_3_player] run scoreboard players operation @s gis_damage *= #1 gis_const
execute if entity @p[tag=normal_attack,tag=arrow_skill_5_player] run scoreboard players operation @s gis_damage *= #50 gis_const
execute if entity @p[tag=normal_attack,tag=arrow_skill_7_player] run scoreboard players operation @s gis_damage *= #50 gis_const
execute if entity @p[tag=normal_attack,tag=arrow_skill_9_player] run scoreboard players operation @s gis_damage *= #300 gis_const
tag @a remove arrow_skill_1_player
tag @a remove arrow_skill_3_player
tag @a remove arrow_skill_5_player
tag @a remove arrow_skill_7_player
tag @a remove arrow_skill_9_player
execute if entity @p[tag=normal_attack,tag=arrow_normal_attack_player] run scoreboard players operation @s gis_damage *= #12 gis_const
tag @a remove arrow_normal_attack_player