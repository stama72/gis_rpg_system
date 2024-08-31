#フライヤーウォール
#吹っ飛ばし
#実行者は吹っ飛ばされるmob

#プレイヤーのものは吹っ飛ばさない
execute on origin as @s[type=player] run return 0
execute as @s[tag=shot_arrow_skill_3] run return 0
#一度弾いたものは再度弾かない
execute as @s[tag=arrow_skill_3_hit_projectile] run return 0

#座標の差を計算して、ベクトル成分を取る
execute store result score #skill_hunter3_e_x gis_temp_1 run data get entity @s Pos[0] 1000
execute store result score #skill_hunter3_e_y gis_temp_1 run data get entity @s Pos[1] 1000
execute store result score #skill_hunter3_e_z gis_temp_1 run data get entity @s Pos[2] 1000
scoreboard players operation #skill_hunter3_e_x gis_temp_1 -= #skill_hunter3_x gis_temp_1
scoreboard players operation #skill_hunter3_e_y gis_temp_1 -= #skill_hunter3_y gis_temp_1
scoreboard players operation #skill_hunter3_e_z gis_temp_1 -= #skill_hunter3_z gis_temp_1
#単位ベクトルにする
function gis:system/util/geometry/get_distance
scoreboard players operation #skill_hunter3_e_x gis_temp_1 *= #1000 gis_const
scoreboard players operation #skill_hunter3_e_y gis_temp_1 *= #1000 gis_const
scoreboard players operation #skill_hunter3_e_z gis_temp_1 *= #1000 gis_const
scoreboard players operation #skill_hunter3_e_x gis_temp_1 /= #get_distance gis_temp_1
scoreboard players operation #skill_hunter3_e_y gis_temp_1 /= #get_distance gis_temp_1
scoreboard players operation #skill_hunter3_e_z gis_temp_1 /= #get_distance gis_temp_1

scoreboard players operation #skill_hunter3_e_y gis_temp_1 += #500 gis_const

#向き変更
execute at @s rotated ~180 ~ run tp @s ~ ~ ~ ~ ~

#motionに代入
execute store result entity @s Motion.[0] double 0.001 run scoreboard players get #skill_hunter3_e_x gis_temp_1
#execute store result entity @s Motion.[1] double 0.001 run scoreboard players get #skill_hunter3_e_y gis_temp_1
execute store result entity @s Motion.[2] double 0.001 run scoreboard players get #skill_hunter3_e_z gis_temp_1


tag @s add arrow_skill_3_hit_projectile

