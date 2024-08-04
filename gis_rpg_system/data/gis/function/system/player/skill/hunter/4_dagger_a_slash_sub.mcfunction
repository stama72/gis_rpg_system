#ソニックミンス
#当たり判定
#最大距離2m

#左右幅1.5m
scoreboard players set #gis_temp gis_temp_1 0
execute store result score #gis_temp gis_temp_1 run function gis:system/util/collision_detection/is_left {attacker:"@p[tag=dagger_skill_4_player]",mode:"1",shift:0.75,rotation:0}
execute if score #gis_temp gis_temp_1 matches 0 run return 0

execute store result score #gis_temp gis_temp_1 run function gis:system/util/collision_detection/is_right {attacker:"@p[tag=dagger_skill_4_player]",mode:"2",shift:0.75,rotation:0}
execute if score #gis_temp gis_temp_1 matches 0 run return 0

#前方
execute store result score #gis_temp gis_temp_1 run function gis:system/util/collision_detection/is_right {attacker:"@p[tag=dagger_skill_4_player]",mode:"1",shift:0,rotation:-90}
execute if score #gis_temp gis_temp_1 matches 0 run return 0

#ダメージ付与
function gis:system/player/skill/damage_with_physical_e {player:"@p[tag=dagger_skill_4_player]",damage:"5"}

