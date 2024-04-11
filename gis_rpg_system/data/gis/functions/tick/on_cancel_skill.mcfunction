
#以下そのまま放置するもののメモ
#コンボ系
#job 2 skill 3
#job 2 skill 7

#以下スキルを終了するもの
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 2 run function gis:system/player/skill/tank/2_shield_a_cancel
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 6 run function gis:system/player/skill/tank/6_shield_a_finish
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 8 run function gis:system/player/skill/tank/8_shield_a_cancel

#以下発射物系。一定時間経ったらスキルを終了するもの
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 3 run scoreboard players add @s gis_skill_using_count 1
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 3 if score @s gis_skill_using_count matches 200.. run function gis:system/player/skill/tank/3_trident_a_cancel
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 5 run scoreboard players add @s gis_skill_using_count 1
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 5 if score @s gis_skill_using_count matches 200.. run function gis:system/player/skill/tank/5_trident_a_cancel

scoreboard players set @s gis_skill_using_count_sub 0
