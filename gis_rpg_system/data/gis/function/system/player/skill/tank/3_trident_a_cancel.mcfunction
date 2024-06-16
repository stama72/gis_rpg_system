#スロウダウン
#地面にも敵にも当たらなかった時。

scoreboard players set @s gis_cooltime 100

scoreboard players set @s gis_skill_using 0
scoreboard players set @s gis_skill_using_count 0

tag @s add trident_skill_3_player
execute as @e[type=trident,tag=thrown_trident_skill_3] at @s on origin as @s[tag=trident_skill_3_player] run tag @e[type=trident,tag=thrown_trident_skill_3,sort=nearest,limit=1] remove thrown_trident_skill_3
tag @s remove trident_skill_3_player