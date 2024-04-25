#ファランクスシフト

scoreboard players add @s gis_skill_using_count 1


scoreboard players operation @s gis_temp_1 = @s gis_skill_using_count
scoreboard players operation @s gis_temp_1 %= #20 gis_const

#周囲4mに耐性2
execute at @s as @a[distance=..4] run effect give @s resistance 5 1 false
execute at @s at @a[distance=..4] run particle trial_spawner_detection ~ ~1.8 ~ 0.08 0.03 0.08 0 1 normal @a
execute if score @s gis_temp_1 matches 0 at @s run playsound block.enchantment_table.use master @a ~ ~ ~ 1 1

execute at @s run particle dust{color:[0.322,0.580,0.973],scale:1} ~ ~ ~ 2 0.6 2 10 20 normal @a

