#フリーズバースト
scoreboard players add @s gis_skill_using_count 1

execute at @s run particle enchant ~ ~2.6 ~ 0 0 0 1 3 normal @a

#溜めが2秒
execute if score @s gis_skill_using_count matches 20 at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1
execute if score @s gis_skill_using_count matches 40 run function gis:system/player/skill/magician/4_book_a_finish