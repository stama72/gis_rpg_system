#ハードディフェンス
scoreboard players set @s gis_cooltime 600

scoreboard players set @s gis_skill_using 0
scoreboard players set @s gis_skill_using_count 0

#20秒、耐性3、防御上昇1を付与

tellraw @s "ハードディフェンス！"
effect give @s resistance 20 2 false
execute at @s run particle trial_spawner_detection ~ ~1.8 ~ 0.08 0.03 0.08 0 10 normal @a
execute at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 1
