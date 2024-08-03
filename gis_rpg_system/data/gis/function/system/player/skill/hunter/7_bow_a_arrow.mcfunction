#リザレクトバード
#火の鳥のオーラを纏う矢。矢はゆっくりと飛ぶ。

#着弾
execute as @s[nbt={inGround:1b}] run return run function gis:system/player/skill/hunter/7_bow_a_finish


#矢の位置にパーティクルを出す
execute at @s positioned ~ ~0.2 ~ run particle flame ~ ~ ~ 0 0 0 0.01 1 normal @a

#敵にダメージを与える

execute at @s if entity @e[type=#enemy,distance=..3,tag=!arrow_skill_7_hit_enemy] on origin run function gis:system/player/skill/damage_with_physical {enemy:"@e[type=#enemy,distance=..3,tag=!arrow_skill_7_hit_enemy]",damage:"50"}
execute at @s as @e[type=#enemy,distance=..3,tag=!arrow_skill_7_hit_enemy] run tag @s add arrow_skill_7_hit_enemy
execute at @s as @e[type=#enemy,distance=3.01..4] run tag @s remove arrow_skill_7_hit_enemy






