
#座標調整
scoreboard players operation #bow_skill_1_x gis_temp_2 = #bow_skill_1_x gis_temp_1
scoreboard players operation #bow_skill_1_y gis_temp_2 = #bow_skill_1_y gis_temp_1
scoreboard players operation #bow_skill_1_z gis_temp_2 = #bow_skill_1_z gis_temp_1
execute unless entity @s[tag=arrow_skill_1_rain_shot_sp] run function gis:system/player/skill/hunter/1_bow_b_shot_sub3

#各種NBT代入
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get #bow_skill_1_x gis_temp_2
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get #bow_skill_1_y gis_temp_2
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get #bow_skill_1_z gis_temp_2
execute store result entity @s Owner[0] int 1 run data get storage minecraft:gis_temp skill.hunter_1.owner.0
execute store result entity @s Owner[1] int 1 run data get storage minecraft:gis_temp skill.hunter_1.owner.1
execute store result entity @s Owner[2] int 1 run data get storage minecraft:gis_temp skill.hunter_1.owner.2
execute store result entity @s Owner[3] int 1 run data get storage minecraft:gis_temp skill.hunter_1.owner.3
execute store result entity @s crit int 1 run data get storage minecraft:gis_temp skill.hunter_1.crit
data modify entity @s Motion[1] set value -1.0

