#アローレイン
scoreboard players set @s gis_cooltime 100

scoreboard players set @s gis_skill_using 1
scoreboard players set @s gis_skill_using_count 1
say "アローレイン！"
execute at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 0.8

#矢に追跡タグを付ける
execute as @n[type=arrow,tag=latest_shot_arrow] run function gis:system/player/skill/hunter/1_bow_b_sub

