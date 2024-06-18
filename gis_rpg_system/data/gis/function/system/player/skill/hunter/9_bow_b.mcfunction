#フルブラウン・ディグニティ
#直進・加速し、貫通する矢。最初は少し遅め。
scoreboard players set @s gis_cooltime 200

scoreboard players set @s gis_skill_using 9
scoreboard players set @s gis_skill_using_count 1
say "フルブラウン・ディグニティ！"
execute at @s run playsound entity.arrow.shoot master @a ~ ~ ~ 1 1

#矢に追跡タグを付ける
execute as @n[type=arrow,tag=latest_shot_arrow] run function gis:system/player/skill/hunter/9_bow_b_sub
