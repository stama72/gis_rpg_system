#敵からのバニラ攻撃
#tag_set

execute unless entity @a[tag=gis_entity_defenser_check] run return 0
execute if entity @s[tag=no_mob_convert] run return 0
tag @s add gis_player_attacker_check

#mob種ごとに分岐


#特殊な攻撃でなければ、汎用処理で済ます。
execute if entity @s[type=#magic_mob] run return run function gis:system/entity/normal_attack/magic
function gis:system/entity/normal_attack/physical