#リザレクトバード
#火の鳥のオーラを纏う矢。矢はゆっくりと飛ぶ。


#敵にダメージを与える
execute at @s as @n[type=arrow,tag=shot_arrow_skill_7] on origin run tag @s add arrow_skill_7_origin
damage @s 50 in_fire by @p[tag=arrow_skill_7_origin]
tag @a remove arrow_skill_7_origin
tag @s add arrow_skill_7_hit_enemy


