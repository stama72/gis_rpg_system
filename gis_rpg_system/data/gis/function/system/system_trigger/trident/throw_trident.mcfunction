#トライデントを投げたかトライデントで殴った時
scoreboard players set @s gis_throw_trident 0

execute unless score @s gis_trident_using_count matches 1.. run return 0
#トライデントを投げた時

##skill
execute unless score @s gis_job matches 1 run return 0
#new
execute unless score @s gis_cooltime matches 0 run return 0
execute if score @s gis_skill_main_1 matches 3 run function gis:system/player/skill/tank/3_trident_a
execute if score @s gis_skill_main_1 matches 5 run function gis:system/player/skill/tank/5_trident_a
