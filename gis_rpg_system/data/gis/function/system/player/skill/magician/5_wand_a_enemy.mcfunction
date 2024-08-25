#ウィンドエッジ
#攻撃の対象者
#15m以内

#前方
execute store result score #gis_temp gis_temp_1 run function gis:system/util/collision_detection/is_right {attacker:"0000005a-0000-0000-0000-000100000002",mode:"1",shift:0,rotation:-90}
execute if score #gis_temp gis_temp_1 matches 0 run return 0

#左右30度、シフト1m
scoreboard players set #gis_temp gis_temp_1 0
execute store result score #gis_temp gis_temp_1 run function gis:system/util/collision_detection/is_left {attacker:"0000005a-0000-0000-0000-000100000002",mode:"1",shift:1.5,rotation:30}
execute if score #gis_temp gis_temp_1 matches 0 run return 0

execute store result score #gis_temp gis_temp_1 run function gis:system/util/collision_detection/is_right {attacker:"0000005a-0000-0000-0000-000100000002",mode:"2",shift:1.5,rotation:-30}
execute if score #gis_temp gis_temp_1 matches 0 run return 0

#上下30度、シフト2m
scoreboard players set #gis_temp gis_temp_1 0
execute store result score #gis_temp gis_temp_1 run function gis:system/util/collision_detection/is_lower {attacker:"0000005a-0000-0000-0000-000100000002",mode:"1",shift:2,rotation:-30}
execute if score #gis_temp gis_temp_1 matches 0 run return 0

execute store result score #gis_temp gis_temp_1 run function gis:system/util/collision_detection/is_upper {attacker:"0000005a-0000-0000-0000-000100000002",mode:"2",shift:2,rotation:30}
execute if score #gis_temp gis_temp_1 matches 0 run return 0

tag @s add wand_skill_5_enemy
