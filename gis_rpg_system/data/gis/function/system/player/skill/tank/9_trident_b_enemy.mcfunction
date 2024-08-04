#ナビゲイトポラリス
#貫通攻撃の対象者

#位置は殴られたmob、向きはプレイヤーの視線方向
#前方5m以内

#前方
execute store result score #gis_temp gis_temp_1 run function gis:system/util/collision_detection/is_right {attacker:"0000005a-0000-0000-0000-000200000002",mode:"1",shift:0,rotation:-90}
execute if score #gis_temp gis_temp_1 matches 0 run return 0

#左右幅1.2m
scoreboard players set #gis_temp gis_temp_1 0
execute store result score #gis_temp gis_temp_1 run function gis:system/util/collision_detection/is_left {attacker:"0000005a-0000-0000-0000-000200000002",mode:"1",shift:0.6,rotation:0}
execute if score #gis_temp gis_temp_1 matches 0 run return 0

execute store result score #gis_temp gis_temp_1 run function gis:system/util/collision_detection/is_right {attacker:"0000005a-0000-0000-0000-000200000002",mode:"2",shift:0.6,rotation:0}
execute if score #gis_temp gis_temp_1 matches 0 run return 0

#上下幅3.6m
scoreboard players set #gis_temp gis_temp_1 0
execute store result score #gis_temp gis_temp_1 run function gis:system/util/collision_detection/is_lower {attacker:"0000005a-0000-0000-0000-000200000002",mode:"1",shift:1.8,rotation:0}
execute if score #gis_temp gis_temp_1 matches 0 run return 0

execute store result score #gis_temp gis_temp_1 run function gis:system/util/collision_detection/is_upper {attacker:"0000005a-0000-0000-0000-000200000002",mode:"2",shift:1.8,rotation:0}
execute if score #gis_temp gis_temp_1 matches 0 run return 0

function gis:system/player/skill/damage_with_physical_e {player:"@p[tag=trident_skill_9_player]",damage:"300"}

