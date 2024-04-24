#2.5ブロックの誤差を出す
execute store result score #bow_skill_1_x gis_temp_3 run random value -25000..25000
scoreboard players operation #bow_skill_1_x gis_temp_2 += #bow_skill_1_x gis_temp_3
execute store result score #bow_skill_1_y gis_temp_3 run random value -25000..25000
scoreboard players operation #bow_skill_1_y gis_temp_2 += #bow_skill_1_y gis_temp_3
execute store result score #bow_skill_1_z gis_temp_3 run random value -25000..25000
scoreboard players operation #bow_skill_1_z gis_temp_2 += #bow_skill_1_z gis_temp_3


