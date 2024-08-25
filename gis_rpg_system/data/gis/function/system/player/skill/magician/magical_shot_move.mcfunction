#前へ飛ばす
#実行者はウィンドチャージ/ファイアチャージ

#座標の差を計算して、ベクトル成分を取る
execute store result score #target_x gis_temp_1 run data get entity @s Pos[0] 1000
execute store result score #target_y gis_temp_1 run data get entity @s Pos[1] 1000
execute store result score #target_z gis_temp_1 run data get entity @s Pos[2] 1000
scoreboard players operation #target_x gis_temp_1 -= #player_x gis_temp_1
scoreboard players operation #target_y gis_temp_1 -= #player_y gis_temp_1
scoreboard players operation #target_z gis_temp_1 -= #player_z gis_temp_1

#motionに代入
execute store result entity @s Motion.[0] double 0.001 run scoreboard players get #target_x gis_temp_1
execute store result entity @s Motion.[1] double 0.001 run scoreboard players get #target_y gis_temp_1
execute store result entity @s Motion.[2] double 0.001 run scoreboard players get #target_z gis_temp_1
