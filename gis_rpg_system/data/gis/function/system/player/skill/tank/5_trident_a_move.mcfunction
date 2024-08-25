#ドロージャベリン
#プレイヤーへ引き寄せ
#実行者は引き寄せられるmob
execute at @s run particle gust ~ ~0.5 ~ 0 0 0 1 1 normal @a

#座標の差を計算して、ベクトル成分を取る
execute store result score #target_x gis_temp_1 run data get entity @s Pos[0] 1000
execute store result score #target_y gis_temp_1 run data get entity @s Pos[1] 1000
execute store result score #target_z gis_temp_1 run data get entity @s Pos[2] 1000
scoreboard players operation #player_x gis_temp_1 -= #target_x gis_temp_1
scoreboard players operation #player_y gis_temp_1 -= #target_y gis_temp_1
scoreboard players operation #player_z gis_temp_1 -= #target_z gis_temp_1
#単位ベクトルにする
function gis:system/util/geometry/get_distance
#coreboard players operation #player_x gis_temp_1 *= #1000 gis_const
#coreboard players operation #player_y gis_temp_1 *= #1000 gis_const
#coreboard players operation #player_z gis_temp_1 *= #1000 gis_const
#coreboard players operation #player_x gis_temp_1 /= #get_distance gis_temp_1
#coreboard players operation #player_y gis_temp_1 /= #get_distance gis_temp_1
#coreboard players operation #player_z gis_temp_1 /= #get_distance gis_temp_1

#execute if score #get_distance gis_temp_1 matches 10000..14999 run scoreboard players operation #player_x gis_temp_1 *= #2 gis_const
#execute if score #get_distance gis_temp_1 matches 10000..14999 run scoreboard players operation #player_y gis_temp_1 *= #2 gis_const
#execute if score #get_distance gis_temp_1 matches 10000..14999 run scoreboard players operation #player_z gis_temp_1 *= #2 gis_const
#
#execute if score #get_distance gis_temp_1 matches 15000..19999 run scoreboard players operation #player_x gis_temp_1 *= #3 gis_const
#execute if score #get_distance gis_temp_1 matches 15000..19999 run scoreboard players operation #player_y gis_temp_1 *= #3 gis_const
#execute if score #get_distance gis_temp_1 matches 15000..19999 run scoreboard players operation #player_z gis_temp_1 *= #3 gis_const
#
#execute if score #get_distance gis_temp_1 matches 20000..29999 run scoreboard players operation #player_x gis_temp_1 *= #4 gis_const
#execute if score #get_distance gis_temp_1 matches 20000.. run scoreboard players operation #player_y gis_temp_1 *= #4 gis_const
execute if score #get_distance gis_temp_1 matches 20000.. run scoreboard players add #player_y gis_temp_1 100
#execute if score #get_distance gis_temp_1 matches 20000..29999 run scoreboard players operation #player_z gis_temp_1 *= #4 gis_const
#
#execute if score #get_distance gis_temp_1 matches 30000..39999 run scoreboard players operation #player_x gis_temp_1 *= #6 gis_const
execute if score #get_distance gis_temp_1 matches 30000.. run scoreboard players add #player_y gis_temp_1 100
#execute if score #get_distance gis_temp_1 matches 30000..39999 run scoreboard players operation #player_z gis_temp_1 *= #6 gis_const

execute if score #get_distance gis_temp_1 matches 40000.. run scoreboard players add #player_y gis_temp_1 100



#上方向に飛ばす
execute if score #player_y gis_temp_1 matches ..400 run scoreboard players set #player_y gis_temp_1 400

#motionに代入
execute store result entity @s Motion.[0] double 0.001 run scoreboard players get #player_x gis_temp_1
execute store result entity @s Motion.[1] double 0.001 run scoreboard players get #player_y gis_temp_1
execute store result entity @s Motion.[2] double 0.001 run scoreboard players get #player_z gis_temp_1

