#ソニックミンス
scoreboard players set @s gis_cooltime -1

scoreboard players set @s gis_skill_using 4
scoreboard players set @s gis_skill_using_count 1
tellraw @s "ready for ソニックミンス..."
execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1

item modify entity @s weapon.mainhand gis:convert_to_mirror_item
item modify entity @s weapon.mainhand gis:convert_to_food_100s
scoreboard players set @s gis_skill_ignore_cancel_count 4