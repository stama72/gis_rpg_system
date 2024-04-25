#ハードディフェンス
scoreboard players add @s gis_skill_using_count 1

#tellraw @s {"score":{"name":"@s","objective":"gis_skill_using_count"}}

execute at @s run particle enchant ~ ~2.6 ~ 0 0 0 1 3 normal @a

#溜めが1秒
execute if score @s gis_skill_using_count matches 20 run function gis:system/player/skill/tank/2_shield_a_finish