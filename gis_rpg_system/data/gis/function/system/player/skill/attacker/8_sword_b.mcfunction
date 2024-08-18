#ジャッジメント・エア
scoreboard players set @s gis_cooltime 150

scoreboard players set @s gis_skill_using 9
scoreboard players set @s gis_skill_using_count 1
tellraw @s "ジャッジメント・エア！"

execute at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.5
playsound minecraft:item.mace.smash_ground_heavy master @a ^ ^ ^2 1 1
playsound minecraft:item.mace.smash_ground_heavy master @a ^ ^ ^5 1 1

tag @s add fist_skill_8_player
execute at @s run summon marker ~ ~ ~ {UUID:[I;90,0,2,2]}
execute at @s rotated as @p[tag=fist_skill_8_player] positioned ^ ^ ^-0.01 run tp 0000005a-0000-0000-0000-000200000002 ~ ~ ~ ~ ~
execute at @s as @e[type=#enemy,distance=..10] run function gis:system/player/skill/attacker/8_sword_b_enemy

tag @s remove fist_skill_8_player
