#エレクトリックレイ
scoreboard players set @s gis_cooltime 200

scoreboard players set @s gis_skill_using 0
scoreboard players set @s gis_skill_using_count 0

tag @s add book_skill_8_player

tellraw @s "エレクトリックレイ！"
execute at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 1
#敵側でダメージ処理
execute at @s at @n[type=#minecraft:enemy,distance=..100] as @e[type=#minecraft:enemy,distance=..2] run function gis:system/player/skill/magician/8_book_b_enemy

#アイテムディスプレイ
#本編エンドボスのビームを流用する
execute at @s at @n[type=#minecraft:enemy,distance=..100] run summon item_display ~ ~5 ~ {PortalCooldown:21,Tags:["no_mob_convert","gis_kill","gis_kill_pause","skill_book_8_display"],Passengers:[{id:"minecraft:item_display",Rotation:[0F,-90F],Tags:["no_mob_convert","ride_up_display","skill_book_8_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,7.5f],scale:[0f,0f,1f]},item:{id:"minecraft:structure_void",components:{custom_model_data:1002}}},{id:"minecraft:item_display",Rotation:[0F,-90F],Tags:["no_mob_convert","ride_up_display","skill_book_8_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:structure_void",components:{custom_model_data:1002}}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:sea_lantern",components:{custom_model_data:1}}}

tag @s remove book_skill_8_player

item modify entity @s weapon.mainhand gis:to_book
item modify entity @s weapon.mainhand gis:convert_to_food_10000s