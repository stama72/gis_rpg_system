#プレイヤーが実行者

#プレイヤーが矢の位置にTP
#頭の位置にブロックがあったら矢の位置へのTPは取りやめ、矢の方向へ0.1マスTP
execute at @n[type=arrow,tag=arrow_skill_5_rain_shot,nbt={inGround:true}] if block ~ ~ ~ #air if block ~ ~1 ~ #air run tag @s add arrow_skill_5_player_tp
execute if entity @s[tag=arrow_skill_5_player_tp] run execute at @e[type=arrow,tag=arrow_skill_5_rain_shot,nbt={inGround:true}] facing entity @e[type=#enemy,distance=..5,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
execute unless entity @s[tag=arrow_skill_5_player_tp] facing entity @n[type=arrow,tag=arrow_skill_5_rain_shot,nbt={inGround:true}] feet run teleport @s ^ ^ ^0.1 ~ ~
execute at @s run playsound minecraft:entity.player.teleport master @a ~ ~ ~ 0.5 1
tag @s remove arrow_skill_5_player_tp

#衝撃波が発生
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.8 1.3

execute at @s run particle gust_emitter_large ~ ~ ~ 0 0 0 1 1 normal @a
execute at @s run particle dust{color:[0.169,0.502,1.000],scale:2} ~ ~0.2 ~ 1 1 1 0.1 80 normal @a

execute at @s run function gis:system/player/skill/damage_with_physical {enemy:"@e[distance=..3,type=#enemy]",damage:"50"}

#距離計測を使いながら、敵をmotionで吹っ飛ばす
execute store result score #player_x gis_temp_1 run data get entity @s Pos[0] 1000
execute store result score #player_y gis_temp_1 run data get entity @s Pos[1] 1000
execute store result score #player_z gis_temp_1 run data get entity @s Pos[2] 1000
execute at @s run summon marker ~ ~ ~ {UUID:[I;90,0,1,2]}
execute at @s as @e[distance=..3,type=#enemy] run function gis:system/player/skill/hunter/5_bow_b_finish_move
kill 0000005a-0000-0000-0000-000100000002

scoreboard players set @s gis_skill_using 0
scoreboard players set @s gis_skill_using_count 0

execute as @e[type=arrow,tag=arrow_skill_5_rain_shot,nbt={inGround:true}] run kill @s

