#ジャッジメント・エア
scoreboard players set @s gis_cooltime 150

scoreboard players set @s gis_skill_using 9
scoreboard players set @s gis_skill_using_count 1
tellraw @s "ジャッジメント・エア！"

playsound minecraft:item.mace.smash_ground_heavy master @a ~ ~ ~ 1 1

tag @s add fist_skill_9_player
execute at @s as @e[type=#enemy,distance=..10] run function gis:system/player/skill/attacker/8_sword_b_enemy

tag @s remove fist_skill_9_player
