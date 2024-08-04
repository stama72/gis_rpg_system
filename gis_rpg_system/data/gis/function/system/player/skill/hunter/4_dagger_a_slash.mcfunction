#ソニックミンス

scoreboard players add @s gis_skill_action_count 1

#2tickに一回斬撃
execute unless score @s gis_skill_action_count matches 3 run return 0
scoreboard players set @s gis_skill_action_count 1

#斬撃
execute at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7

execute at @s rotated as @s positioned ~ ~1.2 ~ run particle sweep_attack ^ ^ ^1.5 0.2 0.1 0.2 0.1 1 force @a 


#当たり判定
tag @s add dagger_skill_4_player
execute at @s as @e[type=#minecraft:enemy,distance=..2.5] run function gis:system/player/skill/hunter/4_dagger_a_slash_sub
tag @s remove dagger_skill_4_player

scoreboard players remove @s gis_skill_using_count 5

execute if score @s gis_skill_using_count matches 5.. run return 0

#斬撃終わり

scoreboard players set @s gis_cooltime 100
scoreboard players set @s gis_skill_using 0
scoreboard players set @s gis_skill_using_count 0
scoreboard players set @s gis_skill_action_count 0

item modify entity @s weapon.mainhand gis:convert_to_original_item
item modify entity @s weapon.mainhand gis:convert_to_food_10000s
