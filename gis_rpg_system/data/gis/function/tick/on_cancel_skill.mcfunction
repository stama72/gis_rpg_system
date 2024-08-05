


execute if score @s gis_skill_ignore_cancel_count matches 1.. run return run scoreboard players remove @s gis_skill_ignore_cancel_count 1


#以下敵側の処理が終わり次第、すぐにskill_usingをリセットして終了するもの
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 1 run scoreboard players set @s gis_skill_using 0
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 9 run scoreboard players set @s gis_skill_using 0

execute if score @s gis_job matches 2 if score @s gis_skill_using matches 8 run scoreboard players set @s gis_skill_using 0

execute if score @s gis_job matches 3 if score @s gis_skill_using matches 2 run scoreboard players set @s gis_skill_using 0
execute if score @s gis_job matches 3 if score @s gis_skill_using matches 8 run scoreboard players set @s gis_skill_using 0

#以下スキルを溜めて発動するもの。キャンセル処理か、発動処理を行う。
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 2 run function gis:system/player/skill/tank/2_shield_a_cancel
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 6 run function gis:system/player/skill/tank/6_shield_a_finish
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 7 run function gis:system/player/skill/tank/7_trident_a_finish
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 8 run function gis:system/player/skill/tank/8_shield_a_cancel

execute if score @s gis_job matches 2 if score @s gis_skill_using matches 5 run function gis:system/player/skill/attacker/5_fist_b_cancel
execute if score @s gis_job matches 2 if score @s gis_skill_using matches 10 unless score @s gis_skill_action_count matches 1.. run function gis:system/player/skill/attacker/10_sword_a_cancel

execute if score @s gis_job matches 3 if score @s gis_skill_using matches 4 unless score @s gis_skill_action_count matches 1.. run function gis:system/player/skill/hunter/4_dagger_a_finish

#コンボ系
#job 2 skill 3
#job 2 skill 7
execute if score @s gis_job matches 2 if score @s gis_skill_using matches 3 run scoreboard players add @s gis_skill_using_count 1
execute if score @s gis_job matches 2 if score @s gis_skill_using matches 3 if score @s gis_skill_using_count matches 60 run function gis:system/player/skill/attacker/3_fist_a_finish
execute if score @s gis_job matches 2 if score @s gis_skill_using matches 7 run scoreboard players add @s gis_skill_using_count 1
execute if score @s gis_job matches 2 if score @s gis_skill_using matches 7 if score @s gis_skill_using_count matches 100 run function gis:system/player/skill/attacker/7_fist_a_finish


#以下発射物系。一定時間経ったらスキルを呼び出し/終了するもの
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 3 run scoreboard players add @s gis_skill_using_count 1
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 3 if score @s gis_skill_using_count matches 200.. run function gis:system/player/skill/tank/3_trident_a_cancel
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 5 run scoreboard players add @s gis_skill_using_count 1
execute if score @s gis_job matches 1 if score @s gis_skill_using matches 5 if score @s gis_skill_using_count matches 200.. run function gis:system/player/skill/tank/5_trident_a_cancel

execute if score @s gis_job matches 3 if score @s gis_skill_using matches 1 run scoreboard players add @s gis_skill_using_count 1
execute if score @s gis_job matches 3 if score @s gis_skill_using matches 1 if score @s gis_skill_using_count matches 8 run function gis:system/player/skill/hunter/1_bow_b_shot
execute if score @s gis_job matches 3 if score @s gis_skill_using matches 1 if score @s gis_skill_using_count matches 80.. run function gis:system/player/skill/hunter/1_bow_b_finish
execute if score @s gis_job matches 3 if score @s gis_skill_using matches 5 run scoreboard players add @s gis_skill_using_count 1
execute if score @s gis_job matches 3 if score @s gis_skill_using matches 5 if score @s gis_skill_using_count matches 10 run function gis:system/player/skill/hunter/5_bow_b_shot
execute if score @s gis_job matches 3 if score @s gis_skill_using matches 5 if score @s gis_skill_using_count matches 11.. if entity @e[type=arrow,tag=arrow_skill_5_rain_shot,nbt={inGround:true}] run function gis:system/player/skill/hunter/5_bow_b_finish

execute if score @s gis_job matches 3 if score @s gis_skill_using matches 9 run scoreboard players add @s gis_skill_using_count 1
execute if score @s gis_job matches 3 if score @s gis_skill_using matches 9 if score @s gis_skill_using_count matches 40 run function gis:system/player/skill/hunter/9_bow_b_finish



scoreboard players set @s gis_skill_using_count_sub 0
