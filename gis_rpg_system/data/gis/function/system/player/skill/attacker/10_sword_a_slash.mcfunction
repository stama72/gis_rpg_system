#フォイア・ヴァッサ

scoreboard players add @s gis_skill_action_count 1

#3tickに一回斬撃
execute unless score @s gis_skill_action_count matches 3 run return 0
scoreboard players set @s gis_skill_action_count 1

#斬撃
execute at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7

execute at @s at @e[type=#enemy,distance=..7,sort=random,limit=1] run particle sweep_attack ~ ~1.2 ~ 0.2 0.1 0.2 0.1 1 force @a 


scoreboard players remove @s gis_skill_using_count 20

execute if score @s gis_skill_using_count matches 20.. run return 0

#斬撃終わり

scoreboard players set @s gis_cooltime 300
scoreboard players set @s gis_skill_using 0
scoreboard players set @s gis_skill_using_count 0
scoreboard players set @s gis_skill_action_count 0

item modify entity @s weapon.mainhand gis:convert_to_original_item
item modify entity @s weapon.mainhand gis:convert_to_food_10000s
