#ナビゲイトポラリス
scoreboard players set @s gis_cooltime 250
scoreboard players set @s gis_skill_using 9
scoreboard players set @s gis_skill_using_count 1

tellraw @s "ナビゲイトポラリス！"
execute at @s run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 1


tag @s add trident_skill_9_player
