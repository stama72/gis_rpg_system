#スピリットロア
scoreboard players set @s gis_cooltime -1

scoreboard players set @s gis_skill_using 5
scoreboard players set @s gis_skill_using_count 1
tellraw @s "ready for スピリットロア..."
execute at @s run playsound minecraft:entity.vindicator.ambient master @a ~ ~ ~ 1 1