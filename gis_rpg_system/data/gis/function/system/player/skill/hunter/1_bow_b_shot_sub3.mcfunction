#最大3ブロックの誤差を出す
#1.5マスずつ2回に分ける。打ち消し合ってより中心に集まる
execute store result score #bow_skill_1_x gis_temp_3 run random value -15000..15000
scoreboard players operation #bow_skill_1_x gis_temp_2 += #bow_skill_1_x gis_temp_3
execute store result score #bow_skill_1_y gis_temp_3 run random value -30000..5000
scoreboard players operation #bow_skill_1_y gis_temp_2 += #bow_skill_1_y gis_temp_3
execute store result score #bow_skill_1_z gis_temp_3 run random value -15000..15000
scoreboard players operation #bow_skill_1_z gis_temp_2 += #bow_skill_1_z gis_temp_3

execute store result score #bow_skill_1_x gis_temp_3 run random value -15000..15000
scoreboard players operation #bow_skill_1_x gis_temp_2 += #bow_skill_1_x gis_temp_3
execute store result score #bow_skill_1_z gis_temp_3 run random value -15000..15000
scoreboard players operation #bow_skill_1_z gis_temp_2 += #bow_skill_1_z gis_temp_3

