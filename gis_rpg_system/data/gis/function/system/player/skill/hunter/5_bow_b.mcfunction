#アライズ 
scoreboard players set @s gis_cooltime 150

scoreboard players set @s gis_skill_using 5
scoreboard players set @s gis_skill_using_count 1
tellraw @s "アライズ ！"
execute at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 0.8

#矢に追跡タグを付ける
execute as @n[type=arrow,tag=latest_shot_arrow] run function gis:system/player/skill/hunter/5_bow_b_sub


