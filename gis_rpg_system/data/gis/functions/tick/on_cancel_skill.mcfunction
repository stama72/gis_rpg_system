
#以下そのまま放置するもののメモ
#コンボ系
#job 2 skill 3
#job 2 skill 7

#以下スキルを終了するもの
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 6 run function gis:system/player/skill/tank/6_shield_a_finish
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 8 run function gis:system/player/skill/tank/8_shield_a_cancel

scoreboard players set @s gis_skill_using_count_sub 0
