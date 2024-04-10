#ガードオブアイギス
#溜めが3秒

scoreboard players set @s gis_cooltime -1

scoreboard players set @s gis_skill_using 8
scoreboard players set @s gis_skill_using_count 1
tellraw @s "ready for ガードオブアイギス..."
execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1