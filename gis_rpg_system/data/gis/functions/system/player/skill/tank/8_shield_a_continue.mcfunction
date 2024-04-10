#ガードオブアイギス
#溜めが3秒

scoreboard players add @s gis_skill_using_count 1

execute if score @s gis_skill_using_count matches 20 at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1
execute if score @s gis_skill_using_count matches 40 at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1

execute if score @s gis_skill_using_count matches 60 run function gis:system/player/skill/tank/8_shield_a_finish


