execute unless score @s gis_player_leave_game matches 0 run function gis:tick/on_login

#アクションバー
#function gis:system/actionbar/set_actionbar_parameter

##skill
execute if score @s gis_cooltime matches 1.. run scoreboard players remove @s gis_cooltime 1
#スキルの詠唱をやめた時を判定
execute if score @s gis_skill_using_count matches 1.. if score @s gis_skill_using_count = @s gis_skill_using_count_sub run function gis:tick/on_cancel_skill
execute if score @s gis_skill_using_count matches 1.. run scoreboard players operation @s gis_skill_using_count_sub = @s gis_skill_using_count

#スキルアクション
execute if score @s gis_skill_action_count matches 1.. run function gis:tick/on_skill_action

#アイテム使用検知
execute if score @s gis_throw_trident matches 1.. run function gis:system/system_trigger/trident/throw_trident
execute if score @s gis_shoot_arrow matches 1.. run function gis:system/system_trigger/bow/shoot

#トライデントの構えをやめた時を判定
execute if score @s gis_trident_using_count matches 1.. if score @s gis_trident_using_count = @s gis_trident_using_count_sub run scoreboard players set @s gis_trident_using_count 0
execute if score @s gis_trident_using_count matches 1.. run scoreboard players operation @s gis_trident_using_count_sub = @s gis_trident_using_count

#スニーク
execute if predicate gis:entity_check/is_sneak run function gis:system/system_trigger/on_sneak