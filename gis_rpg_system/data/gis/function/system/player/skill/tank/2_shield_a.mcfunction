#ハードディフェンス
scoreboard players set @s gis_cooltime -1

scoreboard players set @s gis_skill_using 2
scoreboard players set @s gis_skill_using_count 1
tellraw @s "ready for ハードディフェンス..."
execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1