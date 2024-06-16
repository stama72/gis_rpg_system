#リザレクトバード
#火の鳥のオーラを纏う矢。矢はゆっくりと飛ぶ。

scoreboard players set @s gis_cooltime 150

tellraw @s "リザレクトバード！"
execute at @s run playsound item.firecharge.use master @a ~ ~ ~ 1 1

#矢をいじる
execute as @n[type=arrow,tag=latest_shot_arrow] run function gis:system/player/skill/hunter/7_bow_a_sub
