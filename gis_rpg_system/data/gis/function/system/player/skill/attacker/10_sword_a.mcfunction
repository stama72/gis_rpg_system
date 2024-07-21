#フォイア・ヴァッサ
scoreboard players set @s gis_cooltime -1

scoreboard players set @s gis_skill_using 10
scoreboard players set @s gis_skill_using_count 1

tellraw @s "フォイア・ヴァッサ！"

execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1