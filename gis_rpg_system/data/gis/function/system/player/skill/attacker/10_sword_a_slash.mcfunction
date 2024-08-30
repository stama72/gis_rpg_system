#フォイア・ヴァッサ

scoreboard players add @s gis_skill_action_count 1

#3tickに一回斬撃
execute unless score @s gis_skill_action_count matches 4 run return 0
scoreboard players set @s gis_skill_action_count 1

#斬撃
execute at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7

execute unless entity @e[type=#enemy,distance=..7] at @s positioned ^ ^ ^2 run particle sweep_attack ~ ~1.2 ~ 1 0.3 1 0.1 1 force @a 

tag @s add sword_skill_10_player
execute at @s as @e[type=#enemy,distance=..7,sort=random,limit=1] run function gis:system/player/skill/attacker/10_sword_a_slash_sub
tag @s remove sword_skill_10_player


scoreboard players remove @s gis_skill_using_count 3

execute if score @s gis_skill_using_count matches 3.. run return 0

#斬撃終わり

scoreboard players set @s gis_cooltime 300
scoreboard players set @s gis_skill_using 0
scoreboard players set @s gis_skill_using_count 0
scoreboard players set @s gis_skill_action_count 0

effect clear @s slowness

item modify entity @s weapon.mainhand gis:to_iron_sword
item modify entity @s weapon.mainhand gis:convert_to_food_10000s
