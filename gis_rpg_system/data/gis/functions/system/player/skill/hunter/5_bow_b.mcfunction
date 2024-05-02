#アライズ 
scoreboard players set @s gis_cooltime 150

scoreboard players set @s gis_skill_using 5
scoreboard players set @s gis_skill_using_count 1
tellraw @s "アライズ ！"
execute at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 0.8

#矢に追跡タグを付ける
execute at @s if predicate gis:entity_check/is_sneak positioned ~ ~1.2 ~ as @e[type=arrow,limit=1,sort=nearest] run function gis:system/player/skill/hunter/5_bow_b_sub
execute at @s unless predicate gis:entity_check/is_sneak positioned ~ ~1.5 ~ as @e[type=arrow,limit=1,sort=nearest] run function gis:system/player/skill/hunter/5_bow_b_sub


