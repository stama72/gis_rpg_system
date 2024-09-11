#エレクトリックレイ
#溜めが3秒

scoreboard players set @s gis_cooltime -1

scoreboard players set @s gis_skill_using 8
scoreboard players set @s gis_skill_using_count 1
tellraw @s "ready for エレクトリックレイ..."
execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1

item modify entity @s weapon.mainhand gis:to_paper
item modify entity @s weapon.mainhand gis:convert_to_food_100s