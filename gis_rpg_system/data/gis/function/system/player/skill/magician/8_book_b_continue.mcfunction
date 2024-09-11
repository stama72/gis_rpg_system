#エレクトリックレイ
scoreboard players add @s gis_skill_using_count 1

#tellraw @s {"score":{"name":"@s","objective":"gis_skill_using_count"}}

execute at @s run particle enchant ~ ~2.6 ~ 0 0 0 1 3 normal @a

#溜めが3秒
execute if score @s gis_skill_using_count matches 20 at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1
execute if score @s gis_skill_using_count matches 40 at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1
execute if score @s gis_skill_using_count matches 60 run function gis:system/player/skill/magician/8_book_b_finish