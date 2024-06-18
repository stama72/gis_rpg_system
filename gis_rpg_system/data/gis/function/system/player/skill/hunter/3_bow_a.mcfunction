#フライヤーウォール
#飛び道具を弾くオーラを纏う矢。矢はゆっくりと飛ぶ。
scoreboard players set @s gis_cooltime 100

say "フライヤーウォール！"
execute at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 1

#矢に追跡タグを付ける
execute as @n[type=arrow,tag=latest_shot_arrow] run function gis:system/player/skill/hunter/3_bow_a_sub
