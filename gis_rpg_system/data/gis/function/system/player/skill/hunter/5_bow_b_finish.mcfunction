
#プレイヤーが矢の位置にTP
execute at @e[type=arrow,tag=arrow_skill_5_rain_shot,nbt={inGround:true}] run tp @s ~ ~ ~
execute at @s facing entity @e[type=#enemy,distance=..5,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~

#衝撃波が発生
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.8 1.3
execute at @s run particle gust_emitter_small ~ ~-0.5 ~ 0 0 0 1 1 normal @a

execute at @s run function gis:system/player/skill/damage_with_physical {enemy:"@e[distance=..3,type=#enemy]",damage:"50"}

#距離計測を使いながら、敵をmotionで吹っ飛ばす
execute store result score #skill_hunter5_x gis_temp_1 run data get entity @s Pos[0] 1000
execute store result score #skill_hunter5_y gis_temp_1 run data get entity @s Pos[1] 1000
execute store result score #skill_hunter5_z gis_temp_1 run data get entity @s Pos[2] 1000
execute at @s run summon marker ~ ~ ~ {UUID:[I;90,0,1,2]}
execute at @s as @e[distance=..3,type=#enemy] run function gis:system/player/skill/hunter/5_bow_b_finish_move
kill 0000005a-0000-0000-0000-000100000002

scoreboard players set @s gis_skill_using 0
scoreboard players set @s gis_skill_using_count 0

execute as @e[type=arrow,tag=arrow_skill_5_rain_shot,nbt={inGround:true}] run kill @s

