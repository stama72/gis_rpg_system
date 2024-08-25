advancement revoke @s only gis:player_system_trigger/hit_trident_skill5

#ドロージャベリン
scoreboard players set @s gis_cooltime 100

scoreboard players set @s gis_skill_using 0
scoreboard players set @s gis_skill_using_count 0
tellraw @s "ドロージャベリンがhit！"

#距離計測を使いながら、敵をmotionで引き寄せる
execute store result score #player_x gis_temp_1 run data get entity @s Pos[0] 1000
execute store result score #player_y gis_temp_1 run data get entity @s Pos[1] 1000
execute store result score #player_z gis_temp_1 run data get entity @s Pos[2] 1000
execute at @s run summon marker ~ ~ ~ {UUID:[I;90,0,1,2]}

tag @s add trident_skill_5_player
execute as @e[type=trident,tag=thrown_trident_skill_5] at @s on origin as @s[tag=trident_skill_5_player] as @e[type=#enemy,nbt={HurtTime:10s},sort=nearest,limit=1] run function gis:system/player/skill/tank/5_trident_a_move

execute as @e[type=trident,tag=thrown_trident_skill_5] at @s on origin as @s[tag=trident_skill_5_player] run tag @e[type=trident,tag=thrown_trident_skill_5,sort=nearest,limit=1] remove thrown_trident_skill_5
tag @s remove trident_skill_5_player
kill 0000005a-0000-0000-0000-000100000002
