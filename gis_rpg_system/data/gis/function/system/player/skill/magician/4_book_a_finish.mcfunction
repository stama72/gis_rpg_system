#フリーズバースト
scoreboard players set @s gis_cooltime 100

tellraw @s "フリーズバースト！"
execute at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 1

tag @s add book_skill_4_player

#ダメージ計算
scoreboard players operation @s gis_temp_1 = @s gis_skill_using_count
scoreboard players operation @s gis_temp_1 /= #2 gis_const
scoreboard players add @s gis_temp_1 20

execute store result storage minecraft:gis_temp skill.book_4.damage int 1 run scoreboard players get @s gis_temp_1
data modify storage minecraft:gis_temp skill.book_4.player set value "@p[tag=book_skill_4_player]"


#敵側でダメージ処理
execute at @s as @e[type=#minecraft:enemy,distance=..5] run function gis:system/player/skill/magician/4_book_a_enemy

#reset
scoreboard players set @s gis_skill_using 0
scoreboard players set @s gis_skill_using_count 0
tag @s remove book_skill_4_player
item modify entity @s weapon.mainhand gis:to_book
item modify entity @s weapon.mainhand gis:convert_to_food_10000s