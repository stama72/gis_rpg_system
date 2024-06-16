#フルブラウン・ディグニティ
#直進・加速し、貫通する矢。最初は少し遅め。
scoreboard players set @s gis_cooltime 200

scoreboard players set @s gis_skill_using 9
scoreboard players set @s gis_skill_using_count 1
tellraw @s "フルブラウン・ディグニティ！"
execute at @s run playsound entity.arrow.shoot master @a ~ ~ ~ 1 1

#矢に追跡タグを付ける
execute at @s if predicate gis:entity_check/is_sneak positioned ~ ~1.2 ~ as @e[type=arrow,limit=1,sort=nearest] run function gis:system/player/skill/hunter/9_bow_b_sub
execute at @s unless predicate gis:entity_check/is_sneak positioned ~ ~1.5 ~ as @e[type=arrow,limit=1,sort=nearest] run function gis:system/player/skill/hunter/9_bow_b_sub
