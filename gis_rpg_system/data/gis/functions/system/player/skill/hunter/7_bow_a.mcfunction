#リザレクトバード
#火の鳥のオーラを纏う矢。矢はゆっくりと飛ぶ。

scoreboard players set @s gis_cooltime 150

tellraw @s "リザレクトバード！"
execute at @s run playsound item.firecharge.use master @a ~ ~ ~ 1 1

#矢をいじる
execute as @e[type=arrow,limit=1,sort=nearest] run function gis:system/player/skill/hunter/7_bow_a_sub