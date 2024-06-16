#フライヤーウォール
#飛び道具を弾くオーラを纏う矢。矢はゆっくりと飛ぶ。

#矢の位置にパーティクルを出す
execute at @s run particle small_gust ~ ~ ~ 0.5 0.5 0.5 0.1 5 normal @a

#プレイヤー以外がオーナーの飛び道具を弾く

execute positioned ~ ~0.5 ~ unless entity @e[type=#projectile,distance=..2.5] run return 0

execute store result score #skill_hunter3_x gis_temp_1 run data get entity @s Pos[0] 1000
execute store result score #skill_hunter3_y gis_temp_1 run data get entity @s Pos[1] 1000
execute store result score #skill_hunter3_z gis_temp_1 run data get entity @s Pos[2] 1000
execute at @s run summon marker ~ ~ ~ {UUID:[I;90,0,1,2]}
execute at @s positioned ~ ~0.5 ~ as @e[type=#projectile,distance=..2.5] run function gis:system/player/skill/hunter/3_bow_a_arrow_move
kill 0000005a-0000-0000-0000-000100000002






