#ダンシングソード
scoreboard players add @s gis_skill_using_count 1

#ダメージ30
execute at @s run summon marker ~ ~ ~ {UUID:[I;90,0,2,2]}
execute at @s as @e[type=#minecraft:enemy,distance=..3] run function gis:system/player/skill/attacker/6_sword_b_enemy

tag @s add sword_skill_6_player
execute if score @s gis_skill_using_count matches 40 run function gis:system/player/skill/attacker/6_sword_b_finish
tag @s remove sword_skill_6_player
kill 0000005a-0000-0000-0000-000200000002