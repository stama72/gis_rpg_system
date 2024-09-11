#ダンシングソード
#攻撃の対象者
#前方3m以内

#前方
execute store result score #gis_temp gis_temp_1 run function gis:system/util/collision_detection/is_right {attacker:"0000005a-0000-0000-0000-000200000002",mode:"1",shift:0,rotation:-90}
execute if score #gis_temp gis_temp_1 matches 0 run return 0

#左右22.5度、シフト0.5mずつ
scoreboard players set #gis_temp gis_temp_1 0
execute store result score #gis_temp gis_temp_1 run function gis:system/util/collision_detection/is_left {attacker:"0000005a-0000-0000-0000-000200000002",mode:"1",shift:0.5,rotation:22.5}
execute if score #gis_temp gis_temp_1 matches 0 run return 0

execute store result score #gis_temp gis_temp_1 run function gis:system/util/collision_detection/is_right {attacker:"0000005a-0000-0000-0000-000200000002",mode:"2",shift:0.5,rotation:-22.5}
execute if score #gis_temp gis_temp_1 matches 0 run return 0

#上下22.5度、シフト1.5mずつ
scoreboard players set #gis_temp gis_temp_1 0
execute store result score #gis_temp gis_temp_1 run function gis:system/util/collision_detection/is_lower {attacker:"0000005a-0000-0000-0000-000200000002",mode:"1",shift:1.5,rotation:-22.5}
execute if score #gis_temp gis_temp_1 matches 0 run return 0

execute store result score #gis_temp gis_temp_1 run function gis:system/util/collision_detection/is_upper {attacker:"0000005a-0000-0000-0000-000200000002",mode:"2",shift:1.5,rotation:22.5}
execute if score #gis_temp gis_temp_1 matches 0 run return 0

function gis:system/player/skill/damage_with_physical_e {player:"@p[tag=sword_skill_6_player]",damage:"30"}

#斬撃
execute at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7

execute at @s run particle sweep_attack ~ ~1.2 ~ 0.2 0.1 0.2 0.1 1 force @a 