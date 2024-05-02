#フライヤーウォール
#飛び道具を弾くオーラを纏う矢。矢はゆっくりと飛ぶ。
scoreboard players set @s gis_cooltime 100

tellraw @s "フライヤーウォール！"
execute at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 1

#矢に追跡タグを付ける
#矢に透明無敵スライムを乗せる

execute as @e[type=arrow,limit=1,sort=nearest] run function gis:system/player/skill/hunter/3_bow_a_sub