#エレクトリックレイ
scoreboard players set @s gis_cooltime 200

scoreboard players set @s gis_skill_using 0
scoreboard players set @s gis_skill_using_count 0

tag @s add book_skill_8_player

tellraw @s "エレクトリックレイ！"
execute at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 1
#敵側でダメージ処理
execute at @s at @n[type=#minecraft:enemy,distance=..100] as @e[type=#minecraft:enemy,distance=..2] run function gis:system/player/skill/magician/8_book_b_enemy

tag @s remove book_skill_8_player

item modify entity @s weapon.mainhand gis:to_book
item modify entity @s weapon.mainhand gis:convert_to_food_10000s