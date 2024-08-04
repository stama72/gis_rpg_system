#シールドバッシュ

scoreboard players set @s gis_cooltime 80

#周囲の敵を吹っ飛ばしながらダメージを与える。
tellraw @s "シールドバッシュ！"
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.5
execute at @s at @e[distance=..3,type=#enemy] run particle gust ~ ~0.5 ~ 0 0 0 1 1 normal @a
execute at @s rotated as @s rotated ~ 0 positioned ^ ^ ^0.7 positioned ~ ~0 ~ run particle minecraft:gust_emitter_small
execute at @s at @e[distance=..3,type=#enemy] run playsound minecraft:item.shield.block master @a ~ ~ ~ 1 1
execute at @s run function gis:system/player/skill/damage_with_physical {enemy:"@e[distance=..3,type=#enemy]",damage:"20"}

#距離計測を使いながら、敵をmotionで吹っ飛ばす
execute store result score #skill_tank4_x gis_temp_1 run data get entity @s Pos[0] 1000
execute store result score #skill_tank4_y gis_temp_1 run data get entity @s Pos[1] 1000
execute store result score #skill_tank4_z gis_temp_1 run data get entity @s Pos[2] 1000
execute at @s run summon marker ~ ~ ~ {UUID:[I;90,0,1,2]}
execute at @s as @e[distance=..3,type=#enemy] run function gis:system/player/skill/tank/4_shield_b_move
kill 0000005a-0000-0000-0000-000100000002
