#ファランクスシフト

scoreboard players add @s gis_skill_using_count 1


#周囲4mに耐性2
execute at @s as @a[distance=..4] run effect give @s resistance 5 1 true
execute at @s as @a[distance=..4] run playsound block.enchantment_table.use master @s ~ ~ ~ 1 1

execute at @s run particle dust 0.322 0.58 0.969 1 ~-1 ~ ~-1 ~1 ~ ~1 0 100 normal @a

