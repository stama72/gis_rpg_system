#スピリットロア
scoreboard players add @s gis_skill_using_count 1

execute at @s run particle angry_villager ~ ~2.1 ~ 0 0 0 1 3 normal @a


#溜めが0.5秒
execute if score @s gis_skill_using_count matches 10.. run function gis:system/player/skill/attacker/5_fist_b_finish