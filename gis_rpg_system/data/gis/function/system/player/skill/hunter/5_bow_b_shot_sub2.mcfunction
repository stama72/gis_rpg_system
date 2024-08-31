#各種NBT代入
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get #bow_skill_5_x gis_temp_1
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get #bow_skill_5_y gis_temp_1
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get #bow_skill_5_z gis_temp_1
data modify entity @s Owner set from storage minecraft:gis_temp skill.hunter_5.owner
execute store result entity @s crit int 1 run data get storage minecraft:gis_temp skill.hunter_5.crit
data modify entity @s Motion[1] set value -1.0