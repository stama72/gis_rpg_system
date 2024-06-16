#アローレイン
scoreboard players set @s gis_cooltime 100

scoreboard players set @s gis_skill_using 1
scoreboard players set @s gis_skill_using_count 1
tellraw @s "アローレイン！"
execute at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 0.8

#矢に追跡タグを付ける
execute at @s if predicate gis:entity_check/is_sneak positioned ~ ~1.2 ~ as @e[type=arrow,limit=1,sort=nearest] run function gis:system/player/skill/hunter/1_bow_b_sub
execute at @s unless predicate gis:entity_check/is_sneak positioned ~ ~1.5 ~ as @e[type=arrow,limit=1,sort=nearest] run function gis:system/player/skill/hunter/1_bow_b_sub

